.class public Le/p/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/b/i$c;,
        Le/p/b/i$b;,
        Le/p/b/i$a;
    }
.end annotation


# instance fields
.field public final a:Le/p/b/i$b;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Le/p/b/j;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/p/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Le/p/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Le/p/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Landroid/os/Handler;

.field public final j:Landroid/os/Handler;

.field public final k:Le/p/b/d;

.field public final l:Le/p/b/b0;

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/p/b/i$c;

.field public final o:Z

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Landroid/os/Handler;Le/p/b/j;Le/p/b/d;Le/p/b/b0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/p/b/i$b;

    invoke-direct {v0}, Le/p/b/i$b;-><init>()V

    iput-object v0, p0, Le/p/b/i;->a:Le/p/b/i$b;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 5
    sget-object v2, Le/p/b/f0;->a:Ljava/lang/StringBuilder;

    .line 6
    new-instance v2, Le/p/b/e0;

    invoke-direct {v2, v1}, Le/p/b/e0;-><init>(Landroid/os/Looper;)V

    .line 7
    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8
    iput-object p1, p0, Le/p/b/i;->b:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Le/p/b/i;->c:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Le/p/b/i;->e:Ljava/util/Map;

    .line 11
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Le/p/b/i;->f:Ljava/util/Map;

    .line 12
    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Le/p/b/i;->g:Ljava/util/Map;

    .line 13
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Le/p/b/i;->h:Ljava/util/Set;

    .line 14
    new-instance p2, Le/p/b/i$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Le/p/b/i$a;-><init>(Landroid/os/Looper;Le/p/b/i;)V

    iput-object p2, p0, Le/p/b/i;->i:Landroid/os/Handler;

    .line 15
    iput-object p4, p0, Le/p/b/i;->d:Le/p/b/j;

    .line 16
    iput-object p3, p0, Le/p/b/i;->j:Landroid/os/Handler;

    .line 17
    iput-object p5, p0, Le/p/b/i;->k:Le/p/b/d;

    .line 18
    iput-object p6, p0, Le/p/b/i;->l:Le/p/b/b0;

    .line 19
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Le/p/b/i;->m:Ljava/util/List;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    :try_start_0
    const-string p5, "airplane_mode_on"

    .line 21
    invoke-static {p2, p5, p4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :catch_0
    :cond_0
    move p2, p4

    .line 22
    :goto_0
    iput-boolean p2, p0, Le/p/b/i;->p:Z

    const-string p2, "android.permission.ACCESS_NETWORK_STATE"

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    .line 24
    :goto_1
    iput-boolean p3, p0, Le/p/b/i;->o:Z

    .line 25
    new-instance p1, Le/p/b/i$c;

    invoke-direct {p1, p0}, Le/p/b/i$c;-><init>(Le/p/b/i;)V

    iput-object p1, p0, Le/p/b/i;->n:Le/p/b/i$c;

    .line 26
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.AIRPLANE_MODE"

    .line 27
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    iget-object p3, p1, Le/p/b/i$c;->a:Le/p/b/i;

    iget-boolean p3, p3, Le/p/b/i;->o:Z

    if-eqz p3, :cond_2

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 29
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    :cond_2
    iget-object p3, p1, Le/p/b/i$c;->a:Le/p/b/i;

    iget-object p3, p3, Le/p/b/i;->b:Landroid/content/Context;

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Le/p/b/c;)V
    .locals 3

    .line 1
    iget-object v0, p1, Le/p/b/c;->n:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p1, Le/p/b/c;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 4
    :cond_2
    iget-object v0, p0, Le/p/b/i;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Le/p/b/i;->i:Landroid/os/Handler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Le/p/b/i;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method public b(Le/p/b/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/b/i;->i:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public c(Le/p/b/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/b/i;->i:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public d(Le/p/b/c;Z)V
    .locals 3

    .line 1
    iget-object v0, p1, Le/p/b/c;->b:Lcom/squareup/picasso/Picasso;

    .line 2
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-static {p1}, Le/p/b/f0;->c(Le/p/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "for error"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string p2, " (will replay)"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Dispatcher"

    const-string v2, "batched"

    invoke-static {v1, v2, v0, p2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_1
    iget-object p2, p0, Le/p/b/i;->e:Ljava/util/Map;

    .line 5
    iget-object v0, p1, Le/p/b/c;->f:Ljava/lang/String;

    .line 6
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Le/p/b/i;->a(Le/p/b/c;)V

    return-void
.end method

.method public e(Le/p/b/a;Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/p/b/i;->h:Ljava/util/Set;

    .line 2
    iget-object v1, p1, Le/p/b/a;->j:Ljava/lang/Object;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Dispatcher"

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Le/p/b/i;->g:Ljava/util/Map;

    invoke-virtual {p1}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p2, p1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 6
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p1, Le/p/b/a;->b:Le/p/b/x;

    invoke-virtual {p2}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "because tag \'"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 8
    iget-object p1, p1, Le/p/b/a;->j:Ljava/lang/Object;

    const-string v2, "\' is paused"

    .line 9
    invoke-static {v0, p1, v2}, Le/d/c/a/a;->d(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "paused"

    .line 10
    invoke-static {v1, v0, p2, p1}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Le/p/b/i;->e:Ljava/util/Map;

    .line 12
    iget-object v2, p1, Le/p/b/a;->i:Ljava/lang/String;

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/p/b/c;

    if-eqz v0, :cond_8

    .line 14
    iget-object p2, v0, Le/p/b/c;->b:Lcom/squareup/picasso/Picasso;

    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    .line 15
    iget-object v1, p1, Le/p/b/a;->b:Le/p/b/x;

    .line 16
    iget-object v2, v0, Le/p/b/c;->k:Le/p/b/a;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_4

    .line 17
    iput-object p1, v0, Le/p/b/c;->k:Le/p/b/a;

    if-eqz p2, :cond_7

    .line 18
    iget-object p1, v0, Le/p/b/c;->l:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3}, Le/p/b/f0;->d(Le/p/b/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, v4, p1, p2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_3
    :goto_0
    invoke-virtual {v1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "to empty hunter"

    invoke-static {v5, v4, p1, p2}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v2, v0, Le/p/b/c;->l:Ljava/util/List;

    if-nez v2, :cond_5

    .line 22
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Le/p/b/c;->l:Ljava/util/List;

    .line 23
    :cond_5
    iget-object v2, v0, Le/p/b/c;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_6

    .line 24
    invoke-virtual {v1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v3}, Le/p/b/f0;->d(Le/p/b/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, p2, v1}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_6
    iget-object p1, p1, Le/p/b/a;->b:Le/p/b/x;

    iget-object p1, p1, Le/p/b/x;->r:Lcom/squareup/picasso/Picasso$e;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v1, v0, Le/p/b/c;->s:Lcom/squareup/picasso/Picasso$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-le p2, v1, :cond_7

    .line 27
    iput-object p1, v0, Le/p/b/c;->s:Lcom/squareup/picasso/Picasso$e;

    :cond_7
    :goto_1
    return-void

    .line 28
    :cond_8
    iget-object v0, p0, Le/p/b/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object p2, p1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 30
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p2, :cond_9

    .line 31
    iget-object p1, p1, Le/p/b/a;->b:Le/p/b/x;

    invoke-virtual {p1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ignored"

    const-string v0, "because shut down"

    invoke-static {v1, p2, p1, v0}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 32
    :cond_a
    iget-object v0, p1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 33
    iget-object v2, p0, Le/p/b/i;->k:Le/p/b/d;

    iget-object v3, p0, Le/p/b/i;->l:Le/p/b/b0;

    invoke-static {v0, p0, v2, v3, p1}, Le/p/b/c;->e(Lcom/squareup/picasso/Picasso;Le/p/b/i;Le/p/b/d;Le/p/b/b0;Le/p/b/a;)Le/p/b/c;

    move-result-object v0

    .line 34
    iget-object v2, p0, Le/p/b/i;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iput-object v2, v0, Le/p/b/c;->n:Ljava/util/concurrent/Future;

    .line 35
    iget-object v2, p0, Le/p/b/i;->e:Ljava/util/Map;

    .line 36
    iget-object v3, p1, Le/p/b/a;->i:Ljava/lang/String;

    .line 37
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_b

    .line 38
    iget-object p2, p0, Le/p/b/i;->f:Ljava/util/Map;

    invoke-virtual {p1}, Le/p/b/a;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_b
    iget-object p2, p1, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    .line 40
    iget-boolean p2, p2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz p2, :cond_c

    .line 41
    iget-object p1, p1, Le/p/b/a;->b:Le/p/b/x;

    invoke-virtual {p1}, Le/p/b/x;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "enqueued"

    const-string v0, ""

    .line 42
    invoke-static {v1, p2, p1, v0}, Le/p/b/f0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
