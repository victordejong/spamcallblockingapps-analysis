.class public final Ls1/a/a/a/v0/k/b/g0/h$b$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/h$b;-><init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Set<",
        "+",
        "Ls1/a/a/a/v0/f/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/h$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$b$f;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$b$f;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/h$b;->l:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ls1/a/a/a/v0/h/p;

    .line 6
    iget-object v4, v0, Ls1/a/a/a/v0/k/b/g0/h$b;->n:Ls1/a/a/a/v0/k/b/g0/h;

    .line 7
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 8
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 9
    check-cast v3, Ls1/a/a/a/v0/e/i;

    .line 10
    iget v3, v3, Ls1/a/a/a/v0/e/i;->f:I

    .line 11
    invoke-static {v4, v3}, Ls1/a/a/a/v0/f/d;->q1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/e;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$b$f;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/h$b;->n:Ls1/a/a/a/v0/k/b/g0/h;

    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/g0/h;->o()Ljava/util/Set;

    move-result-object v0

    invoke-static {v2, v0}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
