import React, { useState } from 'react';
import { NavDropdown } from 'react-bootstrap';

interface HoverNavDropdownProps {
    title: React.ReactNode;
    children: React.ReactNode;
    id: string;
    className?: string;
    show?: boolean;
}

const HoverNavDropdown: React.FC<HoverNavDropdownProps> = ({ 
    title, 
    children, 
    id, 
    className,
    show 
}) => {
    const [isHovered, setIsHovered] = useState(false);

    return (
        <NavDropdown
            title={title}
            id={id}
            className={className}
            show={show || isHovered}
            onMouseEnter={() => setIsHovered(true)}
            onMouseLeave={() => setIsHovered(false)}
        >
            {children}
        </NavDropdown>
    );
};

export default HoverNavDropdown; 