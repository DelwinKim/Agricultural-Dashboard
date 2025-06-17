import React, { createContext, useContext, useState, ReactNode, useEffect } from 'react';

interface StationSidebarState {
    showTables: boolean;
    showCharts: boolean;
    activeTable: string;
    activeCharts: string[];
}

interface SidebarContextType {
    getSidebarState: (stationId: string) => StationSidebarState;
    setSidebarState: (stationId: string, state: Partial<StationSidebarState>) => void;
}

const defaultSidebarState: StationSidebarState = {
    showTables: true,
    showCharts: false,
    activeTable: 'general',
    activeCharts: ['temperature'],
};

const SidebarContext = createContext<SidebarContextType | undefined>(undefined);

const STORAGE_KEY = 'stationSidebarState';

function loadSidebarState(): Record<string, StationSidebarState> {
    try {
        const raw = localStorage.getItem(STORAGE_KEY);
        if (raw) return JSON.parse(raw);
    } catch {}
    return {};
}

function saveSidebarState(state: Record<string, StationSidebarState>) {
    try {
        localStorage.setItem(STORAGE_KEY, JSON.stringify(state));
    } catch {}
}

export const SidebarProvider: React.FC<{ children: ReactNode }> = ({ children }) => {
    const [sidebarState, setSidebarStateInternal] = useState<Record<string, StationSidebarState>>(loadSidebarState());

    useEffect(() => {
        saveSidebarState(sidebarState);
    }, [sidebarState]);

    const getSidebarState = (stationId: string): StationSidebarState => {
        return sidebarState[stationId] || defaultSidebarState;
    };

    const setSidebarState = (stationId: string, state: Partial<StationSidebarState>) => {
        setSidebarStateInternal(prev => ({
            ...prev,
            [stationId]: { ...getSidebarState(stationId), ...state },
        }));
    };

    return (
        <SidebarContext.Provider value={{ getSidebarState, setSidebarState }}>
            {children}
        </SidebarContext.Provider>
    );
};

export const useSidebar = () => {
    const context = useContext(SidebarContext);
    if (context === undefined) {
        throw new Error('useSidebar must be used within a SidebarProvider');
    }
    return context;
};