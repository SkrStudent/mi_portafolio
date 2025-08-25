// =============================
// JS PORTAFOLIO - OSCAR SALAZAR
// =============================

// Mensaje en consola al cargar
document.addEventListener("DOMContentLoaded", () => {
  console.log("Mi Portafolio cargado correctamente ✅");
});

// Scroll suave para todos los enlaces internos (#anclas)
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener("click", function(e) {
    e.preventDefault();
    const destino = document.querySelector(this.getAttribute("href"));
    if (destino) {
      destino.scrollIntoView({ behavior: "smooth" });
    }
  });
});

// Validación extra en formulario de contacto
const form = document.querySelector("form");
if (form) {
  form.addEventListener("submit", (event) => {
    if (!form.checkValidity()) {
      event.preventDefault();
      event.stopPropagation();
      alert("⚠️ Por favor completa todos los campos correctamente.");
    } else {
      alert("✅ Tu mensaje fue enviado con éxito (simulación).");
    }
    form.classList.add("was-validated");
  });
}
