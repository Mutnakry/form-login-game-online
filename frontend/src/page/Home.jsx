import React, { useState } from 'react';
import Login from '../conponent/Login'
import Regiser from '../conponent/Register'
import Navbar from '../conponent/Navbar';

function Dashboard({isAuthenticated}) {
  const [isLoginForm, setModalLogin] = useState(false);
  const [isRegisterForm, setModalRegister] = useState(false);
  const ModalLogin = () => {
    setModalLogin(true);
  };
  const closeModal = () => {
    setModalLogin(false);
  };
  const openeModalRegister = () => {
    setModalRegister(true);
  };
  const closeModalregister = () => {
    setModalRegister(false);
  };

  // Function to handle clicks outside the modal
  const handleClickOutside = (event) => {
    // Check if the click is outside of the modal
    if (event.target.classList.contains('bg-black')) {
      closeModal();
      closeModalregister();
    }
  };
  return (
    <div>
         <Navbar />
      <section className="bg-center bg-no-repeat bg-blend-multiply bg-cover w-full min-h-screen bg-gray-700"
        style={{
          backgroundImage: "url('https://as2.ftcdn.net/v2/jpg/03/10/49/73/1000_F_310497371_rT1uYo29RF94dcf4qWfkpYbkFRgd30Gl.jpg')"
        }}>
        <div className="px-4 mx-auto max-w-screen-xl text-center py-24 lg:py-56">
          <div className="flex flex-col space-y-4 sm:flex-row sm:justify-center sm:space-y-0">
            <a href="#" onClick={ModalLogin} className="inline-flex justify-center items-center py-3 px-5 text-base font-medium text-center text-white rounded-lg bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300">
              Login
            </a>
            <a href="#" onClick={openeModalRegister} className="inline-flex justify-center hover:text-gray-900 items-center py-3 px-5 sm:ms-4 text-base font-medium text-center text-white rounded-lg border border-white hover:bg-gray-100 focus:ring-4 focus:ring-gray-400">
              Register
            </a>
          </div>
        </div>
      </section>
      {/* modal login */}
      {isLoginForm && (
        <div onClick={handleClickOutside} className="fixed top-0 left-0 right-0 z-50 flex items-center justify-center w-full h-full bg-black bg-opacity-50">
          <div className="relative w-full max-w-md bg-white rounded-lg shadow dark:bg-gray-700">
            {/* Modal Header */}
            <div className="flex justify-center -translate-y-12">
              <img
                src="https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"
                alt="Logo"
                className="border-2 w-24 h-24 rounded-full"
              />
            </div>

            {/* Modal Body */}
            <div>
              <Login />
            </div>
          </div>
        </div>
      )}
      {/* modal regiser */}
      {isRegisterForm && (
        <div onClick={handleClickOutside} className="fixed top-0 left-0 right-0 z-50 flex items-center justify-center w-full h-full bg-black bg-opacity-50">
          <div className="relative w-full max-w-md bg-white rounded-lg shadow dark:bg-gray-700">
            {/* Modal Header */}
            <div className="flex justify-center -translate-y-12">
              <img
                src="https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"
                alt="Logo"
                className="border-2 w-24 h-24 rounded-full"
              />
            </div>
            {/* Modal Body */}
            <div>
              <Regiser />
            </div>
          </div>
        </div>

      )}
    </div>
  );
}
export default Dashboard;
