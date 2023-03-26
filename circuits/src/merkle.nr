fn main(message : [Field; 62], index : Field, hashpath : [Field; 40], root : Field) {
    let leaf = std::hash::hash_to_field(message);
    let is_member = std::merkle::check_membership(root, leaf, index, hashpath);
    constrain is_member == 1;
}