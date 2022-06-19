.class public Le/i/b/z1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/z1/u;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/i/b/z1/u<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/i/b/z1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/u<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;

.field public final c:Le/i/b/z1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/i/b/z1/u;Le/i/b/z1/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/z1/u<",
            "TT;>;",
            "Le/i/b/z1/h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/i/b/z1/t;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/i/b/z1/t;->a:Le/i/b/z1/u;

    .line 4
    iput-object p2, p0, Le/i/b/z1/t;->c:Le/i/b/z1/h;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 9
    iget-object v0, p0, Le/i/b/z1/t;->a:Le/i/b/z1/u;

    invoke-interface {v0}, Le/i/b/z1/u;->a()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Le/i/b/z1/t;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Le/i/b/z1/t;->a:Le/i/b/z1/u;

    invoke-interface {v1, p1}, Le/i/b/z1/u;->a(I)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/z1/t;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Le/i/b/z1/t;->a()I

    move-result v1

    iget-object v2, p0, Le/i/b/z1/t;->c:Le/i/b/z1/h;

    invoke-interface {v2}, Le/i/b/z1/h;->c()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Le/i/b/z1/t;->a:Le/i/b/z1/u;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Le/i/b/z1/u;->a(I)Ljava/util/List;

    .line 4
    :cond_0
    iget-object v1, p0, Le/i/b/z1/t;->a:Le/i/b/z1/u;

    invoke-interface {v1, p1}, Le/i/b/z1/u;->a(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
