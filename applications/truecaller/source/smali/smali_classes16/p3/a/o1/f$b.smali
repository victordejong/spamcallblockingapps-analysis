.class public Lp3/a/o1/f$b;
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
    iput-object p1, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    new-instance v1, Lp3/a/o1/f$e;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v0, v2, v2}, Lp3/a/o1/f$e;-><init>(Lp3/a/o1/f;Lp3/a/o1/o/m/b;Lp3/a/o1/g;)V

    .line 7
    iput-object v1, v0, Lp3/a/o1/f;->r:Lp3/a/o1/f$e;

    .line 8
    iget-object v0, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    .line 9
    iget-object v1, v0, Lp3/a/o1/f;->n:Ljava/util/concurrent/Executor;

    .line 10
    iget-object v0, v0, Lp3/a/o1/f;->r:Lp3/a/o1/f$e;

    .line 11
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    .line 13
    iget-object v0, v0, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    const v3, 0x7fffffff

    .line 16
    iput v3, v1, Lp3/a/o1/f;->B:I

    .line 17
    invoke-virtual {v1}, Lp3/a/o1/f;->w()Z

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object v0, p0, Lp3/a/o1/f$b;->a:Lp3/a/o1/f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
