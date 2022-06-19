.class public final Lp3/a/n1/m1$p$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1$p$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1$p$e;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$p$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$p$e$a;->a:Lp3/a/n1/m1$p$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$p$e$a;->a:Lp3/a/n1/m1$p$e;

    iget-object v1, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v1, v1, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 2
    iget-object v1, v1, Lp3/a/n1/m1;->E:Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lp3/a/n1/m1$p$e$a;->a:Lp3/a/n1/m1$p$e;

    iget-object v0, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 5
    iget-object v0, v0, Lp3/a/n1/m1;->E:Ljava/util/Collection;

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lp3/a/n1/m1$p$e$a;->a:Lp3/a/n1/m1$p$e;

    iget-object v0, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    iget-object v1, v0, Lp3/a/n1/m1;->b0:Lp3/a/n1/y0;

    .line 8
    iget-object v0, v0, Lp3/a/n1/m1;->F:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, v0, v2}, Lp3/a/n1/y0;->c(Ljava/lang/Object;Z)V

    .line 10
    iget-object v0, p0, Lp3/a/n1/m1$p$e$a;->a:Lp3/a/n1/m1$p$e;

    iget-object v0, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    const/4 v1, 0x0

    .line 11
    iput-object v1, v0, Lp3/a/n1/m1;->E:Ljava/util/Collection;

    .line 12
    iget-object v0, v0, Lp3/a/n1/m1;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lp3/a/n1/m1$p$e$a;->a:Lp3/a/n1/m1$p$e;

    iget-object v0, v0, Lp3/a/n1/m1$p$e;->o:Lp3/a/n1/m1$p;

    iget-object v0, v0, Lp3/a/n1/m1$p;->d:Lp3/a/n1/m1;

    .line 15
    iget-object v0, v0, Lp3/a/n1/m1;->I:Lp3/a/n1/m1$u;

    .line 16
    sget-object v1, Lp3/a/n1/m1;->j0:Lp3/a/g1;

    .line 17
    iget-object v2, v0, Lp3/a/n1/m1$u;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, v0, Lp3/a/n1/m1$u;->c:Lp3/a/g1;

    if-eqz v3, :cond_0

    .line 19
    monitor-exit v2

    goto :goto_0

    .line 20
    :cond_0
    iput-object v1, v0, Lp3/a/n1/m1$u;->c:Lp3/a/g1;

    .line 21
    iget-object v3, v0, Lp3/a/n1/m1$u;->b:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 23
    iget-object v0, v0, Lp3/a/n1/m1$u;->d:Lp3/a/n1/m1;

    .line 24
    iget-object v0, v0, Lp3/a/n1/m1;->H:Lp3/a/n1/d0;

    .line 25
    invoke-virtual {v0, v1}, Lp3/a/n1/d0;->g(Lp3/a/g1;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
