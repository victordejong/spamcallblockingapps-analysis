.class public Ln3/y/b/a/w0/n$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/w0/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static c:Ln3/y/b/a/w0/n$b;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ln3/y/b/a/w0/n;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ln3/y/b/a/w0/n$b;->a:Landroid/os/Handler;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/w0/n$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/n$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Ln3/y/b/a/w0/n$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/w0/n;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Ln3/y/b/a/w0/n$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Ln3/y/b/a/w0/n;)V
    .locals 10

    .line 1
    sget-object v0, Ln3/y/b/a/w0/n;->n:Ljava/util/Map;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget-object v0, p1, Ln3/y/b/a/w0/n;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ln3/y/b/a/x0/x;->l(Landroid/content/Context;)I

    move-result v0

    .line 4
    :goto_0
    iget v2, p1, Ln3/y/b/a/w0/n;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_1

    .line 5
    monitor-exit p1

    goto :goto_3

    .line 6
    :cond_1
    :try_start_1
    iput v0, p1, Ln3/y/b/a/w0/n;->i:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eqz v0, :cond_4

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1, v0}, Ln3/y/b/a/w0/n;->i(I)J

    move-result-wide v2

    iput-wide v2, p1, Ln3/y/b/a/w0/n;->l:J

    .line 8
    iget-object v0, p1, Ln3/y/b/a/w0/n;->e:Ln3/y/b/a/x0/a;

    invoke-interface {v0}, Ln3/y/b/a/x0/a;->a()J

    move-result-wide v2

    .line 9
    iget v0, p1, Ln3/y/b/a/w0/n;->f:I

    if-lez v0, :cond_3

    iget-wide v4, p1, Ln3/y/b/a/w0/n;->g:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    move v5, v0

    goto :goto_1

    :cond_3
    move v5, v1

    .line 10
    :goto_1
    iget-wide v6, p1, Ln3/y/b/a/w0/n;->h:J

    iget-wide v8, p1, Ln3/y/b/a/w0/n;->l:J

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Ln3/y/b/a/w0/n;->j(IJJ)V

    .line 11
    iput-wide v2, p1, Ln3/y/b/a/w0/n;->g:J

    const-wide/16 v2, 0x0

    .line 12
    iput-wide v2, p1, Ln3/y/b/a/w0/n;->h:J

    .line 13
    iput-wide v2, p1, Ln3/y/b/a/w0/n;->k:J

    .line 14
    iput-wide v2, p1, Ln3/y/b/a/w0/n;->j:J

    .line 15
    iget-object v0, p1, Ln3/y/b/a/w0/n;->d:Ln3/y/b/a/x0/q;

    .line 16
    iget-object v2, v0, Ln3/y/b/a/x0/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, -0x1

    .line 17
    iput v2, v0, Ln3/y/b/a/x0/q;->d:I

    .line 18
    iput v1, v0, Ln3/y/b/a/x0/q;->e:I

    .line 19
    iput v1, v0, Ln3/y/b/a/x0/q;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit p1

    goto :goto_3

    .line 21
    :cond_4
    :goto_2
    monitor-exit p1

    :goto_3
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ln3/y/b/a/w0/n$b;->a()V

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object p2, p0, Ln3/y/b/a/w0/n$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 5
    iget-object p2, p0, Ln3/y/b/a/w0/n$b;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ln3/y/b/a/w0/n;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p0, p2}, Ln3/y/b/a/w0/n$b;->b(Ln3/y/b/a/w0/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
