.class public final Lw2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lw2;->b:I

    iput-object p2, p0, Lw2;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lw2;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-eq v0, v2, :cond_9

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 2
    iget-object v0, v0, Le/a/r/z/s;->Z:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->w3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xe8

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 6
    throw v0

    .line 7
    :cond_1
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 8
    iget-object v0, v0, Le/a/r/z/s;->Z:Le/a/u3/g;

    .line 9
    invoke-virtual {v0}, Le/a/u3/g;->I()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 10
    iget-object v0, v0, Le/a/r/z/s;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 12
    invoke-virtual {v0}, Le/a/r/z/s;->Lj()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 14
    invoke-virtual {v0}, Le/a/r/z/s;->Mj()Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 17
    invoke-virtual {v0}, Le/a/r/z/s;->Mj()Ljava/util/List;

    move-result-object v0

    .line 18
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/multisim/SimInfo;

    .line 20
    iget-object v4, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v4, Le/a/r/z/s;

    .line 21
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v5, v3, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    const-string v6, "-1"

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    const-string v6, "simToken"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Le/a/r/z/s;->Y:Le/a/b0/b/f/b;

    invoke-virtual {v4}, Le/a/r/z/s;->Nj()Z

    move-result v4

    invoke-static {v3, v5, v4}, Le/a/n/g0;->e0(Lcom/truecaller/multisim/SimInfo;Le/a/b0/b/f/b;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    if-nez v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_6

    move v1, v2

    .line 23
    :cond_6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 24
    :cond_7
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 25
    iget-object v0, v0, Le/a/r/z/s;->W:Le/a/p5/g;

    .line 26
    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v3, 0x18

    if-lt v0, v3, :cond_8

    move v1, v2

    .line 27
    :cond_8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 28
    :cond_9
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 29
    iget-object v0, v0, Le/a/r/z/s;->V:Le/a/e4/p;

    .line 30
    invoke-interface {v0}, Le/a/e4/p;->h()Z

    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 32
    :cond_a
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 33
    iget-object v0, v0, Le/a/r/z/s;->Z:Le/a/u3/g;

    .line 34
    invoke-virtual {v0}, Le/a/u3/g;->I()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 35
    invoke-virtual {v0}, Le/a/r/z/s;->Lj()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 36
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 37
    invoke-virtual {v0}, Le/a/r/z/s;->Mj()Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/r/z/s;

    .line 40
    invoke-virtual {v0}, Le/a/r/z/s;->Mj()Ljava/util/List;

    move-result-object v0

    .line 41
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    .line 42
    :cond_b
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/multisim/SimInfo;

    .line 43
    iget-object v4, p0, Lw2;->c:Ljava/lang/Object;

    check-cast v4, Le/a/r/z/s;

    .line 44
    iget-object v5, v4, Le/a/r/z/s;->Y:Le/a/b0/b/f/b;

    .line 45
    invoke-virtual {v4}, Le/a/r/z/s;->Nj()Z

    move-result v4

    .line 46
    invoke-static {v3, v5, v4}, Le/a/n/g0;->e0(Lcom/truecaller/multisim/SimInfo;Le/a/b0/b/f/b;Z)Z

    move-result v3

    if-nez v3, :cond_c

    move v0, v1

    goto :goto_4

    :cond_d
    :goto_3
    move v0, v2

    :goto_4
    if-eqz v0, :cond_e

    move v1, v2

    .line 47
    :cond_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
