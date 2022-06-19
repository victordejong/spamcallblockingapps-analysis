.class public Le/k/a/c/l0/s/a;
.super Le/k/a/c/l0/r;
.source "SourceFile"


# instance fields
.field public final u:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/k/a/c/g0/s;Le/k/a/c/n0/b;Le/k/a/c/i;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Le/k/a/c/g0/s;->h()Le/k/a/a/r$b;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 2
    invoke-direct/range {v0 .. v8}, Le/k/a/c/l0/r;-><init>(Le/k/a/c/g0/s;Le/k/a/c/n0/b;Le/k/a/c/i;Le/k/a/c/n;Le/k/a/c/j0/h;Le/k/a/c/i;Le/k/a/a/r$b;[Ljava/lang/Class;)V

    .line 3
    iput-object p1, p0, Le/k/a/c/l0/s/a;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/l0/s/a;->u:Ljava/lang/String;

    invoke-virtual {p3, p1}, Le/k/a/c/a0;->F(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Le/k/a/c/g0/s;Le/k/a/c/i;)Le/k/a/c/l0/r;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/g0/c;",
            "Le/k/a/c/g0/s;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/l0/r;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Should not be called on this type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
