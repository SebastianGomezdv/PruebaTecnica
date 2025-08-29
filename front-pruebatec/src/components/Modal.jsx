import React from 'react';
import '../components/Modal.css';


// Componente Modal para darle forma y orden al formulario 
export default function Modal({ onClose, children }) {
    return (
        <div className="modal-backdrop" onClick={onClose}>
            <div className="modal-content" onClick={(e) => e.stopPropagation()}>
                <button className="close-button" onClick={onClose}>&times;</button>
                {children}
            </div>
        </div>
    );
}