.class public Lp3/a/o1/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/o1/f;->d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/o1/f;


# direct methods
.method public constructor <init>(Lp3/a/o1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/f$d;->a:Lp3/a/o1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/o1/f$d;->a:Lp3/a/o1/f;

    .line 2
    iget-object v1, v0, Lp3/a/o1/f;->n:Ljava/util/concurrent/Executor;

    .line 3
    iget-object v0, v0, Lp3/a/o1/f;->r:Lp3/a/o1/f$e;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lp3/a/o1/f$d;->a:Lp3/a/o1/f;

    .line 6
    iget-object v0, v0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f$d;->a:Lp3/a/o1/f;

    const v2, 0x7fffffff

    .line 9
    iput v2, v1, Lp3/a/o1/f;->B:I

    .line 10
    invoke-virtual {v1}, Lp3/a/o1/f;->w()Z

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
