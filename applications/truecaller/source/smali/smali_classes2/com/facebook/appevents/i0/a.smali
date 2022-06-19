.class public final synthetic Lcom/facebook/appevents/i0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/i0/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/appevents/i0/a;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/facebook/appevents/i0/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/appevents/i0/a;->b:Landroid/os/Bundle;

    .line 1
    const-class v2, Lcom/facebook/appevents/i0/h;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "$eventName"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$parameters"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    .line 3
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 4
    new-instance v5, Lcom/facebook/appevents/x;

    invoke-direct {v5, v3, v4, v4}, Lcom/facebook/appevents/x;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AccessToken;)V

    .line 5
    invoke-virtual {v5, v0, v1}, Lcom/facebook/appevents/x;->e(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
