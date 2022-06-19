.class public final Ls1/a/a/a/v0/d/a/d0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/h;


# instance fields
.field public final a:Ls1/a/a/a/v0/l/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/h<",
            "Ls1/a/a/a/v0/d/a/f0/a;",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/d/a/d0/h;

.field public final c:Ls1/a/a/a/v0/d/a/f0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/f;->b:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/f;->c:Ls1/a/a/a/v0/d/a/f0/d;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 4
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/f$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/a/d0/f$a;-><init>(Ls1/a/a/a/v0/d/a/d0/f;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->c(Ls1/z/b/l;)Ls1/a/a/a/v0/l/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/f;->a:Ls1/a/a/a/v0/l/h;

    return-void
.end method


# virtual methods
.method public Y1(Ls1/a/a/a/v0/f/b;)Z
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/q/f/a/d/a;->j1(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/b;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/f;->c:Ls1/a/a/a/v0/d/a/f0/d;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/d;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/f;->c:Ls1/a/a/a/v0/d/a/f0/d;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/d;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/f;->c:Ls1/a/a/a/v0/d/a/f0/d;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/d;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/f;->a:Ls1/a/a/a/v0/l/h;

    invoke-static {v0, v1}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 2
    sget-object v1, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    .line 3
    sget-object v2, Ls1/a/a/a/v0/a/k$a;->t:Ls1/a/a/a/v0/f/b;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/f;->c:Ls1/a/a/a/v0/d/a/f0/d;

    .line 5
    iget-object v4, p0, Ls1/a/a/a/v0/d/a/d0/f;->b:Ls1/a/a/a/v0/d/a/d0/h;

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Ls1/a/a/a/v0/d/a/b0/c;->a(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/d/a/f0/d;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ls1/e0/x;->n(Ls1/e0/k;Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ls1/e0/x;->h(Ls1/e0/k;)Ls1/e0/k;

    move-result-object v0

    check-cast v0, Ls1/e0/h;

    .line 9
    new-instance v1, Ls1/e0/h$a;

    invoke-direct {v1, v0}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    return-object v1
.end method

.method public s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/f;->c:Ls1/a/a/a/v0/d/a/f0/d;

    invoke-interface {v0, p1}, Ls1/a/a/a/v0/d/a/f0/d;->s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/f0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/f;->a:Ls1/a/a/a/v0/l/h;

    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/f1/c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/f;->c:Ls1/a/a/a/v0/d/a/f0/d;

    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/f;->b:Ls1/a/a/a/v0/d/a/d0/h;

    invoke-virtual {v0, p1, v1, v2}, Ls1/a/a/a/v0/d/a/b0/c;->a(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/d/a/f0/d;Ls1/a/a/a/v0/d/a/d0/h;)Ls1/a/a/a/v0/b/f1/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method
