import React from 'react';
import './AuthentAdmin.css';

const LoginPage = () => {
  return (
    <div className="login-container">
      <div className="blue-shape"></div>
      <div className="login-form">
        <h1 className="title">Sign in</h1>
        
        <input 
          type="text" 
          className="input-field" 
          placeholder="username" 
        />
        
        <input 
          type="password" 
          className="input-field" 
          placeholder="password" 
        />
        
        <button className="sign-in-button">
          Sign in
        </button>
      </div>

    </div>
  );
};

export default LoginPage;