.class public final Lp3/a/n1/b0$i;
.super Lp3/a/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/f$a<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public volatile b:Z

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/f$a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/b0$i;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lp3/a/n1/b0$i;->a:Lp3/a/f$a;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;Lp3/a/o0;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/b0$i$c;

    invoke-direct {v0, p0, p1, p2}, Lp3/a/n1/b0$i$c;-><init>(Lp3/a/n1/b0$i;Lp3/a/g1;Lp3/a/o0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0$i;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lp3/a/o0;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/b0$i;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/b0$i;->a:Lp3/a/f$a;

    invoke-virtual {v0, p1}, Lp3/a/f$a;->b(Lp3/a/o0;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lp3/a/n1/b0$i$a;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/b0$i$a;-><init>(Lp3/a/n1/b0$i;Lp3/a/o0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0$i;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/b0$i;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/b0$i;->a:Lp3/a/f$a;

    invoke-virtual {v0, p1}, Lp3/a/f$a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lp3/a/n1/b0$i$b;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/b0$i$b;-><init>(Lp3/a/n1/b0$i;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0$i;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/b0$i;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/b0$i;->a:Lp3/a/f$a;

    invoke-virtual {v0}, Lp3/a/f$a;->d()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lp3/a/n1/b0$i$d;

    invoke-direct {v0, p0}, Lp3/a/n1/b0$i$d;-><init>(Lp3/a/n1/b0$i;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0$i;->e(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lp3/a/n1/b0$i;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/a/n1/b0$i;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
