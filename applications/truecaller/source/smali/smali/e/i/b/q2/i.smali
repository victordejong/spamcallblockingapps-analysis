.class public Le/i/b/q2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/i/b/a2/a<",
            "Le/i/b/q2/e;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/i/b/a2/a<",
            "Le/i/b/q2/e;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/q2/i;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Le/i/b/q2/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/i/b/q2/h;"
        }
    .end annotation

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
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Le/i/b/q2/h;

    iget-object v0, v0, Le/i/b/q2/i;->a:Ljava/util/List;

    invoke-direct {v1, p0, v0}, Le/i/b/q2/h;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v1
.end method
