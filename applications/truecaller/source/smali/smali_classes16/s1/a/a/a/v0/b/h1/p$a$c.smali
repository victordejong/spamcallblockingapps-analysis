.class public Ls1/a/a/a/v0/b/h1/p$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/p$a;-><init>(Ls1/a/a/a/v0/b/h1/p;Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "Ls1/a/a/a/v0/b/k;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/p$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/p$a;Ls1/a/a/a/v0/b/h1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/p$a$c;->a:Ls1/a/a/a/v0/b/h1/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/p$a$c;->a:Ls1/a/a/a/v0/b/h1/p$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v2, v0, Ls1/a/a/a/v0/b/h1/p$a;->e:Ls1/a/a/a/v0/b/h1/p;

    .line 5
    iget-object v2, v2, Ls1/a/a/a/v0/b/h1/p;->j:Ls1/a/a/a/v0/l/i;

    .line 6
    invoke-interface {v2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/f/e;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 7
    iget-object v5, v0, Ls1/a/a/a/v0/b/h1/p$a;->b:Ls1/a/a/a/v0/l/g;

    check-cast v5, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_1

    .line 8
    invoke-interface {v1, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v5, v0, Ls1/a/a/a/v0/b/h1/p$a;->c:Ls1/a/a/a/v0/l/g;

    check-cast v5, Ls1/a/a/a/v0/l/e$m;

    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/l/e$m;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 10
    invoke-interface {v1, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 11
    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v4

    :cond_1
    const/4 v0, 0x7

    .line 12
    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v4

    :cond_2
    const/4 v0, 0x5

    .line 13
    invoke-static {v0}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    throw v4

    :cond_3
    return-object v1
.end method
