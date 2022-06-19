.class public Lcom/facebook/login/DeviceAuthDialog$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->VA(Lcom/facebook/login/LoginClient$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/login/DeviceAuthDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/login/DeviceAuthDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$b;->a:Lcom/facebook/login/DeviceAuthDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/j/l0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$b;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 2
    iget-boolean v1, v0, Lcom/facebook/login/DeviceAuthDialog;->i:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, v1, Lcom/facebook/FacebookRequestError;->i:Le/j/c0;

    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthDialog;->RA(Le/j/c0;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p1, Le/j/l0;->c:Lorg/json/JSONObject;

    .line 7
    new-instance v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-direct {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;-><init>()V

    :try_start_0
    const-string v1, "user_code"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 10
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "https://facebook.com/device?user_code=%1$s&qr=1"

    .line 11
    invoke-static {v2, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a:Ljava/lang/String;

    const-string v1, "code"

    .line 12
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c:Ljava/lang/String;

    const-string v1, "interval"

    .line 14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 15
    iput-wide v1, v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$b;->a:Lcom/facebook/login/DeviceAuthDialog;

    .line 17
    invoke-virtual {p1, v0}, Lcom/facebook/login/DeviceAuthDialog;->UA(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void

    :catch_0
    move-exception p1

    .line 18
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$b;->a:Lcom/facebook/login/DeviceAuthDialog;

    new-instance v1, Le/j/c0;

    invoke-direct {v1, p1}, Le/j/c0;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/facebook/login/DeviceAuthDialog;->RA(Le/j/c0;)V

    return-void
.end method
