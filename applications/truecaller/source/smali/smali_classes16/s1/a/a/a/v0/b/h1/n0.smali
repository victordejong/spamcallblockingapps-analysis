.class public Ls1/a/a/a/v0/b/h1/n0;
.super Ls1/a/a/a/v0/b/h1/o0;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/b1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/b/h1/n0$a;
    }
.end annotation


# instance fields
.field public final f:Ls1/a/a/a/v0/b/b1;

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Ls1/a/a/a/v0/m/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V
    .locals 7

    move-object v6, p0

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v2, p4

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object v3, p5

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    move-object v4, p6

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v5, p11

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/b/h1/o0;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V

    move v0, p3

    iput v0, v6, Ls1/a/a/a/v0/b/h1/n0;->g:I

    move v0, p7

    iput-boolean v0, v6, Ls1/a/a/a/v0/b/h1/n0;->h:Z

    move v0, p8

    iput-boolean v0, v6, Ls1/a/a/a/v0/b/h1/n0;->i:Z

    move/from16 v0, p9

    iput-boolean v0, v6, Ls1/a/a/a/v0/b/h1/n0;->j:Z

    move-object/from16 v0, p10

    iput-object v0, v6, Ls1/a/a/a/v0/b/h1/n0;->k:Ls1/a/a/a/v0/m/e0;

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, v6

    .line 2
    :goto_0
    iput-object v0, v6, Ls1/a/a/a/v0/b/h1/n0;->f:Ls1/a/a/a/v0/b/b1;

    return-void
.end method


# virtual methods
.method public bridge synthetic B0()Ls1/a/a/a/v0/j/t/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public C0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/n0;->j:Z

    return v0
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public E0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/n0;->i:Z

    return v0
.end method

.method public H0()Ls1/a/a/a/v0/m/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/n0;->k:Ls1/a/a/a/v0/m/e0;

    return-object v0
.end method

.method public K(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/f/e;I)Ls1/a/a/a/v0/b/b1;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object v3, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ls1/a/a/a/v0/b/h1/n0;

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/f1/b;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v6

    const-string v2, "annotations"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/o0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v8

    const-string v2, "type"

    invoke-static {v8, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->U()Z

    move-result v9

    .line 3
    iget-boolean v10, v0, Ls1/a/a/a/v0/b/h1/n0;->i:Z

    .line 4
    iget-boolean v11, v0, Ls1/a/a/a/v0/b/h1/n0;->j:Z

    .line 5
    iget-object v12, v0, Ls1/a/a/a/v0/b/h1/n0;->k:Ls1/a/a/a/v0/m/e0;

    .line 6
    sget-object v13, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v2, "SourceElement.NO_SOURCE"

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, v1

    move/from16 v5, p3

    .line 7
    invoke-direct/range {v2 .. v13}, Ls1/a/a/a/v0/b/h1/n0;-><init>(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/b1;ILs1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/m/e0;ZZZLs1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/r0;)V

    return-object v1
.end method

.method public U()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/b/h1/n0;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->b()Ls1/a/a/a/v0/b/a;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v0

    const-string v1, "(containingDeclaration a\u2026bleMemberDescriptor).kind"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/b$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->a()Ls1/a/a/a/v0/b/b1;

    move-result-object v0

    return-object v0
.end method

.method public a()Ls1/a/a/a/v0/b/b1;
    .locals 1

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/n0;->f:Ls1/a/a/a/v0/b/b1;

    if-ne v0, p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ls1/a/a/a/v0/b/b1;->a()Ls1/a/a/a/v0/b/b1;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->a()Ls1/a/a/a/v0/b/b1;

    move-result-object v0

    return-object v0
.end method

.method public b()Ls1/a/a/a/v0/b/a;
    .locals 2

    .line 2
    invoke-super {p0}, Ls1/a/a/a/v0/b/h1/n;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/b/a;

    return-object v0
.end method

.method public bridge synthetic b()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->b()Ls1/a/a/a/v0/b/a;

    move-result-object v0

    return-object v0
.end method

.method public c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/l;
    .locals 1

    const-string v0, "substitutor"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/d1;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->e(Ls1/a/a/a/v0/b/b1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/b1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->b()Ls1/a/a/a/v0/b/a;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->e()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "containingDeclaration.overriddenDescriptors"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

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
    check-cast v2, Ls1/a/a/a/v0/b/a;

    const-string v3, "it"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v2

    .line 6
    iget v3, p0, Ls1/a/a/a/v0/b/h1/n0;->g:I

    .line 7
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/b1;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/q;->f:Ls1/a/a/a/v0/b/r;

    const-string v1, "DescriptorVisibilities.LOCAL"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/b/h1/n0;->g:I

    return v0
.end method

.method public bridge synthetic v0()Ls1/a/a/a/v0/b/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->a()Ls1/a/a/a/v0/b/b1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w0()Ls1/a/a/a/v0/b/c1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/n0;->a()Ls1/a/a/a/v0/b/b1;

    move-result-object v0

    return-object v0
.end method
