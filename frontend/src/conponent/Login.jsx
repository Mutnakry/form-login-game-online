import React, { useState } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import { toast } from 'react-toastify';
import { FaUser, FaEnvelope, FaLock } from 'react-icons/fa';
import 'react-toastify/dist/ReactToastify.css';

const Login = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const navigate = useNavigate();

  const handleLogin = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post('http://localhost:6700/api/auth/login', { user_email: email, user_pass: password });
      localStorage.setItem('token', response.data.token);
      localStorage.setItem('user_name', response.data.user_name); // Storing user's name
      localStorage.setItem('user_email', response.data.user_email); // Storing user's email

      toast.success('Login successful!', {
        position: "top-center",
        autoClose: 3000,
      });
      window.location.href = "/about";
    } catch (error) {
      toast.error('Login failed. Please check your credentials.', {
        position: "top-center",
        autoClose: 3000,
      });
    }
  };

  return (
    <div className=" flex items-center justify-center bg-gray-100">
      <div className="bg-white shadow-lg rounded-lg px-6 pb-6 w-full max-w-md">
        <form onSubmit={handleLogin}>
          {/* Email */}
          <div className="mb-4 relative">
            <FaEnvelope className="absolute left-3 top-3 text-gray-400" />
            <input
              type="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              className="pl-10 p-3 w-full border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
              placeholder="Email"
              required
            />
          </div>
          <div className="mb-4 relative">
            <FaLock className="absolute left-3 top-3 text-gray-400" />
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="pl-10 p-3 w-full border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
              placeholder="Password"
              required
            />
          </div>
          <a href="#" className='text-blue-400 py-2'>Forgot password?</a>
          <div className="text-center top-3">
            <button
              type="submit"
              className="w-full bg-red-600 text-white p-3 rounded-lg hover:bg-red-700 transition-all"
            >
              Login
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default Login;
