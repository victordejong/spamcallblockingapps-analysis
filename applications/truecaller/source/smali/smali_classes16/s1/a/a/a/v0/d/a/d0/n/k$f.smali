.class public final Ls1/a/a/a/v0/d/a/d0/n/k$f;
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
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/k;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/k;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$f;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    const-string v0, "name"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/k$f;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->l:Ls1/a/a/a/v0/d/a/d0/n/k;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/k;->d:Ls1/a/a/a/v0/l/g;

    .line 6
    check-cast v0, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/k$f;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 9
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/k;->c:Ls1/a/a/a/v0/l/i;

    .line 10
    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/d/a/d0/n/b;

    invoke-interface {v1, p1}, Ls1/a/a/a/v0/d/a/d0/n/b;->d(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/d/a/f0/q;

    .line 11
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$f;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->s(Ls1/a/a/a/v0/d/a/f0/q;)Ls1/a/a/a/v0/d/a/c0/f;

    move-result-object v1

    .line 12
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$f;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    invoke-virtual {v2, v1}, Ls1/a/a/a/v0/d/a/d0/n/k;->q(Ls1/a/a/a/v0/d/a/c0/f;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/n/k$f;->b:Ls1/a/a/a/v0/d/a/d0/n/k;

    .line 14
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/n/k;->k:Ls1/a/a/a/v0/d/a/d0/h;

    .line 15
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 16
    iget-object v2, v2, Ls1/a/a/a/v0/d/a/d0/c;->g:Ls1/a/a/a/v0/d/a/b0/g;

    .line 17
    check-cast v2, Ls1/a/a/a/v0/d/a/b0/g$a;

    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1
.end method
