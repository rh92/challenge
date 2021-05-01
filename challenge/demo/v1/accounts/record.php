	<?php
	    if ($_SERVER['REQUEST_METHOD'] == 'GET'){
			require_once("conn.php");

			if(isset($_GET['id'])){
				
				$id = $_GET['id'];
				$query = "SELECT expediente AS no_expediente, fechaUltimaConsulta AS fecha_ultima_consulta, tipoSangre AS tipo_sangre FROM Usuario WHERE id = '$id'";
				$result = $mysql->query($query);

				if($mysql->affected_rows > 0){
					while ($row = $result->fetch_assoc()) {
						$array = $row;
					}

					$query2 = "SELECT A.nombre AS nombre_alergia, UA.fecha AS fecha_alta, UA.medicamento FROM UsuarioAlergia UA INNER JOIN Alergia A ON A.id = UA.idAlergia AND A.active = 1 LEFT JOIN Usuario U ON U.id = UA.idUsuario AND U.active = 1 WHERE U.id = '$id' AND UA.active = 1";
					$result2 = $mysql->query($query2);

					if($mysql->affected_rows > 0){
						while ($row = $result2->fetch_assoc()) {
							$array2[] = $row;

						}
						$array["alergias"] = $array2;
						$arreglo1 = array("codigo" => 200, "mensaje" => "Peticion Completada", "payload" => $array);
						echo json_encode($arreglo1);
					}
				}
				else{
					$myObj->codigo = 404;
					$myObj->mensaje = "El id de usuario no existe.";
					echo json_encode($myObj);
				}
			}

			$result->close();
			$mysql->close();
		}
	?>