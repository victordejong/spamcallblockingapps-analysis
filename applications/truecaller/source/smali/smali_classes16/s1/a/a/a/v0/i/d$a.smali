.class public final Ls1/a/a/a/v0/i/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/b/m<",
        "Ls1/s;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/i/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/i/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v9, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    .line 4
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/f;->d:Ls1/a/a/a/v0/b/f;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 6
    :goto_0
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->J()Z

    move-result v1

    const-string v4, "klass.kind"

    const-string v5, "companion object"

    const/4 v6, 0x0

    if-nez v1, :cond_11

    .line 7
    invoke-virtual {v9, p2, p1, v6}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v1

    const-string v7, "klass.visibility"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, p2}, Ls1/a/a/a/v0/i/d;->v0(Ls1/a/a/a/v0/b/r;Ljava/lang/StringBuilder;)Z

    .line 9
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v1

    sget-object v7, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    if-ne v1, v7, :cond_2

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v1

    sget-object v7, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    if-eq v1, v7, :cond_4

    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v1

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ls1/a/a/a/v0/b/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v1

    sget-object v7, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    if-eq v1, v7, :cond_4

    .line 10
    :cond_3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v1

    const-string v7, "klass.modality"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ls1/a/a/a/v0/i/d;->P(Ls1/a/a/a/v0/b/x;)Ls1/a/a/a/v0/b/y;

    move-result-object v7

    invoke-virtual {v9, v1, p2, v7}, Ls1/a/a/a/v0/i/d;->b0(Ls1/a/a/a/v0/b/y;Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/y;)V

    .line 11
    :cond_4
    invoke-virtual {v9, p1, p2}, Ls1/a/a/a/v0/i/d;->Z(Ls1/a/a/a/v0/b/x;Ljava/lang/StringBuilder;)V

    .line 12
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ls1/a/a/a/v0/i/h;->f:Ls1/a/a/a/v0/i/h;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ls1/a/a/a/v0/b/i;->x()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    const-string v7, "inner"

    invoke-virtual {v9, p2, v1, v7}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ls1/a/a/a/v0/i/h;->h:Ls1/a/a/a/v0/i/h;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->L0()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    const-string v7, "data"

    invoke-virtual {v9, p2, v1, v7}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 14
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ls1/a/a/a/v0/i/h;->i:Ls1/a/a/a/v0/i/h;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->h()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    const-string v7, "inline"

    invoke-virtual {v9, p2, v1, v7}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 15
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Ls1/a/a/a/v0/i/h;->n:Ls1/a/a/a/v0/i/h;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->t0()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    const-string v7, "fun"

    invoke-virtual {v9, p2, v1, v7}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v1, "classifier"

    .line 16
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    instance-of v1, p1, Ls1/a/a/a/v0/b/v0;

    if-eqz v1, :cond_9

    const-string v1, "typealias"

    goto :goto_5

    .line 18
    :cond_9
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->r0()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v5

    goto :goto_5

    .line 19
    :cond_a
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_10

    if-eq v1, v3, :cond_f

    const/4 v7, 0x2

    if-eq v1, v7, :cond_e

    const/4 v7, 0x3

    if-eq v1, v7, :cond_d

    const/4 v7, 0x4

    if-eq v1, v7, :cond_c

    const/4 v7, 0x5

    if-ne v1, v7, :cond_b

    const-string v1, "object"

    goto :goto_5

    .line 20
    :cond_b
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_c
    const-string v1, "annotation class"

    goto :goto_5

    :cond_d
    const-string v1, "enum entry"

    goto :goto_5

    :cond_e
    const-string v1, "enum class"

    goto :goto_5

    :cond_f
    const-string v1, "interface"

    goto :goto_5

    :cond_10
    const-string v1, "class"

    .line 21
    :goto_5
    invoke-virtual {v9, v1}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_11
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->p(Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 23
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->J()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v9, p2}, Ls1/a/a/a/v0/i/d;->m0(Ljava/lang/StringBuilder;)V

    .line 24
    :cond_12
    invoke-virtual {v9, p1, p2, v3}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    goto :goto_6

    .line 25
    :cond_13
    iget-object v1, v9, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 26
    iget-object v7, v1, Ls1/a/a/a/v0/i/j;->F:Ls1/b0/c;

    sget-object v8, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v10, 0x1e

    aget-object v8, v8, v10

    invoke-interface {v7, v1, v8}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 27
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->J()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 28
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_14
    invoke-virtual {v9, p2}, Ls1/a/a/a/v0/i/d;->m0(Ljava/lang/StringBuilder;)V

    .line 30
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v5, "of "

    .line 31
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {v1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    const-string v5, "containingDeclaration.name"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Ls1/a/a/a/v0/i/d;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_15
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    sget-object v5, Ls1/a/a/a/v0/f/g;->b:Ls1/a/a/a/v0/f/e;

    invoke-static {v1, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_18

    .line 34
    :cond_16
    invoke-virtual {v9}, Ls1/a/a/a/v0/i/d;->J()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v9, p2}, Ls1/a/a/a/v0/i/d;->m0(Ljava/lang/StringBuilder;)V

    .line 35
    :cond_17
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    const-string v5, "descriptor.name"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v3}, Ls1/a/a/a/v0/i/d;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_6
    if-eqz v0, :cond_19

    goto/16 :goto_8

    .line 36
    :cond_19
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->u()Ljava/util/List;

    move-result-object v10

    const-string v0, "klass.declaredTypeParameters"

    invoke-static {v10, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v9, v10, p2, v2}, Ls1/a/a/a/v0/i/d;->r0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 38
    invoke-virtual {v9, p1, p2}, Ls1/a/a/a/v0/i/d;->T(Ls1/a/a/a/v0/b/i;Ljava/lang/StringBuilder;)V

    .line 39
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v0

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls1/a/a/a/v0/b/f;->a()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 40
    iget-object v0, v9, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 41
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->i:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v4, 0x7

    aget-object v2, v2, v4

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 42
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->z()Ls1/a/a/a/v0/b/d;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v1, " "

    .line 43
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v9, p2, v0, v6}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 45
    invoke-interface {v0}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v1

    const-string v2, "primaryConstructor.visibility"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v1, p2}, Ls1/a/a/a/v0/i/d;->v0(Ls1/a/a/a/v0/b/r;Ljava/lang/StringBuilder;)Z

    const-string v1, "constructor"

    .line 46
    invoke-virtual {v9, v1}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const-string v2, "primaryConstructor.valueParameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->u0()Z

    move-result v0

    invoke-virtual {v9, v1, v0, p2}, Ls1/a/a/a/v0/i/d;->u0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 48
    :cond_1a
    iget-object v0, v9, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 49
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->w:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v4, 0x15

    aget-object v2, v2, v4

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_7

    .line 50
    :cond_1b
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->E(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_7

    .line 51
    :cond_1c
    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    const-string v0, "klass.typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v0

    const-string p1, "klass.typeConstructor.supertypes"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, v3, :cond_1d

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->x(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_7

    .line 53
    :cond_1d
    invoke-virtual {v9, p2}, Ls1/a/a/a/v0/i/d;->m0(Ljava/lang/StringBuilder;)V

    const-string p1, ": "

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 55
    new-instance v7, Ls1/a/a/a/v0/i/g;

    invoke-direct {v7, v9}, Ls1/a/a/a/v0/i/g;-><init>(Ls1/a/a/a/v0/i/d;)V

    const/16 v8, 0x3c

    const-string v2, ", "

    move-object v1, p2

    invoke-static/range {v0 .. v8}, Ls1/u/i;->M(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/Appendable;

    .line 56
    :cond_1e
    :goto_7
    invoke-virtual {v9, v10, p2}, Ls1/a/a/a/v0/i/d;->w0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 57
    :goto_8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/b/g0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast p1, Ls1/a/a/a/v0/b/h1/t;

    .line 6
    iget-object v1, p1, Ls1/a/a/a/v0/b/h1/t;->f:Ls1/a/a/a/v0/f/b;

    const-string v2, "package"

    .line 7
    invoke-virtual {v0, v1, v2, p2}, Ls1/a/a/a/v0/i/d;->i0(Ls1/a/a/a/v0/f/b;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " in context of "

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p1, p1, Ls1/a/a/a/v0/b/h1/t;->e:Ls1/a/a/a/v0/b/h1/a0;

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, p2, v1}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    .line 12
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public c(Ls1/a/a/a/v0/b/k0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    invoke-static {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->y(Ls1/a/a/a/v0/i/d;Ls1/a/a/a/v0/b/k0;Ljava/lang/StringBuilder;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Ls1/a/a/a/v0/b/m0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setter"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Ls1/a/a/a/v0/i/d$a;->o(Ls1/a/a/a/v0/b/j0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ls1/a/a/a/v0/b/b1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1, p2, v1}, Ls1/a/a/a/v0/i/d;->t0(Ls1/a/a/a/v0/b/b1;ZLjava/lang/StringBuilder;Z)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Ls1/a/a/a/v0/b/j;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p1

    .line 1
    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/StringBuilder;

    const-string v2, "constructorDescriptor"

    .line 2
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "builder"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 3
    iget-object v3, v2, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v3, v1, v0, v4}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 5
    iget-object v4, v3, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 6
    iget-object v5, v4, Ls1/a/a/a/v0/i/j;->o:Ls1/b0/c;

    sget-object v6, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v7, 0xd

    aget-object v7, v6, v7

    invoke-interface {v5, v4, v7}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_0

    .line 7
    move-object v4, v0

    check-cast v4, Ls1/a/a/a/v0/b/h1/i;

    invoke-virtual {v4}, Ls1/a/a/a/v0/b/h1/i;->N()Ls1/a/a/a/v0/b/e;

    move-result-object v4

    const-string v8, "constructor.constructedClass"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v4

    sget-object v8, Ls1/a/a/a/v0/b/y;->b:Ls1/a/a/a/v0/b/y;

    if-eq v4, v8, :cond_1

    :cond_0
    move-object v4, v0

    check-cast v4, Ls1/a/a/a/v0/b/h1/r;

    invoke-virtual {v4}, Ls1/a/a/a/v0/b/h1/r;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v4

    const-string v8, "constructor.visibility"

    invoke-static {v4, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1}, Ls1/a/a/a/v0/i/d;->v0(Ls1/a/a/a/v0/b/r;Ljava/lang/StringBuilder;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v5

    .line 8
    :goto_0
    invoke-virtual {v3, v0, v1}, Ls1/a/a/a/v0/i/d;->Y(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V

    .line 9
    iget-object v8, v3, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 10
    iget-object v9, v8, Ls1/a/a/a/v0/i/j;->O:Ls1/b0/c;

    const/16 v10, 0x27

    aget-object v10, v6, v10

    invoke-interface {v9, v8, v10}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_3

    .line 11
    move-object v8, v0

    check-cast v8, Ls1/a/a/a/v0/b/h1/i;

    .line 12
    iget-boolean v8, v8, Ls1/a/a/a/v0/b/h1/i;->D:Z

    if-eqz v8, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v7

    :goto_2
    if-eqz v4, :cond_4

    const-string v8, "constructor"

    .line 13
    invoke-virtual {v3, v8}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    move-object v8, v0

    check-cast v8, Ls1/a/a/a/v0/b/h1/i;

    .line 15
    invoke-virtual {v8}, Ls1/a/a/a/v0/b/h1/i;->X0()Ls1/a/a/a/v0/b/e;

    move-result-object v9

    const-string v10, "constructor.containingDeclaration"

    .line 16
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Ls1/a/a/a/v0/i/d;->H()Z

    move-result v10

    const-string v11, "constructor.typeParameters"

    if-eqz v10, :cond_6

    if-eqz v4, :cond_5

    const-string v4, " "

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :cond_5
    invoke-virtual {v3, v9, v1, v7}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    .line 20
    move-object v4, v0

    check-cast v4, Ls1/a/a/a/v0/b/h1/r;

    invoke-virtual {v4}, Ls1/a/a/a/v0/b/h1/r;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1, v5}, Ls1/a/a/a/v0/i/d;->r0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 21
    :cond_6
    move-object v4, v0

    check-cast v4, Ls1/a/a/a/v0/b/h1/r;

    invoke-virtual {v4}, Ls1/a/a/a/v0/b/h1/r;->i()Ljava/util/List;

    move-result-object v10

    const-string v12, "constructor.valueParameters"

    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ls1/a/a/a/v0/b/a;->u0()Z

    move-result v0

    invoke-virtual {v3, v10, v0, v1}, Ls1/a/a/a/v0/i/d;->u0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 22
    iget-object v0, v3, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 23
    iget-object v10, v0, Ls1/a/a/a/v0/i/j;->q:Ls1/b0/c;

    const/16 v12, 0xf

    aget-object v6, v6, v12

    invoke-interface {v10, v0, v6}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 24
    iget-boolean v0, v8, Ls1/a/a/a/v0/b/h1/i;->D:Z

    if-nez v0, :cond_a

    .line 25
    invoke-interface {v9}, Ls1/a/a/a/v0/b/e;->z()Ls1/a/a/a/v0/b/d;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 26
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    const-string v6, "primaryConstructor.valueParameters"

    invoke-static {v0, v6}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 27
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ls1/a/a/a/v0/b/b1;

    .line 28
    invoke-interface {v8}, Ls1/a/a/a/v0/b/b1;->U()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {v8}, Ls1/a/a/a/v0/b/b1;->H0()Ls1/a/a/a/v0/m/e0;

    move-result-object v8

    if-nez v8, :cond_8

    move v8, v7

    goto :goto_4

    :cond_8
    move v8, v5

    :goto_4
    if-eqz v8, :cond_7

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 29
    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v7

    if-eqz v0, :cond_a

    const-string v0, " : "

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "this"

    invoke-virtual {v3, v0}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 31
    sget-object v18, Ls1/a/a/a/v0/i/f;->b:Ls1/a/a/a/v0/i/f;

    const/16 v19, 0x18

    const-string v13, ", "

    const-string v14, "("

    const-string v15, ")"

    invoke-static/range {v12 .. v19}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_a
    invoke-virtual {v3}, Ls1/a/a/a/v0/i/d;->H()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 33
    invoke-virtual {v4}, Ls1/a/a/a/v0/b/h1/r;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ls1/a/a/a/v0/i/d;->w0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 34
    :cond_b
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/b/n0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast p1, Ls1/a/a/a/v0/b/h1/m;

    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public h(Ls1/a/a/a/v0/b/w0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ls1/a/a/a/v0/i/d;->p0(Ls1/a/a/a/v0/b/w0;Ljava/lang/StringBuilder;Z)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public i(Ls1/a/a/a/v0/b/v0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, p1, v1}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 5
    move-object v1, p1

    check-cast v1, Ls1/a/a/a/v0/b/h1/f;

    .line 6
    iget-object v2, v1, Ls1/a/a/a/v0/b/h1/f;->g:Ls1/a/a/a/v0/b/r;

    const-string v3, "typeAlias.visibility"

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, p2}, Ls1/a/a/a/v0/i/d;->v0(Ls1/a/a/a/v0/b/r;Ljava/lang/StringBuilder;)Z

    .line 8
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->Z(Ls1/a/a/a/v0/b/x;Ljava/lang/StringBuilder;)V

    const-string v2, "typealias"

    .line 9
    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, p1, p2, v2}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    .line 11
    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/f;->u()Ljava/util/List;

    move-result-object v1

    const-string v2, "typeAlias.declaredTypeParameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Ls1/a/a/a/v0/i/d;->r0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 12
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->T(Ls1/a/a/a/v0/b/i;Ljava/lang/StringBuilder;)V

    const-string v1, " = "

    .line 13
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Ls1/a/a/a/v0/k/b/g0/l;

    invoke-virtual {p1}, Ls1/a/a/a/v0/k/b/g0/l;->G0()Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public j(Ls1/a/a/a/v0/b/l0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getter"

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Ls1/a/a/a/v0/i/d$a;->o(Ls1/a/a/a/v0/b/j0;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public k(Ls1/a/a/a/v0/b/c0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    check-cast p1, Ls1/a/a/a/v0/b/h1/c0;

    .line 6
    iget-object v1, p1, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    const-string v2, "package-fragment"

    .line 7
    invoke-virtual {v0, v1, v2, p2}, Ls1/a/a/a/v0/i/d;->i0(Ls1/a/a/a/v0/f/b;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 8
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " in "

    .line 9
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/h1/c0;->b()Ls1/a/a/a/v0/b/a0;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    .line 11
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public bridge synthetic l(Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d$a;->n(Ls1/a/a/a/v0/b/v;Ljava/lang/StringBuilder;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public m(Ls1/a/a/a/v0/b/a0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, p2, v1}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public n(Ls1/a/a/a/v0/b/v;Ljava/lang/StringBuilder;)V
    .locals 9

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->J()Z

    move-result v1

    const-string v2, "function.typeParameters"

    const/4 v3, 0x1

    if-nez v1, :cond_e

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->I()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p2, p1, v1}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v1

    const-string v4, "function.visibility"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Ls1/a/a/a/v0/i/d;->v0(Ls1/a/a/a/v0/b/r;Ljava/lang/StringBuilder;)Z

    .line 6
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->c0(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V

    .line 7
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->Z(Ls1/a/a/a/v0/b/x;Ljava/lang/StringBuilder;)V

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->h0(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V

    .line 10
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->F()Z

    move-result v1

    const-string v4, "suspend"

    if-eqz v1, :cond_b

    .line 11
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->y0()Z

    move-result v1

    const-string v5, "it"

    const-string v6, "functionDescriptor.overriddenDescriptors"

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/b/v;

    .line 14
    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ls1/a/a/a/v0/b/v;->y0()Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v7

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    if-nez v1, :cond_4

    .line 15
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->C()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    move v1, v7

    .line 16
    :goto_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->Y()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->e()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 18
    :cond_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/a/a/a/v0/b/v;

    .line 19
    invoke-static {v8, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ls1/a/a/a/v0/b/v;->Y()Z

    move-result v8

    if-eqz v8, :cond_7

    move v5, v7

    goto :goto_4

    :cond_8
    :goto_3
    move v5, v3

    :goto_4
    if-nez v5, :cond_9

    .line 20
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->C()Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    move v7, v3

    .line 21
    :cond_a
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->y()Z

    move-result v5

    const-string v6, "tailrec"

    invoke-virtual {v0, p2, v5, v6}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 22
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v5

    invoke-virtual {v0, p2, v5, v4}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 23
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->h()Z

    move-result v4

    const-string v5, "inline"

    invoke-virtual {v0, p2, v4, v5}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "infix"

    .line 24
    invoke-virtual {v0, p2, v7, v4}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "operator"

    .line 25
    invoke-virtual {v0, p2, v1, v4}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_5

    .line 26
    :cond_b
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->H()Z

    move-result v1

    invoke-virtual {v0, p2, v1, v4}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 27
    :goto_5
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->Y(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V

    .line 28
    invoke-virtual {v0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 29
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->K0()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "/*isHiddenToOvercomeSignatureClash*/ "

    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_c
    invoke-interface {p1}, Ls1/a/a/a/v0/b/v;->W()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "fun"

    .line 33
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, v3}, Ls1/a/a/a/v0/i/d;->r0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 35
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->k0(Ls1/a/a/a/v0/b/a;Ljava/lang/StringBuilder;)V

    .line 36
    :cond_e
    invoke-virtual {v0, p1, p2, v3}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    .line 37
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v1

    const-string v3, "function.valueParameters"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->u0()Z

    move-result v3

    invoke-virtual {v0, v1, v3, p2}, Ls1/a/a/a/v0/i/d;->u0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 38
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->l0(Ls1/a/a/a/v0/b/a;Ljava/lang/StringBuilder;)V

    .line 39
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    .line 40
    iget-object v3, v0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 41
    iget-object v4, v3, Ls1/a/a/a/v0/i/j;->l:Ls1/b0/c;

    sget-object v5, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v6, 0xa

    aget-object v6, v5, v6

    invoke-interface {v4, v3, v6}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_11

    .line 42
    iget-object v3, v0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 43
    iget-object v4, v3, Ls1/a/a/a/v0/i/j;->k:Ls1/b0/c;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-interface {v4, v3, v5}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_f

    if-eqz v1, :cond_f

    .line 44
    invoke-static {v1}, Ls1/a/a/a/v0/a/g;->M(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    const-string v3, ": "

    .line 45
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_10

    const-string v1, "[NULL]"

    goto :goto_6

    :cond_10
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_11
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->w0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final o(Ls1/a/a/a/v0/b/j0;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 3
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->G:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/p;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p3, 0x1

    if-eq v0, p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d$a;->n(Ls1/a/a/a/v0/b/v;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    .line 7
    invoke-virtual {v0, p1, p2}, Ls1/a/a/a/v0/i/d;->Z(Ls1/a/a/a/v0/b/x;Ljava/lang/StringBuilder;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object p3, p0, Ls1/a/a/a/v0/i/d$a;->a:Ls1/a/a/a/v0/i/d;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/j0;->o0()Ls1/a/a/a/v0/b/k0;

    move-result-object p1

    const-string v0, "descriptor.correspondingProperty"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p1, p2}, Ls1/a/a/a/v0/i/d;->y(Ls1/a/a/a/v0/i/d;Ls1/a/a/a/v0/b/k0;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method
