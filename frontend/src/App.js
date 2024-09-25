
import logo from './logo.svg';
import './App.css';
import { BrowserRouter, Route, Routes, Navigate } from 'react-router-dom';
import 'flowbite';
import React, { useState, useEffect } from 'react';
import Home from './page/Home.jsx';
import Login from './conponent/Login';
import Register from './conponent/Register';
import { ToastContainer } from 'react-toastify';
import About from './page/About'
function App() {
  const [isAuthenticated, setIsAuthenticated] = useState(false);

  useEffect(() => {
    // Check for token in localStorage
    const token = localStorage.getItem('token');
    setIsAuthenticated(!!token);
  }, []);

  return (
    <div className="App">
      <BrowserRouter>
        <Routes>
          <Route path="/login" element={<Login setIsAuthenticated={setIsAuthenticated} />} />
          <Route index element={<Home />} />
          {/* //page router */}
          <Route path='/about' element={<About isAuthenticated={isAuthenticated} />} />


        </Routes>
        <ToastContainer />
      </BrowserRouter>
    </div>
  );
}

export default App;
