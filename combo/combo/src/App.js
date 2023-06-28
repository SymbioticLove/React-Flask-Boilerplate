import React, { useEffect, useState } from 'react';

function App() {
  const [data, setData] = useState(null);

  useEffect(() => {
    fetch('http://localhost:5000/api/data')
      .then(response => response.json())
      .then(data => setData(data));
  }, []);

  return (
    <div className="container mx-auto p-4">
      <h1 className="text-2xl mb-4">React + Python + TailwindCSS</h1>
      {data && <p>{data.message}</p>}
    </div>
  );
}

export default App;
