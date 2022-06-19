.class public Lp3/a/n1/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/w1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m$a;


# direct methods
.method public constructor <init>(Lp3/a/n1/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m$a$a;->a:Lp3/a/n1/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/m$a$a;->a:Lp3/a/n1/m$a;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lp3/a/n1/m$a$a;->a:Lp3/a/n1/m$a;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, v0, Lp3/a/n1/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lp3/a/n1/m$a;->d:Lp3/a/g1;

    .line 9
    iget-object v2, v0, Lp3/a/n1/m$a;->e:Lp3/a/g1;

    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lp3/a/n1/m$a;->d:Lp3/a/g1;

    .line 11
    iput-object v3, v0, Lp3/a/n1/m$a;->e:Lp3/a/g1;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lp3/a/n1/m$a;->a()Lp3/a/n1/x;

    move-result-object v3

    invoke-interface {v3, v1}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v0}, Lp3/a/n1/m$a;->a()Lp3/a/n1/x;

    move-result-object v0

    invoke-interface {v0, v2}, Lp3/a/n1/t1;->f(Lp3/a/g1;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
