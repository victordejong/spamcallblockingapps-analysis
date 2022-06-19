.class public Lcom/facebook/login/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/j/l0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 2
    iget-object v0, v0, Lcom/facebook/login/DeviceAuthDialog;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_4

    .line 5
    iget p1, v0, Lcom/facebook/FacebookRequestError;->c:I

    const v1, 0x149620

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 6
    iget-object p1, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 7
    iget-object v0, v0, Lcom/facebook/FacebookRequestError;->i:Le/j/c0;

    .line 8
    invoke-virtual {p1, v0}, Lcom/facebook/login/DeviceAuthDialog;->RA(Le/j/c0;)V

    goto :goto_0

    .line 9
    :pswitch_0
    iget-object p1, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog;->f0()V

    goto :goto_0

    .line 10
    :pswitch_1
    iget-object p1, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 11
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog;->TA()V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 13
    iget-object p1, p1, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 15
    iget-object p1, p1, Lcom/facebook/login/DeviceAuthDialog;->h:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 16
    iget-object p1, p1, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Le/j/w0/a/a;->a(Ljava/lang/String;)V

    .line 18
    :cond_2
    iget-object p1, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 19
    iget-object v0, p1, Lcom/facebook/login/DeviceAuthDialog;->k:Lcom/facebook/login/LoginClient$Request;

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p1, v0}, Lcom/facebook/login/DeviceAuthDialog;->VA(Lcom/facebook/login/LoginClient$Request;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog;->f0()V

    :goto_0
    return-void

    .line 22
    :cond_4
    :try_start_0
    iget-object p1, p1, Le/j/l0;->c:Lorg/json/JSONObject;

    .line 23
    iget-object v0, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    const-string v1, "access_token"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    .line 25
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "data_access_expiration_time"

    .line 26
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 27
    invoke-static {v0, v1, v2, p1}, Lcom/facebook/login/DeviceAuthDialog;->OA(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 28
    iget-object v0, p0, Lcom/facebook/login/k;->a:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v1, Le/j/c0;

    invoke-direct {v1, p1}, Le/j/c0;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->RA(Le/j/c0;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x149634
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
