<?php
session_start();
unset($_SESSION['user']);
header('location: ../electro-master/login.php');