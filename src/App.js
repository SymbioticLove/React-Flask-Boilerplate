import React, { useEffect, useState } from 'react';
import './App.css';

function App() {
  const [data, setData] = useState(null);

  useEffect(() => {
    fetch('http://localhost:5000/api/data')
      .then(response => response.json())
      .then(data => setData(data));
  }, []);

  return (
    <div className="wrapper">
      <div className="container">
        <div>
          <h1 className="title">React in the Front</h1>
          {data && <p className="flask-message1">{data.message}</p>}
        </div>
      </div>
      {data && <p className="flask-message2"><a href={data.link.href} alt="GitHub Profile" target="_blank" rel= "noopener noreferrer">{data.link.text}</a></p>}
      <div className="container2">
        <div className="box">
          {data && <p className="text">{data.box1}</p>}
        </div>
        <div className="box">
          {data && <p className="text">{data.box2}</p>}
        </div>
        <div className="box">
          <p className="text">This assumes that the repo was installed at your C: drive. If it was installed elsewhere, you will need to update the routes in Initialize.bat. If you require any assistance with this template, reach out to <a href='mailto:support@symbiotic.love?subject=react/flask-template'>support@symbiotic.love!</a></p>
        </div>
      </div>
      <h2 className="happy">Happy coding!</h2>
      <p className="author">Created by Matthew Ford, CEO and Chief Engineer</p>
      <a href="https://symbiotic.love" alt="Website link" target="_blank" rel= "noopener noreferrer" className="website">Symbiotic Love</a>
    </div>
  );
}

export default App;
