.class public Lp3/a/n1/b0$b;
.super Lp3/a/n1/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/b0;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/n1/b0$i;


# direct methods
.method public constructor <init>(Lp3/a/n1/b0;Lp3/a/n1/b0$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lp3/a/n1/b0$b;->b:Lp3/a/n1/b0$i;

    .line 2
    iget-object p1, p1, Lp3/a/n1/b0;->c:Lp3/a/q;

    .line 3
    invoke-direct {p0, p1}, Lp3/a/n1/z;-><init>(Lp3/a/q;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/b0$b;->b:Lp3/a/n1/b0$i;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, v0, Lp3/a/n1/b0$i;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lp3/a/n1/b0$i;->c:Ljava/util/List;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lp3/a/n1/b0$i;->b:Z

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    iget-object v2, v0, Lp3/a/n1/b0$i;->c:Ljava/util/List;

    .line 10
    iput-object v1, v0, Lp3/a/n1/b0$i;->c:Ljava/util/List;

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 13
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 14
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
