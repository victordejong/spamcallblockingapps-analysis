.class public final synthetic Lcom/facebook/appevents/k0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/k0/j;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/k0/j;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/k0/e;->a:Lcom/facebook/appevents/k0/j;

    iput-object p2, p0, Lcom/facebook/appevents/k0/e;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/facebook/appevents/k0/e;->a:Lcom/facebook/appevents/k0/j;

    iget-object v1, p0, Lcom/facebook/appevents/k0/e;->b:Ljava/lang/Runnable;

    .line 1
    const-class v2, Lcom/facebook/appevents/k0/j;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v3, "this$0"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$queryPurchaseHistoryRunnable"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "inapp"

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/facebook/appevents/k0/j;->r:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4, v1}, Lcom/facebook/appevents/k0/j;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
