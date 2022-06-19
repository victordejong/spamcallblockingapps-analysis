.class public final synthetic Lcom/facebook/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Lcom/facebook/internal/q0$a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/q0$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/k;->a:Lcom/facebook/internal/q0$a;

    iput-object p2, p0, Lcom/facebook/internal/k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 4

    iget-object v0, p0, Lcom/facebook/internal/k;->a:Lcom/facebook/internal/q0$a;

    iget-object v1, p0, Lcom/facebook/internal/k;->b:Ljava/lang/String;

    const-string v2, "$callback"

    .line 1
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$accessToken"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "response"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p1, Le/j/l0;->e:Lcom/facebook/FacebookRequestError;

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, v2, Lcom/facebook/FacebookRequestError;->i:Le/j/c0;

    .line 4
    invoke-interface {v0, p1}, Lcom/facebook/internal/q0$a;->b(Le/j/c0;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lcom/facebook/internal/n0;->a:Lcom/facebook/internal/n0;

    .line 6
    iget-object v2, p1, Le/j/l0;->f:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    const-string v3, "key"

    .line 7
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v3, Lcom/facebook/internal/n0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p1, Le/j/l0;->f:Lorg/json/JSONObject;

    .line 10
    invoke-interface {v0, p1}, Lcom/facebook/internal/q0$a;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
