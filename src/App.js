import React, { useEffect, useState } from 'react';
import './index.css';

function App() {
  const [data, setData] = useState(null);

  useEffect(() => {
    fetch('http://localhost:5000/api/data')
      .then(response => response.json())
      .then(data => setData(data));
  }, []);

  return (
    <div className="">
      <h1 className="text-red-500">React + Python + TailwindCSS</h1>
      {data && <p>{data.message}</p>}
    </div>
  );
}

export default App;
