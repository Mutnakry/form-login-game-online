// import React, { useState } from 'react';
// import axios from 'axios';
// import { useNavigate } from 'react-router-dom';
// import { toast } from 'react-toastify';
// import 'react-toastify/dist/ReactToastify.css';

// const Register = () => {
//   const [user_names, setNames] = useState('');
//   const [user_email, setEmail] = useState('');
//   const [user_pass, setPass] = useState('');
//   const [repassword, setRepassword] = useState(''); // Add state for confirm password
//   const navigate = useNavigate();

//   const handleRegister = async (e) => {
//     e.preventDefault();

//     // Check if passwords match
//     if (user_pass !== repassword) {
//       toast.error('សូមពិនិត្យមើល លេចសម្ងាត់សាថ្មី', {
//         position: "top-center",
//         autoClose: 3000,
//       });
//       return;
//     }

//     try {
//       const response = await axios.post('http://localhost:6700/api/auth/register', {
//         user_names,
//         user_email,
//         user_pass
//       });
//       console.log('Registration successful:', response.data);
//       toast.success('Register successful!', {
//         position: "top-center",
//         autoClose: 3000,
//       });
//       navigate('/');
//     } catch (error) {
//       console.error('Registration error:', error.response?.data || error.message);
//       toast.error('failed. Please check your credentials.', {
//         position: "top-center",
//         autoClose: 3000,
//       });
//     }
//   };

//   return (
//     <div className='h-screen'>
//       <div className='h-screen max-w-sm mx-auto grid items-center'>
//         <div className='bg-slate-50 shadow-xl p-6 shadow-gray-500 rounded-lg'>
//           <div className='text-center'>
//             <h1 className='p-6 text-5xl font-bold'>Register</h1>
//           </div>
//           <form onSubmit={handleRegister}>
//             <div className='mb-5'>
//               <label className='block mb-2 text-sm font-bold text-gray-900'>Your Name</label>
//               <input
//                 type="text"
//                 value={user_names}
//                 onChange={(e) => setNames(e.target.value)}
//                 className='bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5'
//                 placeholder="Name"
//                 required
//               />
//             </div>
//             <div className='mb-5'>
//               <label className='block mb-2 w-full text-sm font-bold text-gray-900'>Your Email</label>
//               <input
//                 type="email"
//                 value={user_email}
//                 onChange={(e) => setEmail(e.target.value)}
//                 className='bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5'
//                 required
//                 placeholder="Email"
//               />
//             </div>
//             <div className='mb-5'>
//               <label className='block mb-2 w-full text-sm font-bold text-gray-900'>Your Password</label>
//               <input
//                 type="password"
//                 value={user_pass}
//                 onChange={(e) => setPass(e.target.value)}
//                 className='bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5'
//                 required
//                 placeholder="Password"
//               />
//             </div>
//             <div className='mb-5'>
//               <label className='block mb-2 w-full text-sm font-bold text-gray-900'>Repassword</label>
//               <input
//                 type="password"
//                 value={repassword}
//                 onChange={(e) => setRepassword(e.target.value)} 
//                 className='bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg block w-full p-2.5'
//                 required
//                 placeholder="Confirm Password"
//               />
//             </div>
//             <div className='flex justify-center py-7'>
//               <button
//                 type="submit"
//                 className='text-white bg-blue-700 hover:bg-blue-800 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5'
//               >
//                 Register
//               </button>
//             </div>
//           </form>
//         </div>
//       </div>
//     </div>
//   );
// };

// export default Register;


import React, { useState } from 'react';
import { FaUser, FaEnvelope, FaLock } from 'react-icons/fa';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import { toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';

const Register = () => {
  const [user_names, setNames] = useState('');
  const [user_email, setEmail] = useState('');
  const [user_pass, setPass] = useState('');
  const [repassword, setRepassword] = useState('');
  const navigate = useNavigate();

  const handleRegister = async (e) => {
    e.preventDefault();

    // Check if passwords match
    if (user_pass !== repassword) {
      toast.error('សូមពិនិត្យមើល លេចសម្ងាត់សាថ្មី', {
        position: "top-center",
        autoClose: 3000,
      });
      return;
    }

    try {
      const response = await axios.post('http://localhost:6700/api/auth/register', {
        user_names,
        user_email,
        user_pass
      });
      console.log('Registration successful:', response.data);
      toast.success('Register successful!', {
        position: "top-center",
        autoClose: 3000,
      });
      navigate('/');
    } catch (error) {
      console.error('Registration error:', error.response?.data || error.message);
      toast.error('failed. Please check your Email.', {
        position: "top-center",
        autoClose: 3000,
      });
    }
  };

  return (
    <div className="flex items-center justify-center bg-gray-100">
      <div className="bg-white shadow-lg rounded-lg px-6 pb-6 w-full max-w-md">

        <form onSubmit={handleRegister} className=' -translate-y-8'>
          {/* Username */}
          <div className="mb-4 relative">
            <FaUser className="absolute left-3 top-3 text-gray-400" />
            <input
              type="text"
              value={user_names}
              onChange={(e) => setNames(e.target.value)}
              className="pl-10 p-3 w-full border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
              placeholder="Username"
              required
            />
          </div>

          {/* Email */}
          <div className="mb-4 relative">
            <FaEnvelope className="absolute left-3 top-3 text-gray-400" />
            <input
              type="email"
              value={user_email}
              onChange={(e) => setEmail(e.target.value)}
              className="pl-10 p-3 w-full border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
              placeholder="Email"
              required
            />
          </div>

          {/* Password */}
          <div className="mb-4 relative">
            <FaLock className="absolute left-3 top-3 text-gray-400" />
            <input
              type="password"
              value={user_pass}
              onChange={(e) => setPass(e.target.value)}
              className="pl-10 p-3 w-full border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
              placeholder="Password"
              required
            />
          </div>

          {/* Confirm Password */}
          <div className="mb-4 relative">
            <FaLock className="absolute left-3 top-3 text-gray-400" />
            <input
              type="password"
              value={repassword}
              onChange={(e) => setRepassword(e.target.value)}
              className="pl-10 p-3 w-full border border-gray-300 rounded-lg focus:outline-none focus:border-blue-500"
              placeholder="Confirm Password"
              required
            />
          </div>

          {/* Register Button */}
          <div className="text-center">
            <button
              type="submit"
              className="w-full bg-red-600 text-white p-3 rounded-lg hover:bg-red-700 transition-all"
            >
              Register
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default Register;
