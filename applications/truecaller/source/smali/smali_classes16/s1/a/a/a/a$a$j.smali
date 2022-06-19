.class public final Ls1/a/a/a/a$a$j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/a$a;-><init>(Ls1/a/a/a/a;)V
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
        "Ls1/a/a/a/f0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/a$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v0}, Ls1/a/a/a/a$a;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor.supertypes"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ls1/a/a/a/v0/m/e0;

    .line 5
    new-instance v3, Ls1/a/a/a/f0;

    const-string v4, "kotlinType"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ls1/a/a/a/l;

    invoke-direct {v4, v2, p0}, Ls1/a/a/a/l;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/a$a$j;)V

    invoke-direct {v3, v2, v4}, Ls1/a/a/a/f0;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/z/b/a;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v0}, Ls1/a/a/a/a$a;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->I(Ls1/a/a/a/v0/b/e;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/f0;

    .line 9
    iget-object v4, v4, Ls1/a/a/a/f0;->c:Ls1/a/a/a/v0/m/e0;

    .line 10
    invoke-static {v4}, Ls1/a/a/a/v0/j/g;->c(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/b/e;

    move-result-object v4

    const-string v5, "DescriptorUtils.getClassDescriptorForType(it.type)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v4

    const-string v5, "DescriptorUtils.getClass\u2026ptorForType(it.type).kind"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v5, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    if-eq v4, v5, :cond_4

    sget-object v5, Ls1/a/a/a/v0/b/f;->e:Ls1/a/a/a/v0/b/f;

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v3

    :goto_2
    if-nez v4, :cond_2

    goto :goto_4

    :cond_5
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_6

    .line 12
    new-instance v0, Ls1/a/a/a/f0;

    iget-object v2, p0, Ls1/a/a/a/a$a$j;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v2}, Ls1/a/a/a/a$a;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v2

    invoke-virtual {v2}, Ls1/a/a/a/v0/a/g;->f()Ls1/a/a/a/v0/m/l0;

    move-result-object v2

    const-string v3, "descriptor.builtIns.anyType"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ls1/a/a/a/m;->b:Ls1/a/a/a/m;

    invoke-direct {v0, v2, v3}, Ls1/a/a/a/f0;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/z/b/a;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_6
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->i0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
