.class public Le/a/r2/z;
.super Le/a/r2/x;
.source "SourceFile"

# interfaces
.implements Le/a/r2/u;
.implements Le/a/r2/a;
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r2/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/r2/x<",
        "TR;>;",
        "Le/a/r2/u<",
        "TT;TR;>;",
        "Le/a/r2/a;",
        "Le/a/r2/d0<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;

.field public final b:Le/a/r2/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/u<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field public c:Le/a/r2/j;

.field public volatile d:Le/a/r2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/d0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r2/w;Le/a/r2/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/w;",
            "Le/a/r2/u<",
            "TT;TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/r2/x;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/r2/z;->c:Le/a/r2/j;

    .line 3
    iput-object v0, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    .line 4
    iput-object p1, p0, Le/a/r2/z;->a:Le/a/r2/w;

    .line 5
    iput-object p2, p0, Le/a/r2/z;->b:Le/a/r2/u;

    return-void
.end method


# virtual methods
.method public a()Le/a/r2/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/z;->b:Le/a/r2/u;

    invoke-interface {v0}, Le/a/r2/p;->a()Le/a/r2/d;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/r2/z$a;

    invoke-direct {v0}, Le/a/r2/z$a;-><init>()V

    .line 2
    iput-object v0, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    .line 3
    iget-object v1, p0, Le/a/r2/z;->a:Le/a/r2/w;

    invoke-interface {v1, p0}, Le/a/r2/w;->a(Le/a/r2/u;)V

    .line 4
    monitor-enter v0

    .line 5
    :goto_0
    :try_start_0
    iget-object v1, v0, Le/a/r2/z$a;->a:Ljava/lang/Object;

    sget-object v2, Le/a/r2/z$a;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Le/a/r2/z$a;->a:Ljava/lang/Object;

    .line 8
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Le/a/r2/x<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r2/z;->b:Le/a/r2/u;

    invoke-interface {v0, p1}, Le/a/r2/u;->d(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Le/a/r2/z;->c:Le/a/r2/j;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v2, p0}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    .line 6
    invoke-virtual {p1, v1}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    .line 7
    :cond_1
    :goto_0
    iput-object v0, p0, Le/a/r2/z;->c:Le/a/r2/j;

    return-object v0
.end method

.method public e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Le/a/r2/d0<",
            "TR;>;)",
            "Le/a/r2/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r2/z;->c:Le/a/r2/j;

    .line 2
    iput-object p2, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    .line 3
    iget-object p1, p0, Le/a/r2/z;->a:Le/a/r2/w;

    invoke-interface {p1, p0}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-object p0
.end method

.method public f(Le/a/r2/d0;)Le/a/r2/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/d0<",
            "TR;>;)",
            "Le/a/r2/a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    .line 2
    iget-object p1, p0, Le/a/r2/z;->a:Le/a/r2/w;

    invoke-interface {p1, p0}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-object p0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/z;->a:Le/a/r2/w;

    invoke-interface {v0, p0}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/a/r2/z;->d:Le/a/r2/d0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Le/a/r2/d0;->onResult(Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Le/a/r2/e0;

    invoke-direct {p1}, Le/a/r2/e0;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/z;->b:Le/a/r2/u;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
