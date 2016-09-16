# Userテーブル

##table
-name:string
-email:string
-password:string
-profile:string
-group:string
-works:string

##association
-has_many:prototypes,comments,likes

# Commentテーブル

##table
-user_id:integer
-proto_id:integer
-content:text

##association
-belongs_to :user :prototype

#Likeテーブル

##table
-user_id:integer
-proto_id:integer

##association
-belongs_to :prototypes :user

#Prototypeテーブル
##table
##association
-belongs_to :user has_many :comments :likes :capturedimages


#Capturedimageテーブル

##table
-user_id:integer
-proto_id:integer
-image:string

##association
-belongs_to :prototype