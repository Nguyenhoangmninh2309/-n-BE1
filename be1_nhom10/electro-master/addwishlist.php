
<?php
require "../models/wishlists.php";
//tao csdl
?>
        <?php
        $wishlist = new Wishlist;
        if(isset($_SESSION['user'])){
                $wishlists = $wishlist -> getAllWishlist($_SESSION['user']); 
var_dump($_SESSION['user']);
        }
        

function demSLWList()
{
          $wishlist = new Wishlist;
          $wishlists = $wishlist -> getAllWishlist($_SESSION['user']); 
          return count($wishlists);
}
function addSLWList($a,$b)
{
          $wishlist = new Wishlist;
          $wishlist -> addWishlist($a,$b); 
}
function delSLWList($a,$b)
{
          $wishlist = new Wishlist;
          $wishlist -> delWishlist($a,$b); 
          //header('location: wishlist.php');
}
?>
