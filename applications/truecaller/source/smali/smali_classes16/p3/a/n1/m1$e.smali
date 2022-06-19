.class public Lp3/a/n1/m1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1;-><init>(Lp3/a/n1/q1;Lp3/a/n1/v;Lp3/a/n1/l$a;Lp3/a/n1/y1;Lcom/google/common/base/Supplier;Ljava/util/List;Lp3/a/n1/u2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$e;->a:Lp3/a/n1/m1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$e;->a:Lp3/a/n1/m1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/m1;->n:Lp3/a/n1/m1$k;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lp3/a/n1/m1$k;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Lp3/a/n1/m1$k;->a:Lp3/a/n1/y1;

    invoke-interface {v1}, Lp3/a/n1/y1;->a()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.getObject()"

    iget-object v3, v0, Lp3/a/n1/m1$k;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Ln3/g0/y;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lp3/a/n1/m1$k;->b:Ljava/util/concurrent/Executor;

    .line 6
    :cond_0
    iget-object v1, v0, Lp3/a/n1/m1$k;->b:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 7
    invoke-interface {v1, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0

    throw p1
.end method
