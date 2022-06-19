.class public final synthetic Lcom/facebook/appevents/i0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/i0/l;

.field public final synthetic b:Ljava/util/TimerTask;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/i0/l;Ljava/util/TimerTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/i0/g;->a:Lcom/facebook/appevents/i0/l;

    iput-object p2, p0, Lcom/facebook/appevents/i0/g;->b:Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/facebook/appevents/i0/g;->a:Lcom/facebook/appevents/i0/l;

    iget-object v2, p0, Lcom/facebook/appevents/i0/g;->b:Ljava/util/TimerTask;

    .line 1
    const-class v7, Lcom/facebook/appevents/i0/l;

    invoke-static {v7}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "this$0"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$indexingTask"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :try_start_1
    iget-object v1, v0, Lcom/facebook/appevents/i0/l;->c:Ljava/util/Timer;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :goto_0
    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/facebook/appevents/i0/l;->d:Ljava/lang/String;

    .line 4
    new-instance v8, Ljava/util/Timer;

    invoke-direct {v8}, Ljava/util/Timer;-><init>()V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    move-object v1, v8

    .line 5
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 6
    iput-object v8, v0, Lcom/facebook/appevents/i0/l;->c:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0, v7}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_0
    :goto_1
    return-void
.end method
