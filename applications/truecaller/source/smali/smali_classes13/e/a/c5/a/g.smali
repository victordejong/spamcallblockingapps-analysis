.class public final Le/a/c5/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)Lcom/truecaller/social_login/SocialAccountProfile;
    .locals 11

    const-string v0, "picture"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    iget-object v3, p1, Le/j/l0;->f:Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    if-nez v2, :cond_9

    if-nez v3, :cond_2

    goto/16 :goto_4

    .line 3
    :cond_2
    iget-object p1, p1, Le/j/l0;->b:Ljava/lang/String;

    :try_start_0
    const-string p1, "first_name"

    .line 4
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "last_name"

    .line 5
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "middle_name"

    .line 6
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_4

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    :goto_3
    if-nez v7, :cond_7

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    if-nez v4, :cond_7

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    move-object v5, p1

    const-string p1, "email"

    .line 9
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 11
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    move-object v8, v1

    .line 12
    new-instance p1, Lcom/truecaller/social_login/SocialAccountProfile;

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v4, p1

    invoke-direct/range {v4 .. v10}, Lcom/truecaller/social_login/SocialAccountProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Error while deserializing the FB profile"

    .line 13
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 14
    throw p1

    .line 15
    :cond_9
    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz v2, :cond_a

    .line 16
    iget-object v1, v2, Lcom/facebook/FacebookRequestError;->i:Le/j/c0;

    :cond_a
    const-string v0, "Error while getting the FB profile"

    .line 17
    invoke-direct {p1, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
