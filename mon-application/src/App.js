import { BrowserRouter as Router, Routes, Route, Link } from 'react-router-dom';
import './index.css';
import WeriliPage from './pages/Home';
import LoginPage from './pages/AuthentAdmin'
import AuthentGerant from './pages/AuthentGerant';
function App() {
  return (
    <Router>
      <div>
        {/* Menu de navigation */}
        <nav>
          <ul>
            <li><Link to="/home">Accueil</Link></li>
            <li><Link to="/authentAdmin">Authentification Admin</Link></li>
            <li><Link to="/authentGerant">Authentification Gérant</Link></li>
          </ul>
        </nav>
        {/* Définir les routes */}
        <Routes>
        <Route path="/" element={<WeriliPage />} />
        <Route path="/authentAdmin" element={<LoginPage/>}/>
        <Route path="/authentGerant" element={ <AuthentGerant/>}/>
        </Routes>
      </div>
    </Router>
  );
}

export default App;