.class public final synthetic Lcom/facebook/appevents/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/p;

.field public final synthetic b:Lcom/facebook/GraphRequest;

.field public final synthetic c:Lcom/facebook/appevents/f0;

.field public final synthetic d:Lcom/facebook/appevents/c0;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/p;Lcom/facebook/GraphRequest;Lcom/facebook/appevents/f0;Lcom/facebook/appevents/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/e;->a:Lcom/facebook/appevents/p;

    iput-object p2, p0, Lcom/facebook/appevents/e;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/appevents/e;->c:Lcom/facebook/appevents/f0;

    iput-object p4, p0, Lcom/facebook/appevents/e;->d:Lcom/facebook/appevents/c0;

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/appevents/e;->a:Lcom/facebook/appevents/p;

    iget-object v1, p0, Lcom/facebook/appevents/e;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/appevents/e;->c:Lcom/facebook/appevents/f0;

    iget-object v3, p0, Lcom/facebook/appevents/e;->d:Lcom/facebook/appevents/c0;

    .line 1
    const-class v4, Lcom/facebook/appevents/t;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v5, "$accessTokenAppId"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$postRequest"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$appEvents"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "$flushState"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "response"

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/appevents/t;->e(Lcom/facebook/appevents/p;Lcom/facebook/GraphRequest;Le/j/l0;Lcom/facebook/appevents/f0;Lcom/facebook/appevents/c0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
