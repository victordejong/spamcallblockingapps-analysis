.class public final Ls1/a/a/a/v0/b/f1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/f1/h;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/f1/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/f1/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegates"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/f1/k;->a:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Ls1/a/a/a/v0/b/f1/h;)V
    .locals 1

    const-string v0, "delegates"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Le/q/f/a/d/a;->h3([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/f1/k;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Y1(Ls1/a/a/a/v0/f/b;)Z
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/k;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    .line 2
    check-cast v0, Ls1/u/o;

    invoke-virtual {v0}, Ls1/u/o;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/f1/h;

    .line 3
    invoke-interface {v1, p1}, Ls1/a/a/a/v0/b/f1/h;->Y1(Ls1/a/a/a/v0/f/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/k;->a:Ljava/util/List;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-interface {v1}, Ls1/a/a/a/v0/b/f1/h;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ls1/a/a/a/v0/b/f1/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/k;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/f1/k$b;->b:Ls1/a/a/a/v0/b/f1/k$b;

    invoke-static {v0, v1}, Ls1/e0/x;->i(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    check-cast v0, Ls1/e0/i;

    .line 2
    new-instance v1, Ls1/e0/i$a;

    invoke-direct {v1, v0}, Ls1/e0/i$a;-><init>(Ls1/e0/i;)V

    return-object v1
.end method

.method public s(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/f1/c;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/k;->a:Ljava/util/List;

    invoke-static {v0}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v0

    new-instance v1, Ls1/a/a/a/v0/b/f1/k$a;

    invoke-direct {v1, p1}, Ls1/a/a/a/v0/b/f1/k$a;-><init>(Ls1/a/a/a/v0/f/b;)V

    invoke-static {v0, v1}, Ls1/e0/x;->l(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    const-string v0, "$this$firstOrNull"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Ls1/e0/h;

    invoke-virtual {p1}, Ls1/e0/h;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 4
    check-cast p1, Ls1/e0/h$a;

    invoke-virtual {p1}, Ls1/e0/h$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    :goto_0
    check-cast p1, Ls1/a/a/a/v0/b/f1/c;

    return-object p1
.end method
