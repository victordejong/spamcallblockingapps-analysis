.class public abstract Ls1/a/a/a/v0/d/a/d0/n/s;
.super Ls1/a/a/a/v0/d/a/d0/n/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ls1/a/a/a/v0/d/a/d0/n/k;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/n/k;)V

    return-void
.end method


# virtual methods
.method public m(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public o()Ls1/a/a/a/v0/b/n0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public r(Ls1/a/a/a/v0/d/a/f0/q;Ljava/util/List;Ls1/a/a/a/v0/m/e0;Ljava/util/List;)Ls1/a/a/a/v0/d/a/d0/n/k$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/a/f0/q;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ls1/a/a/a/v0/m/e0;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/b1;",
            ">;)",
            "Ls1/a/a/a/v0/d/a/d0/n/k$a;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "methodTypeParameters"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "returnType"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "valueParameters"

    invoke-static {p4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ls1/a/a/a/v0/d/a/d0/n/k$a;

    sget-object v6, Ls1/u/s;->a:Ls1/u/s;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Ls1/a/a/a/v0/d/a/d0/n/k$a;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/m/e0;Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    return-object p1
.end method
