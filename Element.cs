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
            public bool IsSelectable { get; set; }
            public List<int> NonNumericColumns;

            /// <summary>
            /// Crea una nueva instancia de la clase Table.
            /// </summary>
            public Table() {
                _headers = new List<string>();
                _rows = new List<List<string>>();
                NonNumericColumns = new List<int>();

            }
            public void SetColumnsAsNonNumeric(params int[] cols) {
                foreach(int col in cols) {
                    NonNumericColumns.Add(col);
                }
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
                sb.Append("<table class='mdl-data-table mdl-js-data-table ");
                if (IsSelectable) sb.Append("mdl-data-table--selectable");
                sb.Append(" mdl-shadow--2dp'>");
                sb.AppendLine("<thead>");
                sb.AppendLine("<tr>");
                int col = 0; 
                foreach (string header in _headers) {
                    string key = NonNumericColumns.Contains(col) ? "mdl-data-table__cell--non-numeric" : "";
                    sb.AppendFormat("<th class='{1}'>{0}</th>", header, key);
                    col++;
                }
                sb.AppendLine("</tr>");
                sb.AppendLine("</thead>");
                sb.AppendLine("<tbody>");
                foreach (List<string> row in _rows) {
                    sb.AppendLine("<tr>");
                    col = 0;
                    foreach (string value in row) {
                        string key = NonNumericColumns.Contains(col) ? "mdl-data-table__cell--non-numeric" : "";
                        sb.AppendFormat("<td class='{1}'>{0}</td>", value, key);
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