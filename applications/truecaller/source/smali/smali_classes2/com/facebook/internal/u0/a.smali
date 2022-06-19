.class public final synthetic Lcom/facebook/internal/u0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/u0/i;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/u0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/u0/a;->a:Lcom/facebook/internal/u0/i;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/internal/u0/a;->a:Lcom/facebook/internal/u0/i;

    const-string v1, "$instrumentData"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "response"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v1, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    if-nez v1, :cond_1

    .line 3
    iget-object p1, p1, Le/j/l0;->f:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "success"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, v0, Lcom/facebook/internal/u0/i;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/u0/j;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
