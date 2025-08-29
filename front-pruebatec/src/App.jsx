import React, { useState } from 'react';
import Navbar from './components/Navbar';
import HomePage from './pages/HomePage';
import Modal from './components/Modal';
import RegistroForm from './components/RegistroForm';

function App() {
  const [isModalOpen, setIsModalOpen] = useState(false);

  const openModal = () => setIsModalOpen(true);
  const closeModal = () => setIsModalOpen(false);

  return (
    <div>
      
      <Navbar onRegisterClick={openModal} isHidden={isModalOpen} />
      
      
      <HomePage />

      
      {isModalOpen && (
        <Modal onClose={closeModal}>
          
          <RegistroForm />
        </Modal>
      )}
    </div>
  );
}

export default App;