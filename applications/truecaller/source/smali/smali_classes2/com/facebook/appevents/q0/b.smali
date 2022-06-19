.class public final synthetic Lcom/facebook/appevents/q0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/q0/i;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/q0/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/q0/b;->a:Lcom/facebook/appevents/q0/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/facebook/appevents/q0/b;->a:Lcom/facebook/appevents/q0/i;

    .line 1
    const-class v1, Lcom/facebook/appevents/q0/i;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v1, "this$0"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v1, v0, Lcom/facebook/appevents/q0/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/facebook/appevents/m0/g;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    .line 3
    iget-object v0, v0, Lcom/facebook/appevents/q0/i;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    sget-object v2, Lcom/facebook/appevents/q0/g;->a:Lcom/facebook/appevents/q0/g;

    invoke-static {v1}, Lcom/facebook/appevents/q0/g;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6
    invoke-static {v3}, Lcom/facebook/appevents/i0/n/d;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    sget-object v4, Lcom/facebook/appevents/q0/g;->a:Lcom/facebook/appevents/q0/g;

    invoke-static {v3}, Lcom/facebook/appevents/q0/g;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_2

    .line 9
    sget-object v4, Lcom/facebook/appevents/q0/j;->e:Lcom/facebook/appevents/q0/j$a;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "activity.localClassName"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v1, v5}, Lcom/facebook/appevents/q0/j$a;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    const-class v1, Lcom/facebook/appevents/q0/i;

    invoke-static {v0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method
