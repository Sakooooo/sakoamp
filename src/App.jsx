import { useState } from "react";
import reactLogo from "./assets/react.svg";
import { invoke } from "@tauri-apps/api/tauri";
import "./App.css";

function App() {
  // const [greetMsg, setGreetMsg] = useState("");
  // const [name, setName] = useState("");

  async function greet() {
    // Learn more about Tauri commands at https://tauri.app/v1/guides/features/command
    setGreetMsg(await invoke("greet", { name }));
  }

  async function checkFile(file) {}

  return (
    <div className="App">
      <div className="ServerPicker">
        <form>
          <label for="server_type">Server Type</label>
          <select name="server_type" id="server_type">
            <option value="jellyfin">Jellyfin</option>
            <option value="navidrome">Navidrome</option>
          </select>
          <br></br>
          <label for="server_address">Server Address</label>
          <input type="text" id="server_address"></input>
          <br></br>
          <input type="submit" value="Confirm"></input>
        </form>
      </div>
    </div>
  );
}

export default App;
