using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;

namespace TrabajoPractico2 {
    public static class Element {
        /// <summary>
        /// Representa una tabla en HTML.
        /// </summary>
        public class Table {
            private readonly List<string> _headers;
            private readonly List<List<string>> _rows;

            /// <summary>
            /// Crea una nueva instancia de la clase Table.
            /// </summary>
            public Table() {
                _headers = new List<string>();
                _rows = new List<List<string>>();
            }

            /// <summary>
            /// Agrega un encabezado a la tabla.
            /// </summary>
            /// <param name="header">El encabezado a agregar.</param>
            public void AddHeader(string header) {
                _headers.Add(header);
            }

            /// <summary>
            /// Agrega uno o varios encabezados a la tabla. 
            /// </summary>
            /// <param name="headers">El o los encabezados a agregar.</param>
            public void SetHeaders(params string[] headers) {
                foreach(string header in headers) {
                    AddHeader(header);
                }
            }

            /// <summary>
            /// Agrega una fila a la tabla.
            /// </summary>
            /// <param name="values">Los valores de la fila a agregar.</param>
            public void AddRow(params object[] values) {
                string[] parsedValues = new string[values.Length];
                for (int i = 0; i < values.Length; i++) {
                    parsedValues[i] = values[i].ToString();
                }
                _rows.Add(parsedValues.ToList());
            }

            /// <summary>
            /// Devuelve el código HTML para la tabla.
            /// </summary>
            /// <returns>Una cadena que contiene el código HTML para la tabla.</returns>
            public override string ToString() {
                StringBuilder sb = new StringBuilder();
                sb.AppendLine("<table>");
                sb.AppendLine("<thead>");
                sb.AppendLine("<tr>");
                foreach (string header in _headers) {
                    sb.AppendFormat("<th>{0}</th>", header);
                }
                sb.AppendLine("</tr>");
                sb.AppendLine("</thead>");
                sb.AppendLine("<tbody>");
                foreach (List<string> row in _rows) {
                    sb.AppendLine("<tr>");
                    foreach (string value in row) {
                        sb.AppendFormat("<td>{0}</td>", value);
                    }
                    sb.AppendLine("</tr>");
                }
                sb.AppendLine("</tbody>");
                sb.AppendLine("</table>");
                return sb.ToString();
            }
        }

       

    }
}