import React from 'react';
import './AuthentGerant.css';
// Importez directement l'image
import gerantImg from '../fig/gerant.png';

const AuthentGerant = () => {
    return (
        <div className="auth-container">
            {/* Panneau gauche avec l'image */}
            <div className="left-panel">
                <img src={gerantImg} alt="WERILI Transport" className="background-image" />
                {/* Pas de texte supplémentaire car l'image contient déjà le titre */}
            </div>
            
            {/* Panneau droit avec le formulaire de connexion */}
            <div className="right-panel">
                <div className="login-form">
                    <h2 className="sign-in-title">Sign in</h2>
                    
                    <div className="input-container">
                        <input 
                            type="text" 
                            placeholder="username" 
                            className="input-field" 
                        />
                    </div>
                    
                    <div className="input-container">
                        <input 
                            type="password" 
                            placeholder="password" 
                            className="input-field" 
                        />
                    </div>
                    
                    <button className="sign-in-button">
                        Sign in
                    </button>
                </div>
            </div>
        </div>
    );
};

export default AuthentGerant;