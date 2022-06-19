.class public final Ls1/a/a/a/v0/k/b/g0/d$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d;-><init>(Ls1/a/a/a/v0/k/b/l;Ls1/a/a/a/v0/e/c;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/b/r0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/d;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$i;->b:Ls1/a/a/a/v0/k/b/g0/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$i;->b:Ls1/a/a/a/v0/k/b/g0/d;

    .line 2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d;->f:Ls1/a/a/a/v0/b/y;

    sget-object v3, Ls1/a/a/a/v0/b/y;->b:Ls1/a/a/a/v0/b/y;

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v2, v0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 4
    iget-object v2, v2, Ls1/a/a/a/v0/e/c;->r:Ljava/util/List;

    const-string v4, "fqNames"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Integer;

    .line 9
    iget-object v4, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 10
    iget-object v5, v4, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 11
    iget-object v4, v4, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    const-string v6, "index"

    .line 12
    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v3}, Ls1/a/a/a/v0/f/d;->k1(Ls1/a/a/a/v0/e/z/c;I)Ls1/a/a/a/v0/f/a;

    move-result-object v3

    invoke-virtual {v5, v3}, Ls1/a/a/a/v0/k/b/j;->b(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 13
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    sget v2, Ls1/a/a/a/v0/j/v/b;->a:I

    const-string v2, "sealedClass"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/g0/d;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v2

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 17
    new-instance v2, Ls1/a/a/a/v0/j/v/a;

    invoke-direct {v2, v0, v1}, Ls1/a/a/a/v0/j/v/a;-><init>(Ls1/a/a/a/v0/b/e;Ljava/util/LinkedHashSet;)V

    .line 18
    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/g0/d;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v3

    const-string v4, "sealedClass.containingDeclaration"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    instance-of v4, v3, Ls1/a/a/a/v0/b/c0;

    if-eqz v4, :cond_4

    .line 20
    check-cast v3, Ls1/a/a/a/v0/b/c0;

    invoke-interface {v3}, Ls1/a/a/a/v0/b/c0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ls1/a/a/a/v0/j/v/a;->a(Ls1/a/a/a/v0/j/y/i;Z)V

    .line 21
    :cond_4
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/b;->I()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const-string v3, "sealedClass.unsubstitutedInnerClassesScope"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v5}, Ls1/a/a/a/v0/j/v/a;->a(Ls1/a/a/a/v0/j/y/i;Z)V

    :cond_5
    :goto_1
    return-object v1
.end method
