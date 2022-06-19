.class public Lcom/truecaller/social/facebook/FacebookProfileDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/social/facebook/FacebookProfileDto$b;,
        Lcom/truecaller/social/facebook/FacebookProfileDto$a;
    }
.end annotation


# instance fields
.field public email:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "email"
    .end annotation
.end field

.field public firstName:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "first_name"
    .end annotation
.end field

.field public gender:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "gender"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "id"
    .end annotation
.end field

.field public lastName:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "last_name"
    .end annotation
.end field

.field public location:Lcom/truecaller/social/facebook/FacebookProfileDto$a;
    .annotation runtime Le/m/e/d0/b;
        value = "location"
    .end annotation
.end field

.field public picture:Lcom/truecaller/social/facebook/FacebookProfileDto$b;
    .annotation runtime Le/m/e/d0/b;
        value = "picture"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public toSocialNetworkProfile()Le/a/b5/f;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->id:Ljava/lang/String;

    const-string v2, "profileFacebook"

    invoke-static {v0, v2, v1}, Lcom/truecaller/social/facebook/FacebookProfileDto;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->email:Ljava/lang/String;

    const-string v2, "profileEmail"

    invoke-static {v0, v2, v1}, Lcom/truecaller/social/facebook/FacebookProfileDto;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->firstName:Ljava/lang/String;

    const-string v2, "profileFirstName"

    invoke-static {v0, v2, v1}, Lcom/truecaller/social/facebook/FacebookProfileDto;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->lastName:Ljava/lang/String;

    const-string v2, "profileLastName"

    invoke-static {v0, v2, v1}, Lcom/truecaller/social/facebook/FacebookProfileDto;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->gender:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "female"

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "profileGender"

    if-nez v2, :cond_1

    const-string v2, "male"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "N"

    .line 8
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "M"

    .line 9
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "F"

    .line 10
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->location:Lcom/truecaller/social/facebook/FacebookProfileDto$a;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/truecaller/social/facebook/FacebookProfileDto$a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->location:Lcom/truecaller/social/facebook/FacebookProfileDto$a;

    iget-object v1, v1, Lcom/truecaller/social/facebook/FacebookProfileDto$a;->a:Ljava/lang/String;

    const-string v2, "profileCity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/truecaller/social/facebook/FacebookProfileDto;->picture:Lcom/truecaller/social/facebook/FacebookProfileDto$b;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/truecaller/social/facebook/FacebookProfileDto$b;->a:Lcom/truecaller/social/facebook/FacebookProfileDto$b$a;

    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/truecaller/social/facebook/FacebookProfileDto$b$a;->d:Z

    if-nez v2, :cond_4

    .line 14
    iget-object v1, v1, Lcom/truecaller/social/facebook/FacebookProfileDto$b$a;->c:Ljava/lang/String;

    const-string v2, "profileAvatar"

    invoke-static {v0, v2, v1}, Lcom/truecaller/social/facebook/FacebookProfileDto;->putIfNotNull(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_4
    new-instance v1, Le/a/b5/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/a/b5/f;-><init>(Ljava/util/Map;Landroid/os/Bundle;)V

    return-object v1
.end method
