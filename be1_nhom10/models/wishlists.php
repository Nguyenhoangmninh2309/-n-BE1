<?php
class Wishlist extends Db
{
          public function getAllWishlist($username)
          {
                    //SELECT * FROM `products`,`wishlist`,`user` WHERE `products`.`id` = `wishlist`.`id_product` 
                    //and `wishlist`.`id_user` = `user`.`id_user` GROUP BY `wishlist`.`id_user` = 1
          //lay du lieu
          $sql = self::$connection->prepare("SELECT * FROM `products`,`wishlist`,`user` WHERE `products`.`id` = `wishlist`.`id_product` and `wishlist`.`username` = `user`.`username` and `wishlist`.`username` = ?");
          $sql->bind_param("s",$username);
          $sql -> execute();//return the object
          //chuyen du lieu thanh mang
          $data = array();
          $data = $sql -> get_result()-> fetch_all(MYSQLI_ASSOC);
          return $data;
          }
//thêm
          public function addWishlist( $username,$id_product)
                    {
                    //lay du lieu
                    $sql = self::$connection->prepare("INSERT INTO `wishlist`(`username`,`id_product`) VALUES (?, ?) ");
                    $sql->bind_param("si",$username,$id_product);
                    return $sql -> execute();//return the object
                    }
          //xóa
          public function delWishlist( $username,$id_product)
                    {
                    //lay du lieu
                    $sql = self::$connection->prepare("DELETE FROM `wishlist` WHERE `username` = ? and `id_product` = ?");
                    $sql->bind_param("si",$username,$id_product);
                    return $sql -> execute();//return the object
                    }
}
?>