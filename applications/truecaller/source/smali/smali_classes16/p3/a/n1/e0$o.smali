.class public Lp3/a/n1/e0$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public final a:Lp3/a/n1/t;

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
.method public constructor <init>(Lp3/a/n1/t;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/e0$o;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lp3/a/n1/e0$o;->a:Lp3/a/n1/t;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/t2$a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/e0$o;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0$o;->a:Lp3/a/n1/t;

    invoke-interface {v0, p1}, Lp3/a/n1/t2;->a(Lp3/a/n1/t2$a;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lp3/a/n1/e0$o$a;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/e0$o$a;-><init>(Lp3/a/n1/e0$o;Lp3/a/n1/t2$a;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0$o;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public b(Lp3/a/o0;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/e0$o$c;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/e0$o$c;-><init>(Lp3/a/n1/e0$o;Lp3/a/o0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0$o;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lp3/a/g1;Lp3/a/o0;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/e0$o$d;

    invoke-direct {v0, p0, p1, p2}, Lp3/a/n1/e0$o$d;-><init>(Lp3/a/n1/e0$o;Lp3/a/g1;Lp3/a/o0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0$o;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/e0$o;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/e0$o;->a:Lp3/a/n1/t;

    invoke-interface {v0}, Lp3/a/n1/t2;->d()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lp3/a/n1/e0$o$b;

    invoke-direct {v0, p0}, Lp3/a/n1/e0$o$b;-><init>(Lp3/a/n1/e0$o;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0$o;->f(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/e0$o$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lp3/a/n1/e0$o$e;-><init>(Lp3/a/n1/e0$o;Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/e0$o;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lp3/a/n1/e0$o;->b:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/a/n1/e0$o;->c:Ljava/util/List;

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
