.class public Le/i/b/s2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    .line 2
    new-instance v1, Le/i/b/k0;

    invoke-direct {v1, v0}, Le/i/b/k0;-><init>(Le/i/b/x2;)V

    const-class v2, Le/i/b/q2/i;

    .line 3
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v2, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le/i/b/q2/i;

    .line 5
    const-class v1, Le/i/b/s2/l;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Le/i/b/q2/h;

    iget-object v0, v0, Le/i/b/q2/i;->a:Ljava/util/List;

    invoke-direct {v2, v1, v0}, Le/i/b/q2/h;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    const-string v0, "throwable"

    .line 8
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Le/i/b/q2/f;

    const/4 v1, 0x6

    const-string v3, "Assertion failed"

    const-string v4, "onAssertFailed"

    invoke-direct {v0, v1, v3, p0, v4}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 11
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object p0

    invoke-virtual {p0}, Le/i/b/x2;->s()Le/i/b/s2/f;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
