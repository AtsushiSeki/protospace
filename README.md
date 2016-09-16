# Userテーブル

##table
-name:string
-email:string
-password:string
-profile:string
-group:string
-works:string
-avatar:string

##association
-has_many:prototypes,comments,likes

# Commentテーブル

##table
-user_id:integer
-prototype_id:integer
-content:text

##association
-belongs_to :user :prototype

#Likeテーブル

##table
-user_id:integer
-prototype_id:integer

##association
-belongs_to :prototype :user

#Prototypeテーブル
##table
##association
-belongs_to :user has_many :comments :likes :capturedimages


#Capturedimageテーブル

##table
-user_id:integer
-prototype_id:integer
-image:string
-role:integer

##association
-belongs_to :prototype