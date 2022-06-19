.class public final Le/a/b0/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/truecaller/common/network/util/KnownEndpoints;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "endpoint"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/b0/b/a/b;

    invoke-direct {v0}, Le/a/b0/b/a/b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 3
    invoke-virtual {v0, p1}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 4
    invoke-virtual {v0, p1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;Ls1/z/b/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/truecaller/common/network/util/KnownEndpoints;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/b0/b/a/b;",
            "Ls1/s;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "endpoint"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/b0/b/a/b;

    invoke-direct {v0}, Le/a/b0/b/a/b;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/s;

    .line 3
    :cond_0
    invoke-virtual {v0, p0}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 4
    invoke-virtual {v0, p1}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 5
    invoke-virtual {v0, p1}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
