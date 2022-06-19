.class public final synthetic Lcom/facebook/appevents/i0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/facebook/appevents/i0/l;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/i0/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/i0/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/i0/e;->b:Lcom/facebook/appevents/i0/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/facebook/appevents/i0/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/i0/e;->b:Lcom/facebook/appevents/i0/l;

    .line 1
    const-class v2, Lcom/facebook/appevents/i0/l;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "$tree"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lcom/facebook/internal/q0;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    invoke-static {}, Lcom/facebook/AccessToken$c;->b()Lcom/facebook/AccessToken;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 4
    iget-object v5, v1, Lcom/facebook/appevents/i0/l;->d:Ljava/lang/String;

    invoke-static {v3, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    sget-object v5, Lcom/facebook/appevents/i0/l;->e:Lcom/facebook/appevents/i0/l$a;

    .line 6
    sget-object v5, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_indexing"

    .line 7
    invoke-static {v0, v4, v5, v6}, Lcom/facebook/appevents/i0/l$a;->a(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 8
    invoke-virtual {v1, v0, v3}, Lcom/facebook/appevents/i0/l;->b(Lcom/facebook/GraphRequest;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
