.class public final synthetic Le/j/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/j/t;->a:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-wide v0, p0, Le/j/t;->a:J

    const-string v2, "auto_event_setup_enabled"

    .line 1
    const-class v3, Le/j/v0;

    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    :try_start_0
    sget-object v4, Le/j/v0;->g:Le/j/v0$a;

    invoke-virtual {v4}, Le/j/v0$a;->a()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 3
    sget-object v4, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    sget-object v4, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/facebook/internal/d0;->f(Ljava/lang/String;Z)Lcom/facebook/internal/c0;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4
    iget-boolean v4, v4, Lcom/facebook/internal/c0;->h:Z

    if-eqz v4, :cond_2

    .line 5
    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v4

    .line 6
    invoke-static {v4}, Lcom/facebook/internal/q$a;->b(Landroid/content/Context;)Lcom/facebook/internal/q;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/facebook/internal/q;->a()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 8
    invoke-virtual {v4}, Lcom/facebook/internal/q;->a()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_2

    .line 9
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "advertiser_id"

    .line 10
    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "fields"

    .line 11
    invoke-virtual {v7, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget-object v4, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    const-string v8, "app"

    invoke-virtual {v4, v6, v8, v6}, Lcom/facebook/GraphRequest$c;->h(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 13
    invoke-virtual {v4, v7}, Lcom/facebook/GraphRequest;->l(Landroid/os/Bundle;)V

    .line 14
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->c()Le/j/l0;

    move-result-object v4

    .line 15
    iget-object v4, v4, Le/j/l0;->c:Lorg/json/JSONObject;

    if-eqz v4, :cond_2

    .line 16
    sget-object v6, Le/j/v0;->h:Le/j/v0$a;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 17
    iput-object v2, v6, Le/j/v0$a;->c:Ljava/lang/Boolean;

    .line 18
    iput-wide v0, v6, Le/j/v0$a;->d:J

    .line 19
    sget-object v0, Le/j/v0;->a:Le/j/v0;

    invoke-virtual {v0, v6}, Le/j/v0;->j(Le/j/v0$a;)V

    .line 20
    :cond_2
    sget-object v0, Le/j/v0;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
