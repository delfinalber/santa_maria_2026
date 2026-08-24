<?php

require __DIR__ . "/vendor/autoload.php";

$mysqli = new mysqli("localhost", "root", "", "pagina_santamaria");

if ($mysqli->connect_error) {
    die("Error de conexión: " . $mysqli->connect_error);
} 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"] ?? "";
    $nombre = $_POST["nombre"] ?? "";
    $telefono = $_POST["telefono"] ?? "";
    $texto_area = $_POST["texto_area"] ?? "";

    $stmt = $mysqli->prepare("INSERT INTO formulario_contacto (correo_formulario, nombre_formulario, telefono_formulario, mensaje_formulario) VALUES (?, ?, ?, ?)");
    $stmt->bind_param('ssss', $email, $nombre, $telefono, $texto_area);
    $registroGuardado = $stmt->execute();

    $stmt->close();
    $mysqli->close();
    header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
    header("Pragma: no-cache");
    header("Location: contacto.html", true, 303);
    exit;
}

?>