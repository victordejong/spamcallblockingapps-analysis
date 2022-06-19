.class public final Ls1/a/a/a/v0/a/o/b$b;
.super Ls1/a/a/a/v0/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/a/o/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic c:Ls1/a/a/a/v0/a/o/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/o/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/a/o/b;->h:Ls1/a/a/a/v0/l/m;

    .line 3
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/m/b;-><init>(Ls1/a/a/a/v0/l/m;)V

    return-void
.end method


# virtual methods
.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/a/o/b;->j:Ls1/a/a/a/v0/a/o/c;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    new-array v0, v3, [Ls1/a/a/a/v0/f/a;

    .line 4
    sget-object v3, Ls1/a/a/a/v0/a/o/b;->m:Ls1/a/a/a/v0/f/a;

    aput-object v3, v0, v2

    .line 5
    new-instance v2, Ls1/a/a/a/v0/f/a;

    sget-object v3, Ls1/a/a/a/v0/a/k;->c:Ls1/a/a/a/v0/f/b;

    sget-object v4, Ls1/a/a/a/v0/a/o/c;->d:Ls1/a/a/a/v0/a/o/c;

    iget-object v5, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 6
    iget v5, v5, Ls1/a/a/a/v0/a/o/b;->k:I

    .line 7
    invoke-virtual {v4, v5}, Ls1/a/a/a/v0/a/o/c;->a(I)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1
    new-array v0, v3, [Ls1/a/a/a/v0/f/a;

    .line 8
    sget-object v3, Ls1/a/a/a/v0/a/o/b;->m:Ls1/a/a/a/v0/f/a;

    aput-object v3, v0, v2

    .line 9
    new-instance v2, Ls1/a/a/a/v0/f/a;

    sget-object v3, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    sget-object v4, Ls1/a/a/a/v0/a/o/c;->c:Ls1/a/a/a/v0/a/o/c;

    iget-object v5, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 10
    iget v5, v5, Ls1/a/a/a/v0/a/o/b;->k:I

    .line 11
    invoke-virtual {v4, v5}, Ls1/a/a/a/v0/a/o/c;->a(I)Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/a/o/b;->l:Ls1/a/a/a/v0/f/a;

    .line 13
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_3
    sget-object v0, Ls1/a/a/a/v0/a/o/b;->l:Ls1/a/a/a/v0/f/a;

    .line 15
    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 16
    :goto_0
    iget-object v1, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 17
    iget-object v1, v1, Ls1/a/a/a/v0/a/o/b;->i:Ls1/a/a/a/v0/b/c0;

    .line 18
    invoke-interface {v1}, Ls1/a/a/a/v0/b/c0;->b()Ls1/a/a/a/v0/b/a0;

    move-result-object v1

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 21
    check-cast v4, Ls1/a/a/a/v0/f/a;

    .line 22
    invoke-static {v1, v4}, Le/q/f/a/d/a;->o0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/b/e;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 23
    iget-object v4, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 24
    iget-object v4, v4, Ls1/a/a/a/v0/a/o/b;->g:Ljava/util/List;

    .line 25
    invoke-interface {v5}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v6

    const-string v7, "descriptor.typeConstructor"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v4, v6}, Ls1/u/i;->L0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v4

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v4, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 28
    check-cast v7, Ls1/a/a/a/v0/b/w0;

    .line 29
    new-instance v8, Ls1/a/a/a/v0/m/a1;

    invoke-interface {v7}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v7

    invoke-direct {v8, v7}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :cond_4
    sget-object v4, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 31
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v4, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 33
    invoke-static {v4, v5, v6}, Ls1/a/a/a/v0/m/f0;->e(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/e;Ljava/util/List;)Ls1/a/a/a/v0/m/l0;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Built-in class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :cond_6
    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/a/o/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public j()Ls1/a/a/a/v0/b/u0;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/u0$a;->a:Ls1/a/a/a/v0/b/u0$a;

    return-object v0
.end method

.method public n()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/o/b$b;->c:Ls1/a/a/a/v0/a/o/b;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/a/o/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
