.class public final Le/a/f4/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/i3/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/x3/c;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/x3/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/i3/b;",
            ">;",
            "Le/a/x3/c;",
            ")V"
        }
    .end annotation

    const-string v0, "configManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forcedUpdateManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/a/h;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/f4/a/h;->b:Le/a/x3/c;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lu3/b0$a;)Lu3/k0;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f4/a/h;->b:Le/a/x3/c;

    invoke-interface {v0}, Le/a/x3/c;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    .line 3
    iget v0, p1, Lu3/k0;->e:I

    const/16 v1, 0x1aa

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le/a/f4/a/h;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i3/b;

    invoke-interface {v0}, Le/a/i3/b;->b()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object p1

    .line 6
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Client needs to be updated!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
