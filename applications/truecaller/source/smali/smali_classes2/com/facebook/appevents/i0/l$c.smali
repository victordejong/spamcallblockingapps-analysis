.class public final Lcom/facebook/appevents/i0/l$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/i0/l;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/facebook/appevents/codeless/ViewIndexer$schedule$indexingTask$1",
        "Ljava/util/TimerTask;",
        "run",
        "",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/i0/l;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/i0/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/appevents/i0/l$c;->a:Lcom/facebook/appevents/i0/l;

    .line 1
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-class v0, Lcom/facebook/appevents/i0/l;

    :try_start_0
    iget-object v1, p0, Lcom/facebook/appevents/i0/l$c;->a:Lcom/facebook/appevents/i0/l;

    .line 2
    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    iget-object v1, v1, Lcom/facebook/appevents/i0/l;->b:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_0
    move-object v1, v3

    .line 4
    :goto_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 5
    invoke-static {v1}, Lcom/facebook/appevents/m0/g;->b(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    if-eqz v1, :cond_8

    if-nez v2, :cond_1

    goto/16 :goto_6

    .line 6
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "activity.javaClass.simpleName"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v4, Lcom/facebook/appevents/i0/i;->a:Lcom/facebook/appevents/i0/i;

    .line 8
    const-class v4, Lcom/facebook/appevents/i0/i;

    invoke-static {v4}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    :try_start_3
    sget-object v5, Lcom/facebook/appevents/i0/i;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v5, v4}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_2
    if-nez v6, :cond_3

    return-void

    .line 10
    :cond_3
    invoke-static {}, Lcom/facebook/internal/i0;->a()Z

    move-result v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v5, ""

    if-eqz v4, :cond_4

    :try_start_5
    const-string v0, "UnityFacebookSDKPlugin"

    const-string v1, "CaptureViewHierarchy"

    .line 11
    invoke-static {v0, v1, v5}, Lcom/facebook/appevents/i0/n/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    new-instance v4, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lcom/facebook/appevents/i0/l$b;

    invoke-direct {v6, v2}, Lcom/facebook/appevents/i0/l$b;-><init>(Landroid/view/View;)V

    invoke-direct {v4, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 13
    iget-object v6, p0, Lcom/facebook/appevents/i0/l$c;->a:Lcom/facebook/appevents/i0/l;

    .line 14
    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v7
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v7, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    :try_start_6
    iget-object v3, v6, Lcom/facebook/appevents/i0/l;->a:Landroid/os/Handler;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v6

    :try_start_7
    invoke-static {v6, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    :goto_3
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const-wide/16 v6, 0x1

    .line 17
    :try_start_8
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v5, v3

    goto :goto_4

    .line 18
    :catch_0
    :try_start_9
    invoke-static {}, Lcom/facebook/appevents/i0/l;->a()Ljava/lang/String;

    .line 19
    :goto_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :try_start_a
    const-string v4, "screenname"

    .line 20
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "screenshot"

    .line 21
    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 23
    sget-object v4, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {v2}, Lcom/facebook/appevents/i0/n/f;->c(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "view"

    .line 25
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    .line 26
    :catch_1
    :try_start_b
    invoke-static {}, Lcom/facebook/appevents/i0/l;->a()Ljava/lang/String;

    .line 27
    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "viewTree.toString()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/facebook/appevents/i0/l$c;->a:Lcom/facebook/appevents/i0/l;

    .line 29
    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    if-eqz v3, :cond_6

    goto :goto_7

    .line 30
    :cond_6
    :try_start_c
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v3, :cond_7

    goto :goto_7

    .line 31
    :cond_7
    :try_start_d
    sget-object v3, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->e()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 32
    new-instance v4, Lcom/facebook/appevents/i0/e;

    invoke-direct {v4, v1, v2}, Lcom/facebook/appevents/i0/e;-><init>(Ljava/lang/String;Lcom/facebook/appevents/i0/l;)V

    .line 33
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v1

    .line 34
    :try_start_e
    invoke-static {v1, v2}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_7

    :catchall_4
    move-exception v1

    .line 35
    :try_start_f
    invoke-static {v1, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_7

    :cond_8
    :goto_6
    return-void

    .line 36
    :catch_2
    invoke-static {}, Lcom/facebook/appevents/i0/l;->a()Ljava/lang/String;

    :goto_7
    return-void
.end method
