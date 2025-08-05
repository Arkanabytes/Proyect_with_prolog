# Proyecto Currantes - Sistema Basado en Reglas (SBR)

## 📋 Descripción

**Currantes** es un sistema basado en reglas (SBR) desarrollado en Prolog como parte del PED 2 de la asignatura. El programa está enfocado en la temática COVID-19 y tiene como objetivo especificar el tipo de trabajador después de su identificación y razonamiento sobre su situación laboral durante la pandemia.

## 🎯 Objetivo

El sistema permite clasificar y razonar sobre diferentes tipos de trabajadores en el contexto de la pandemia COVID-19, aplicando reglas lógicas para determinar:
- Tipo de trabajador (esencial, no esencial, remoto, etc.)
- Condiciones de trabajo durante la pandemia
- Medidas de seguridad aplicables
- Riesgos asociados

## 🛠️ Tecnologías Utilizadas

- **Prolog**: Lenguaje de programación lógica principal
- **SWI-Prolog**: Intérprete recomendado para ejecutar el programa

## 📁 Estructura del Proyecto

```
Proyect_with_prolog/
├── README.md
├── currantes.pl          # Archivo principal del sistema
├── reglas/              # Directorio con reglas específicas
│   ├── trabajadores.pl  # Reglas de clasificación de trabajadores
│   ├── covid_reglas.pl  # Reglas específicas COVID-19
│   └── seguridad.pl     # Reglas de medidas de seguridad
├── base_conocimiento/   # Base de conocimiento
│   ├── tipos_trabajo.pl # Definiciones de tipos de trabajo
│   └── medidas.pl       # Medidas preventivas
└── ejemplos/           # Casos de ejemplo y pruebas
    ├── casos_test.pl   # Casos de prueba
    └── ejemplos.txt    # Ejemplos de consultas
```

## 🚀 Instalación y Uso

### Prerrequisitos

1. Instalar SWI-Prolog desde [https://www.swi-prolog.org/](https://www.swi-prolog.org/)
2. Clonar este repositorio:
   ```bash
   git clone https://github.com/Arkanabytes/Proyect_with_prolog.git
   cd Proyect_with_prolog
   ```

### Ejecución

1. Abrir SWI-Prolog
2. Cargar el archivo principal:
   ```prolog
   ?- [currantes].
   ```
3. Realizar consultas al sistema:
   ```prolog
   ?- tipo_trabajador(juan, Tipo).
   ?- medidas_seguridad(enfermero, Medidas).
   ?- riesgo_covid(profesor, Riesgo).
   ```

## 📖 Ejemplos de Uso

### Clasificación de trabajadores
```prolog
% Consultar el tipo de un trabajador
?- tipo_trabajador(maria, Tipo).
Tipo = sanitario_esencial.

% Verificar si un trabajador puede trabajar desde casa
?- puede_teletrabajar(programador).
true.

% Obtener medidas de seguridad requeridas
?- medidas_requeridas(cajero_supermercado, Medidas).
Medidas = [mascarilla, pantalla_protectora, gel_hidroalcoholico].
```

### Evaluación de riesgos
```prolog
% Evaluar nivel de riesgo de exposición
?- nivel_riesgo(medico_uci, Nivel).
Nivel = muy_alto.

% Determinar si requiere cuarentena
?- requiere_cuarentena(contacto_positivo, maria).
true.
```

## 🧠 Lógica del Sistema

El sistema utiliza las siguientes categorías principales:

### Tipos de Trabajadores
- **Esenciales**: Personal sanitario, fuerzas de seguridad, servicios básicos
- **No esenciales**: Sectores que pueden suspender actividad
- **Teletrabajo**: Trabajadores que pueden laborar remotamente
- **Riesgo alto**: Trabajadores con mayor exposición

### Reglas de Clasificación
- Sector de actividad
- Posibilidad de trabajo remoto
- Nivel de contacto con el público
- Criticidad del servicio

### Medidas de Seguridad
- Equipos de protección individual (EPI)
- Distanciamiento social
- Protocolos de higiene
- Frecuencia de testeo

## 🔍 Funcionalidades

- ✅ Clasificación automática de trabajadores
- ✅ Evaluación de riesgos de exposición
- ✅ Recomendación de medidas de seguridad
- ✅ Determinación de modalidad de trabajo
- ✅ Cálculo de prioridad para vacunación
- ✅ Gestión de cuarentenas y aislamientos

## 🧪 Testing

Para ejecutar las pruebas del sistema:

```prolog
?- [ejemplos/casos_test].
?- run_tests.
```

## 📊 Casos de Uso

1. **Gestión de RRHH**: Clasificar empleados según normativas COVID
2. **Salud Pública**: Evaluar riesgos en diferentes sectores
3. **Planificación**: Determinar personal esencial vs no esencial
4. **Seguridad Laboral**: Asignar medidas preventivas apropiadas

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Para contribuir:

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`)
3. Commit tus cambios (`git commit -m 'Añadir nueva funcionalidad'`)
4. Push a la rama (`git push origin feature/nueva-funcionalidad`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Ver el archivo `LICENSE` para más detalles.

## 👥 Autores

- **Arkanabytes** - *Desarrollo inicial* - [Arkanabytes](https://github.com/Arkanabytes)

## 📞 Contacto

Si tienes preguntas o sugerencias sobre el proyecto, no dudes en crear un issue o contactar directamente.

## 🔗 Enlaces Útiles

- [Documentación SWI-Prolog](https://www.swi-prolog.org/pldoc/doc_for?object=manual)
- [Tutorial de Prolog](https://www.cpp.edu/~jrfisher/www/prolog_tutorial/contents.html)
- [COVID-19 Workplace Safety Guidelines](https://www.who.int/publications/i/item/considerations-for-public-health-and-social-measures-in-the-workplace-in-the-context-of-covid-19)

---

## 📈 Estado del Proyecto

![Status](https://img.shields.io/badge/status-active-brightgreen)
![Language](https://img.shields.io/badge/language-Prolog-orange)
![License](https://img.shields.io/badge/license-MIT-blue)

**Versión actual**: 1.0.0  
**Última actualización**: 2024
