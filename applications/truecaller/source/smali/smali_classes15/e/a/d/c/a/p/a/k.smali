.class public final Le/a/d/c/a/p/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/c0<",
        "Le/a/d/c0/z1/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/a/p/a/h;


# direct methods
.method public constructor <init>(Le/a/d/c/a/p/a/h;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/p/a/k;->a:Le/a/d/c/a/p/a/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Le/a/d/c0/c0;

    .line 2
    iget-object p2, p0, Le/a/d/c/a/p/a/k;->a:Le/a/d/c/a/p/a/h;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPeersUpdate \n update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n tiles "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n calls "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Le/a/d/c/a/p/a/h;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \n tilesToDelete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Le/a/d/c/a/p/a/h;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    instance-of v0, p1, Le/a/d/c0/c0$a;

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    check-cast p1, Le/a/d/c0/c0$a;

    .line 6
    iget-object p1, p1, Le/a/d/c0/c0$a;->a:Ljava/util/Set;

    .line 7
    iget-object v0, p2, Le/a/d/c/a/p/a/h;->j:Lq3/a/p1;

    if-eqz v0, :cond_0

    invoke-static {v0, v6, v1, v6}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    :cond_0
    iput-object v6, p2, Le/a/d/c/a/p/a/h;->j:Lq3/a/p1;

    .line 9
    iget-object v0, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/c/a/p/a/e;->s0()V

    .line 10
    :cond_1
    iget-object v0, p2, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-static {v0, p1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 12
    invoke-virtual {p2}, Le/a/d/c/a/p/a/h;->Jj()V

    .line 13
    invoke-static {v0}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/z1/e;

    invoke-virtual {p2, v0}, Le/a/d/c/a/p/a/h;->Kj(Le/a/d/c0/z1/e;)V

    goto :goto_2

    .line 14
    :cond_2
    iget-object v2, p2, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p2, Le/a/d/c/a/p/a/h;->g:Z

    .line 16
    iget-object v2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/e;

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Le/a/d/c/a/p/a/e;->d0(Z)V

    .line 17
    :cond_3
    iget-object v1, p2, Le/a/d/c/a/p/a/h;->k:Le/a/d/c/a/p/a/d;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Le/a/d/c/a/p/a/d;->Ui()V

    .line 18
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/z1/e;

    .line 19
    invoke-virtual {p2, v1}, Le/a/d/c/a/p/a/h;->Ij(Le/a/d/c0/z1/e;)V

    goto :goto_0

    .line 20
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/z1/e;

    .line 21
    invoke-virtual {p2, v1}, Le/a/d/c/a/p/a/h;->Ij(Le/a/d/c0/z1/e;)V

    goto :goto_1

    .line 22
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "to add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    iget-object v0, p2, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 24
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/p/a/e;

    if-eqz p1, :cond_c

    .line 25
    invoke-interface {p1}, Le/a/d/c/a/p/a/e;->H0()V

    .line 26
    invoke-interface {p1}, Le/a/d/c/a/p/a/e;->C()V

    goto :goto_4

    .line 27
    :cond_7
    instance-of v0, p1, Le/a/d/c0/c0$b;

    if-eqz v0, :cond_c

    check-cast p1, Le/a/d/c0/c0$b;

    .line 28
    iget-object p1, p1, Le/a/d/c0/c0$b;->a:Ljava/util/Set;

    .line 29
    iget-object v0, p2, Le/a/d/c/a/p/a/h;->j:Lq3/a/p1;

    if-eqz v0, :cond_8

    invoke-static {v0, v6, v1, v6}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 30
    :cond_8
    iput-object v6, p2, Le/a/d/c/a/p/a/h;->j:Lq3/a/p1;

    .line 31
    iget-object v0, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/e;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Le/a/d/c/a/p/a/e;->s0()V

    .line 32
    :cond_9
    iget-object v0, p2, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-static {v0, p1}, Ls1/u/i;->b0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 34
    new-instance v3, Le/a/d/c/a/p/a/g;

    invoke-direct {v3, p2, p1, v0, v6}, Le/a/d/c/a/p/a/g;-><init>(Le/a/d/c/a/p/a/h;Ljava/util/Set;Ljava/util/Set;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_4

    .line 35
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/c0/z1/e;

    .line 36
    iget-object v1, p2, Le/a/d/c/a/p/a/h;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v3, Le/a/d/c/a/p/a/f;

    invoke-direct {v3, p2, v0, v6}, Le/a/d/c/a/p/a/f;-><init>(Le/a/d/c/a/p/a/h;Le/a/d/c0/z1/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_3

    .line 38
    :cond_b
    invoke-virtual {p2, p1}, Le/a/d/c/a/p/a/h;->Lj(Ljava/util/Set;)V

    .line 39
    :cond_c
    :goto_4
    iget-object p1, p0, Le/a/d/c/a/p/a/k;->a:Le/a/d/c/a/p/a/h;

    .line 40
    invoke-virtual {p1}, Le/a/d/c/a/p/a/h;->Mj()V

    .line 41
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
