.class public final Ls1/a/a/a/v0/d/a/d0/n/k$j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/k;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/n/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ljava/util/List<",
        "+",
        "Ls1/a/a/a/v0/b/k0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/k;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$j;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$j;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->e:Ls1/a/a/a/v0/l/h;

    .line 6
    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->r(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$j;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    invoke-virtual {v1, p1, v0}, Ls1/a/a/a/v0/d/a/d0/n/k;->m(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)V

    .line 8
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$j;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    invoke-virtual {p1}, Ls1/a/a/a/v0/d/a/d0/n/k;->p()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->m(Ls1/a/a/a/v0/b/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 9
    invoke-static {v0}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$j;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 11
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 12
    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 13
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->r:Ls1/a/a/a/v0/d/a/g0/l;

    .line 14
    invoke-virtual {v1, p1, v0}, Ls1/a/a/a/v0/d/a/g0/l;->a(Ls1/a/a/a/v0/d/a/d0/h;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method
