.class public final Le/a/h/g/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/m;


# instance fields
.field public final synthetic a:Le/a/h/g/w;


# direct methods
.method public constructor <init>(Le/a/h/g/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/g/r;->a:Le/a/h/g/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "any"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/g/r;->a:Le/a/h/g/w;

    .line 2
    iget-object v1, v0, Le/a/h/g/w;->i:Le/a/r2/f;

    .line 3
    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l0/u/e/b;

    invoke-static {p1}, Ls1/z/c/h0;->c(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/l0/u/e/b;->P1(Ljava/util/Collection;)Le/a/r2/x;

    move-result-object p1

    .line 4
    iget-object v1, p0, Le/a/h/g/r;->a:Le/a/h/g/w;

    .line 5
    iget-object v1, v1, Le/a/h/g/w;->o:Le/a/r2/l;

    .line 6
    invoke-interface {v1}, Le/a/r2/l;->d()Le/a/r2/j;

    move-result-object v1

    new-instance v2, Le/a/h/g/r$a;

    invoke-direct {v2, p0}, Le/a/h/g/r$a;-><init>(Le/a/h/g/r;)V

    invoke-virtual {p1, v1, v2}, Le/a/r2/x;->e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;

    move-result-object p1

    .line 7
    iput-object p1, v0, Le/a/h/g/w;->f:Le/a/r2/a;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "any"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
