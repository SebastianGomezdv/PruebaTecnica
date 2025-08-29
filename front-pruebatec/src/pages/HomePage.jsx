import React from 'react';
import './HomePage.css';

//importacion de las imagenes al carrusel

import americanino from '../assets/brands/americanino.webp';
import eagle from '../assets/brands/eagle.jpg';
import chevignon from '../assets/brands/chevignon.png';
import esprit from '../assets/brands/esprit.png';
import nafnaf from '../assets/brands/nafnaf.jpeg';
import rifle from '../assets/brands/rifle.png';

// Redireccion a las paginas originales dandole click a las imagenes del carrusel
const brands = [
    { name: 'Americanino', logo: americanino, url: 'https://www.americanino.com/' },
    { name: 'American Eagle', logo: eagle, url: 'https://www.ae.com/' }, 
    { name: 'Chevignon', logo: chevignon, url: 'https://www.chevignon.com.co/' }, 
    { name: 'Esprit', logo: esprit, url: 'https://www.esprit.com.co/new-arrivals' }, 
    { name: 'Naf Naf', logo: nafnaf, url: 'https://www.nafnaf.com.co/' }, 
    { name: 'Rifle', logo: rifle, url: 'https://www.rifle.com.co/' },
];

// titulo y subitulo, mas el carrusel 
export default function HomePage() {
    return (
        <div className="hero-container">
            <h1 className="hero-title">
                Un Universo de Estilo. <span className="highlight-text">Un Solo Registro.</span>
            </h1>
            <p className="hero-subtitle">
                Regístrate una vez y accede a los programas de fidelidad de todas nuestras marcas.
            </p>

            <div className="brand-ticker-container">
                <div className="brand-ticker">
                    {[...brands, ...brands].map((brand, index) => (
                        <div className="brand-logo" key={index}>
                            <a href={brand.url} target="_blank" rel="noopener noreferrer"> <img src={brand.logo} alt={brand.name} /></a>
                        </div>
                    ))}
                </div>
            </div>
        </div>
    );
}