import React from 'react';
import './Navbar.css';
import logo from '../assets/brands/logo_GCO.jpg';

// Componente de la barra de navegación (unicamente tiene el logo, y botón registro)
export default function Navbar({ onRegisterClick }) {
    return (
        <nav className={`navbar-container`}>
            <div className="navbar-logo">
                <div className="logo-cropper">
                    <a href="/index.html"><img src="/src/assets/brands/logo_GCO.jpg" alt="GCO Logo" /></a>
                </div>
            </div>
            <div className="navbar-actions">
                <button onClick={onRegisterClick} className="register-button">
                    Registro
                </button>
            </div>
        </nav>
    );
}