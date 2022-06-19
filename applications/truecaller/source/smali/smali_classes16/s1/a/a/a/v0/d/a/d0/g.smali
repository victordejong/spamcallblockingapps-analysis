.class public final Ls1/a/a/a/v0/d/a/d0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f0;


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/d0/h;

.field public final b:Ls1/a/a/a/v0/l/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/a<",
            "Ls1/a/a/a/v0/f/b;",
            "Ls1/a/a/a/v0/d/a/d0/n/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/c;)V
    .locals 4

    const-string v0, "components"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/h;

    sget-object v1, Ls1/a/a/a/v0/d/a/d0/m$a;->a:Ls1/a/a/a/v0/d/a/d0/m$a;

    .line 3
    new-instance v2, Ls1/d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ls1/d;-><init>(Ljava/lang/Object;)V

    .line 4
    invoke-direct {v0, p1, v1, v2}, Ls1/a/a/a/v0/d/a/d0/h;-><init>(Ls1/a/a/a/v0/d/a/d0/c;Ls1/a/a/a/v0/d/a/d0/m;Ls1/g;)V

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 5
    iget-object p1, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 7
    invoke-interface {p1}, Ls1/a/a/a/v0/l/m;->d()Ls1/a/a/a/v0/l/a;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/g;->b:Ls1/a/a/a/v0/l/a;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/d0/n/i;",
            ">;"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/g;->c(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/d0/n/i;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/f/b;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/b;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/c0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragments"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/g;->c(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/d0/n/i;

    move-result-object p1

    invoke-static {p2, p1}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/d0/n/i;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->b:Ls1/a/a/a/v0/d/a/p;

    .line 4
    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/a/p;->a(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/f0/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/g;->b:Ls1/a/a/a/v0/l/a;

    new-instance v2, Ls1/a/a/a/v0/d/a/d0/g$a;

    invoke-direct {v2, p0, v0}, Ls1/a/a/a/v0/d/a/d0/g$a;-><init>(Ls1/a/a/a/v0/d/a/d0/g;Ls1/a/a/a/v0/d/a/f0/t;)V

    check-cast v1, Ls1/a/a/a/v0/l/e$d;

    invoke-virtual {v1, p1, v2}, Ls1/a/a/a/v0/l/e$d;->c(Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/d0/n/i;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Ls1/a/a/a/v0/f/b;Ls1/z/b/l;)Ljava/util/Collection;
    .locals 1

    const-string v0, "fqName"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/d/a/d0/g;->c(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/d0/n/i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/i;->i:Ls1/a/a/a/v0/l/i;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object p1
.end method
