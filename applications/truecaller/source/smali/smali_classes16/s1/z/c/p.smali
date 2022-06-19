.class public abstract Ls1/z/c/p;
.super Ls1/z/c/r;
.source "SourceFile"

# interfaces
.implements Ls1/a/h;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Ls1/z/c/r;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b()Ls1/a/b;
    .locals 1

    .line 1
    invoke-static {p0}, Ls1/z/c/d0;->b(Ls1/z/c/p;)Ls1/a/h;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    move-object v0, p0

    check-cast v0, Ls1/z/c/q;

    .line 2
    invoke-virtual {v0}, Ls1/z/c/p;->getGetter()Ls1/a/k$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Ls1/a/b;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGetter()Ls1/a/k$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/z/c/x;->c()Ls1/a/l;

    move-result-object v0

    check-cast v0, Ls1/a/h;

    invoke-interface {v0}, Ls1/a/k;->getGetter()Ls1/a/k$a;

    move-result-object v0

    return-object v0
.end method
