.class public final Le/m/a/h/a/h/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/h/a/h/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/h/r<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/m/a/h/a/h/r;

    .line 1
    invoke-direct {v0}, Le/m/a/h/a/h/r;-><init>()V

    iput-object v0, p0, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)Z
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Le/m/a/h/a/h/r;->c:Z

    if-eqz v2, :cond_0

    .line 2
    monitor-exit v1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Le/m/a/h/a/h/r;->c:Z

    iput-object p1, v0, Le/m/a/h/a/h/r;->e:Ljava/lang/Exception;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    .line 4
    invoke-virtual {p1, v0}, Le/m/a/h/a/h/m;->b(Le/m/a/h/a/h/r;)V

    move p1, v2

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)Z"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, v0, Le/m/a/h/a/h/r;->c:Z

    if-eqz v2, :cond_0

    .line 2
    monitor-exit v1

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Le/m/a/h/a/h/r;->c:Z

    iput-object p1, v0, Le/m/a/h/a/h/r;->d:Ljava/lang/Object;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    .line 4
    invoke-virtual {p1, v0}, Le/m/a/h/a/h/m;->b(Le/m/a/h/a/h/r;)V

    move p1, v2

    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
