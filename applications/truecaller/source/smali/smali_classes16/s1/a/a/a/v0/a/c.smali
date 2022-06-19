.class public final Ls1/a/a/a/v0/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ls1/a/a/a/v0/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/c;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/c;->b:Ls1/a/a/a/v0/a/c;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/a/i;->n:Ljava/util/Set;

    sget-object v1, Ls1/a/a/a/v0/a/k;->p:Ls1/a/a/a/v0/a/k;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ls1/a/a/a/v0/a/i;

    const-string v3, "primitiveType"

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v3, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    .line 8
    iget-object v2, v2, Ls1/a/a/a/v0/a/i;->a:Ls1/a/a/a/v0/f/e;

    .line 9
    invoke-virtual {v3, v2}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "BUILT_INS_PACKAGE_FQ_NAM\u2026d(primitiveType.typeName)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->f:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    const-string v2, "StandardNames.FqNames.string.toSafe()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v1, v0}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 13
    sget-object v1, Ls1/a/a/a/v0/a/k$a;->h:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "StandardNames.FqNames._boolean.toSafe()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {v0, v1}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 15
    sget-object v1, Ls1/a/a/a/v0/a/k$a;->q:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "StandardNames.FqNames._enum.toSafe()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v1}, Ls1/u/i;->m0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Ls1/a/a/a/v0/f/b;

    .line 20
    invoke-static {v2}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_1
    sput-object v1, Ls1/a/a/a/v0/a/c;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
