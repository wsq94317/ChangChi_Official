import Navbar from './components/Navbar';
import Banner from './components/Banner';
import ProductCarousel from './components/ProductCarousel';
import ContactUs from './components/ContactUs';
import Footer from './components/Footer';

function App() {


  return (
    <div className="min-h-screen bg-gray-100">
      <Navbar />
      <div className="pt-20 max-w-screen-xl mx-auto"> 
        <Banner />
        <ProductCarousel />
        <ContactUs />
        <Footer />
      </div>
    </div>
  );
}

export default App
