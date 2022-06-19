.class public final Ls1/a/a/a/v0/k/b/g0/h$b$c;
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
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/b/v0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/h$b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h$b;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$b$c;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$b$c;->b:Ls1/a/a/a/v0/k/b/g0/h$b;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/h$b;->a:Ljava/util/List;

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

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
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 9
    check-cast v3, Ls1/a/a/a/v0/e/r;

    .line 10
    invoke-virtual {v4, v3}, Ls1/a/a/a/v0/k/b/v;->k(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/b/v0;

    move-result-object v3

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method
