import 'package:flutter/material.dart';

class TaskSuccess extends StatelessWidget {
  const TaskSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tareas = [
      {"titulo": "Comprar", "detalle": "Ir al Ara"},
      {"titulo": "Tránsito", "detalle": "Trámite"},
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        border: Border.all(color: Colors.blue.shade300, width: 2),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade100,
            blurRadius: 6,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.task_alt, color: Colors.blue, size: 28),
              SizedBox(width: 8),
              Text(
                "Lista de tareas",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Aquí recorremos la lista y construimos los ítems dinámicamente
          ...tareas.map((tarea) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tarea["titulo"] ?? "",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    tarea["detalle"] ?? "",
                    style: const TextStyle(color: Colors.black54),
                  ),
                  const Divider(),
                ],
              )),
        ],
      ),
    );
  }
}

