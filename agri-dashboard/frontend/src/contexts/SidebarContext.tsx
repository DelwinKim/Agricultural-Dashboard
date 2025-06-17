import React, { createContext, useContext, useState, ReactNode } from 'react';

interface SidebarContextType {
    showTables: boolean;
    showCharts: boolean;
    activeTable: string;
    activeCharts: string[];
    setShowTables: (show: boolean) => void;
    setShowCharts: (show: boolean) => void;
    setActiveTable: (table: string) => void;
    setActiveCharts: (charts: string[]) => void;
}

const SidebarContext = createContext<SidebarContextType | undefined>(undefined);

export const SidebarProvider: React.FC<{ children: ReactNode }> = ({ children }) => {
    const [showTables, setShowTables] = useState(true);
    const [showCharts, setShowCharts] = useState(false);
    const [activeTable, setActiveTable] = useState('general');
    const [activeCharts, setActiveCharts] = useState<string[]>(['temperature']);

    return (
        <SidebarContext.Provider value={{
            showTables,
            showCharts,
            activeTable,
            activeCharts,
            setShowTables,
            setShowCharts,
            setActiveTable,
            setActiveCharts
        }}>
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