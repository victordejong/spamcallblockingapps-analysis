.class public final Ls1/a/a/a/v0/i/d;
.super Ls1/a/a/a/v0/i/c;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/i/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/i/d$a;
    }
.end annotation


# instance fields
.field public final c:Ls1/g;

.field public final d:Ls1/a/a/a/v0/i/j;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/i/j;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/i/c;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 2
    new-instance p1, Ls1/a/a/a/v0/i/d$c;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/i/d$c;-><init>(Ls1/a/a/a/v0/i/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/i/d;->c:Ls1/g;

    return-void
.end method

.method public static synthetic S(Ls1/a/a/a/v0/i/d;Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x2

    const/4 p3, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    return-void
.end method

.method public static final y(Ls1/a/a/a/v0/i/d;Ls1/a/a/a/v0/b/k0;Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->J()Z

    move-result v0

    const-string v1, "property.typeParameters"

    const/4 v2, 0x1

    if-nez v0, :cond_8

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->I()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_7

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Ls1/a/a/a/v0/i/h;->e:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p2, p1, v0}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k0;->S()Ls1/a/a/a/v0/b/s;

    move-result-object v0

    const-string v4, "it"

    if-eqz v0, :cond_1

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/b/f1/e;->b:Ls1/a/a/a/v0/b/f1/e;

    invoke-virtual {p0, p2, v0, v5}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 6
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k0;->E()Ls1/a/a/a/v0/b/s;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/b/f1/e;->j:Ls1/a/a/a/v0/b/f1/e;

    invoke-virtual {p0, p2, v0, v5}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 7
    :cond_2
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 8
    iget-object v5, v0, Ls1/a/a/a/v0/i/j;->G:Ls1/b0/c;

    sget-object v6, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v7, 0x1f

    aget-object v6, v6, v7

    invoke-interface {v5, v0, v6}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/p;

    .line 9
    sget-object v5, Ls1/a/a/a/v0/i/p;->c:Ls1/a/a/a/v0/i/p;

    if-ne v0, v5, :cond_4

    .line 10
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k0;->getGetter()Ls1/a/a/a/v0/b/l0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/b/f1/e;->e:Ls1/a/a/a/v0/b/f1/e;

    invoke-virtual {p0, p2, v0, v5}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 12
    :cond_3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/b/f1/e;->f:Ls1/a/a/a/v0/b/f1/e;

    invoke-virtual {p0, p2, v0, v5}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    const-string v5, "setter"

    .line 14
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    const-string v5, "setter.valueParameters"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->B0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/b1;

    .line 15
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ls1/a/a/a/v0/b/f1/e;->i:Ls1/a/a/a/v0/b/f1/e;

    invoke-virtual {p0, p2, v0, v4}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 16
    :cond_4
    :goto_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v0

    const-string v4, "property.visibility"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Ls1/a/a/a/v0/i/d;->v0(Ls1/a/a/a/v0/b/r;Ljava/lang/StringBuilder;)Z

    .line 17
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Ls1/a/a/a/v0/i/h;->l:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ls1/a/a/a/v0/b/c1;->M()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    const-string v4, "const"

    invoke-virtual {p0, p2, v0, v4}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->Z(Ls1/a/a/a/v0/b/x;Ljava/lang/StringBuilder;)V

    .line 19
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->c0(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V

    .line 20
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->h0(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V

    .line 21
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Ls1/a/a/a/v0/i/h;->m:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ls1/a/a/a/v0/b/c1;->I0()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v3

    :goto_2
    const-string v4, "lateinit"

    invoke-virtual {p0, p2, v0, v4}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->Y(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V

    .line 23
    :cond_7
    invoke-virtual {p0, p1, p2, v3}, Ls1/a/a/a/v0/i/d;->s0(Ls1/a/a/a/v0/b/c1;Ljava/lang/StringBuilder;Z)V

    .line 24
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v2}, Ls1/a/a/a/v0/i/d;->r0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 25
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->k0(Ls1/a/a/a/v0/b/a;Ljava/lang/StringBuilder;)V

    .line 26
    :cond_8
    invoke-virtual {p0, p1, p2, v2}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    const-string v0, ": "

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    const-string v2, "property.type"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->l0(Ls1/a/a/a/v0/b/a;Ljava/lang/StringBuilder;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->W(Ls1/a/a/a/v0/b/c1;Ljava/lang/StringBuilder;)V

    .line 30
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->w0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "?"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    invoke-static {p2, v0, v1, v2, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {p2, v0, v2, v1}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final B(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public C()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->N:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->U:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public E()Ls1/a/a/a/v0/i/b;
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->b:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/b;

    return-object v0
.end method

.method public F()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->R:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public G()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/i/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->e:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public H()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->z:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->g:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public J()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->f:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public K()Ls1/a/a/a/v0/i/q;
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->C:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/q;

    return-object v0
.end method

.method public L()Ls1/a/a/a/v0/i/c$l;
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->B:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/c$l;

    return-object v0
.end method

.method public M()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->j:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public N()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->v:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final O()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final P(Ls1/a/a/a/v0/b/x;)Ls1/a/a/a/v0/b/y;
    .locals 7

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    sget-object v1, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    sget-object v2, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    sget-object v3, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    instance-of v4, p1, Ls1/a/a/a/v0/b/e;

    if-eqz v4, :cond_1

    .line 2
    check-cast p1, Ls1/a/a/a/v0/b/e;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    return-object v1

    .line 3
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v4

    instance-of v5, v4, Ls1/a/a/a/v0/b/e;

    if-nez v5, :cond_2

    const/4 v4, 0x0

    :cond_2
    check-cast v4, Ls1/a/a/a/v0/b/e;

    if-eqz v4, :cond_7

    .line 4
    instance-of v5, p1, Ls1/a/a/a/v0/b/b;

    if-nez v5, :cond_3

    return-object v3

    .line 5
    :cond_3
    check-cast p1, Ls1/a/a/a/v0/b/b;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v5

    const-string v6, "this.overriddenDescriptors"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    .line 6
    invoke-interface {v4}, Ls1/a/a/a/v0/b/e;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v5

    if-eq v5, v3, :cond_4

    return-object v0

    .line 7
    :cond_4
    invoke-interface {v4}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v4

    if-ne v4, v2, :cond_5

    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v2

    sget-object v4, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 8
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object p1

    if-ne p1, v1, :cond_6

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v3

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    return-object v3
.end method

.method public final Q()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/i/h;->e:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p2, Ls1/a/a/a/v0/m/e0;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 4
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->K:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 6
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->J:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 7
    :goto_0
    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 8
    iget-object v2, v1, Ls1/a/a/a/v0/i/j;->L:Ls1/b0/c;

    sget-object v3, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v4, 0x24

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/z/b/l;

    .line 9
    invoke-interface {p2}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/f1/c;

    .line 10
    invoke-interface {v2}, Ls1/a/a/a/v0/b/f1/c;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 11
    invoke-interface {v2}, Ls1/a/a/a/v0/b/f1/c;->d()Ls1/a/a/a/v0/f/b;

    move-result-object v3

    sget-object v4, Ls1/a/a/a/v0/a/k$a;->x:Ls1/a/a/a/v0/f/b;

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1, v2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    :cond_3
    invoke-virtual {p0, v2, p3}, Ls1/a/a/a/v0/i/d;->r(Ls1/a/a/a/v0/b/f1/c;Ls1/a/a/a/v0/b/f1/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v2, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 15
    iget-object v3, v2, Ls1/a/a/a/v0/i/j;->I:Ls1/b0/c;

    sget-object v4, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    .line 16
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "append(\'\\n\')"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, " "

    .line 17
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final T(Ls1/a/a/a/v0/b/i;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/i;->u()Ljava/util/List;

    move-result-object v0

    const-string v1, "classifier.declaredTypeParameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    const-string v2, "classifier.typeConstructor"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "classifier.typeConstructor.parameters"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/i;->x()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string p1, " /*captured type parameters: "

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ls1/a/a/a/v0/i/d;->q0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p1, "*/"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final U(Ls1/a/a/a/v0/j/t/g;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/j/t/g<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/b;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/j/t/b;

    .line 2
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ls1/a/a/a/v0/i/d$d;

    invoke-direct {v6, p0}, Ls1/a/a/a/v0/i/d$d;-><init>(Ls1/a/a/a/v0/i/d;)V

    const/16 v7, 0x18

    const-string v1, ", "

    const-string v2, "{"

    const-string v3, "}"

    invoke-static/range {v0 .. v7}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/a;

    if-eqz v0, :cond_1

    check-cast p1, Ls1/a/a/a/v0/j/t/a;

    .line 5
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 6
    check-cast p1, Ls1/a/a/a/v0/b/f1/c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Ls1/a/a/a/v0/i/c;->s(Ls1/a/a/a/v0/i/c;Ls1/a/a/a/v0/b/f1/c;Ls1/a/a/a/v0/b/f1/e;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    invoke-static {p1, v0}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/s;

    if-eqz v0, :cond_5

    check-cast p1, Ls1/a/a/a/v0/j/t/s;

    .line 8
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/g;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Ls1/a/a/a/v0/j/t/s$a;

    .line 10
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/s$a$a;

    const-string v1, "::class"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Ls1/a/a/a/v0/j/t/s$a$a;

    .line 11
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/s$a$a;->a:Ls1/a/a/a/v0/m/e0;

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :cond_2
    instance-of v0, p1, Ls1/a/a/a/v0/j/t/s$a$b;

    if-eqz v0, :cond_4

    .line 14
    check-cast p1, Ls1/a/a/a/v0/j/t/s$a$b;

    .line 15
    iget-object v0, p1, Ls1/a/a/a/v0/j/t/s$a$b;->a:Ls1/a/a/a/v0/j/t/f;

    .line 16
    iget-object v0, v0, Ls1/a/a/a/v0/j/t/f;->a:Ls1/a/a/a/v0/f/a;

    .line 17
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classValue.classId.asSingleFqName().asString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p1, p1, Ls1/a/a/a/v0/j/t/s$a$b;->a:Ls1/a/a/a/v0/j/t/f;

    .line 19
    iget p1, p1, Ls1/a/a/a/v0/j/t/f;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "kotlin.Array<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 22
    :cond_5
    invoke-virtual {p1}, Ls1/a/a/a/v0/j/t/g;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final V(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 2
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    instance-of v0, p2, Ls1/a/a/a/v0/m/h1;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 5
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->T:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    move-object v0, p2

    check-cast v0, Ls1/a/a/a/v0/m/h1;

    .line 7
    iget-object v0, v0, Ls1/a/a/a/v0/m/h1;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, p2, Ls1/a/a/a/v0/m/w;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 11
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->V:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    move-object v0, p2

    check-cast v0, Ls1/a/a/a/v0/m/w;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/w;->X0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :goto_0
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/i/d;->n0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 15
    :cond_2
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    const-string v2, "$this$buildPossiblyInnerType"

    .line 16
    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v2

    invoke-interface {v2}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v2

    instance-of v3, v2, Ls1/a/a/a/v0/b/i;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    check-cast v0, Ls1/a/a/a/v0/b/i;

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Le/q/f/a/d/a;->q(Ls1/a/a/a/v0/m/e0;Ls1/a/a/a/v0/b/i;I)Ls1/a/a/a/v0/b/i0;

    move-result-object v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/i/d;->o0(Ls1/a/a/a/v0/m/v0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/i/d;->n0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/i/d;->j0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/i0;)V

    .line 21
    :goto_2
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "?"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "$this$isDefinitelyNotNullType"

    .line 23
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    check-cast p2, Ls1/a/a/a/v0/m/i1;

    instance-of p2, p2, Ls1/a/a/a/v0/m/q;

    if-eqz p2, :cond_6

    const-string p2, "!!"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method public final W(Ls1/a/a/a/v0/b/c1;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->u:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/c1;->B0()Ls1/a/a/a/v0/j/t/g;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, " = "

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "constant"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->U(Ls1/a/a/a/v0/j/t/g;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public final X(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "<b>"

    const-string v1, "</b>"

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final Y(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/i/h;->g:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    if-eq v0, v1, :cond_1

    const-string v0, "/*"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*/ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final Z(Ls1/a/a/a/v0/b/x;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->L()Z

    move-result v0

    const-string v1, "external"

    invoke-virtual {p0, p2, v0, v1}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/i/h;->j:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "expect"

    invoke-virtual {p0, p2, v0, v3}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Ls1/a/a/a/v0/i/h;->k:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->p0()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string p1, "actual"

    invoke-virtual {p0, p2, v1, p1}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public a(Ls1/a/a/a/v0/i/o;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/j;->a(Ls1/a/a/a/v0/i/o;)V

    return-void
.end method

.method public a0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "<i>"

    const-string v1, "</i>"

    .line 2
    invoke-static {v0, p1, v1}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->m:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b0(Ls1/a/a/a/v0/b/y;Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/y;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->p:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, p3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Ls1/a/a/a/v0/i/h;->c:Ls1/a/a/a/v0/i/h;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p1}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public c()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->K:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public final c0(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->y(Ls1/a/a/a/v0/b/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    if-eq v0, v1, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 3
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->A:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/n;

    .line 4
    sget-object v1, Ls1/a/a/a/v0/i/n;->a:Ls1/a/a/a/v0/i/n;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/x;->l()Ls1/a/a/a/v0/b/y;

    move-result-object v0

    const-string v1, "callable.modality"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->P(Ls1/a/a/a/v0/b/x;)Ls1/a/a/a/v0/b/y;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Ls1/a/a/a/v0/i/d;->b0(Ls1/a/a/a/v0/b/y;Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/y;)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    invoke-virtual {v0}, Ls1/a/a/a/v0/i/j;->d()Z

    move-result v0

    return v0
.end method

.method public final d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p3}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public e(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Ls1/a/a/a/v0/i/j;->K:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object p1

    const-string v0, "descriptor.name"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Ls1/a/a/a/v0/i/d;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public f(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ls1/a/a/a/v0/i/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/j;->f(Ljava/util/Set;)V

    return-void
.end method

.method public final f0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object v0

    instance-of v1, v0, Ls1/a/a/a/v0/m/a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ls1/a/a/a/v0/m/a;

    if-eqz v0, :cond_4

    .line 2
    iget-object p2, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 3
    iget-object v1, p2, Ls1/a/a/a/v0/i/j;->Q:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x29

    aget-object v3, v2, v3

    invoke-interface {v1, p2, v3}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, v0, Ls1/a/a/a/v0/m/a;->b:Ls1/a/a/a/v0/m/l0;

    .line 5
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->g0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p2, v0, Ls1/a/a/a/v0/m/a;->c:Ls1/a/a/a/v0/m/l0;

    .line 7
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->g0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    .line 8
    iget-object p2, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 9
    iget-object v1, p2, Ls1/a/a/a/v0/i/j;->P:Ls1/b0/c;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-interface {v1, p2, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 10
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object p2

    sget-object v1, Ls1/a/a/a/v0/i/q;->b:Ls1/a/a/a/v0/i/q;

    if-ne p2, v1, :cond_2

    const-string p2, "<font color=\"808080\"><i>"

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p2, " /* = "

    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object p2, v0, Ls1/a/a/a/v0/m/a;->b:Ls1/a/a/a/v0/m/l0;

    .line 14
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->g0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    const-string p2, " */"

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object p2

    if-ne p2, v1, :cond_3

    const-string p2, "</i></font>"

    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    return-void

    .line 18
    :cond_4
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->g0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    return-void
.end method

.method public g(Z)V
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->h:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final g0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V
    .locals 13

    .line 1
    instance-of v0, p2, Ls1/a/a/a/v0/m/k1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ls1/a/a/a/v0/m/k1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/k1;->T0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "<Not computed yet>"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 3
    :cond_0
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->R0()Ls1/a/a/a/v0/m/i1;

    move-result-object p2

    .line 4
    instance-of v0, p2, Ls1/a/a/a/v0/m/y;

    if-eqz v0, :cond_1

    check-cast p2, Ls1/a/a/a/v0/m/y;

    invoke-virtual {p2, p0, p0}, Ls1/a/a/a/v0/m/y;->W0(Ls1/a/a/a/v0/i/c;Ls1/a/a/a/v0/i/i;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 5
    :cond_1
    instance-of v0, p2, Ls1/a/a/a/v0/m/l0;

    if-eqz v0, :cond_21

    check-cast p2, Ls1/a/a/a/v0/m/l0;

    .line 6
    sget-object v0, Ls1/a/a/a/v0/m/f1;->b:Ls1/a/a/a/v0/m/l0;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "???"

    if-nez v0, :cond_20

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    sget-object v4, Ls1/a/a/a/v0/m/f1;->a:Ls1/a/a/a/v0/m/l0;

    invoke-virtual {v4}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v4

    if-ne v3, v4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-eqz v3, :cond_3

    goto/16 :goto_e

    .line 8
    :cond_3
    sget-object v3, Ls1/a/a/a/v0/m/x;->a:Ls1/a/a/a/v0/b/a0;

    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v3

    instance-of v3, v3, Ls1/a/a/a/v0/m/x$f;

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 10
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 11
    iget-object v3, v0, Ls1/a/a/a/v0/i/j;->t:Ls1/b0/c;

    sget-object v5, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v6, 0x12

    aget-object v5, v5, v6

    invoke-interface {v3, v0, v5}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 13
    :cond_5
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.ErrorUtils.UninferredParameterTypeConstructor"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/m/x$f;

    .line 14
    invoke-static {v2}, Ls1/a/a/a/v0/m/x$f;->f(I)V

    throw v4

    .line 15
    :cond_6
    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->V(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    goto/16 :goto_f

    .line 17
    :cond_7
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/i/d;->y0(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 19
    iget-object v3, p0, Ls1/a/a/a/v0/i/d;->c:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls1/a/a/a/v0/i/d;

    const/4 v5, 0x2

    .line 20
    invoke-static {v3, p1, p2, v4, v5}, Ls1/a/a/a/v0/i/d;->S(Ls1/a/a/a/v0/i/d;Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;I)V

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v3, v1, :cond_8

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v0

    .line 22
    :goto_2
    invoke-static {p2}, Ls1/a/a/a/v0/a/f;->h(Ls1/a/a/a/v0/m/e0;)Z

    move-result v5

    .line 23
    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v6

    .line 24
    invoke-static {p2}, Ls1/a/a/a/v0/a/f;->d(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object v7

    if-nez v6, :cond_a

    if-eqz v3, :cond_9

    if-eqz v7, :cond_9

    goto :goto_3

    :cond_9
    move v8, v0

    goto :goto_4

    :cond_a
    :goto_3
    move v8, v2

    :goto_4
    const-string v9, "("

    if-eqz v8, :cond_f

    if-eqz v5, :cond_b

    const/16 v3, 0x28

    .line 25
    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_b
    if-eqz v3, :cond_e

    const-string v1, "$this$last"

    .line 26
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_5

    :cond_c
    move v1, v0

    :goto_5
    if-nez v1, :cond_d

    .line 28
    invoke-static {p1}, Ls1/f0/v;->C(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 29
    invoke-static {p1}, Ls1/f0/v;->C(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-eq v1, v3, :cond_e

    .line 30
    invoke-static {p1}, Ls1/f0/v;->C(Ljava/lang/CharSequence;)I

    move-result v1

    const-string v3, "()"

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 31
    :cond_d
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Char sequence is empty."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_e
    :goto_6
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    :goto_7
    const-string v1, "suspend"

    .line 33
    invoke-virtual {p0, p1, v5, v1}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v1, ")"

    if-eqz v7, :cond_17

    .line 34
    invoke-virtual {p0, v7}, Ls1/a/a/a/v0/i/d;->y0(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v7}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 35
    :cond_10
    invoke-static {v7}, Ls1/a/a/a/v0/a/f;->h(Ls1/a/a/a/v0/m/e0;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v7}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v3

    invoke-interface {v3}, Ls1/a/a/a/v0/b/f1/h;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    move v3, v0

    goto :goto_9

    :cond_12
    :goto_8
    move v3, v2

    :goto_9
    if-eqz v3, :cond_14

    :cond_13
    move v3, v2

    goto :goto_a

    :cond_14
    move v3, v0

    :goto_a
    if-eqz v3, :cond_15

    .line 36
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_15
    invoke-virtual {p0, p1, v7}, Ls1/a/a/a/v0/i/d;->f0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    if-eqz v3, :cond_16

    .line 38
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v3, "."

    .line 39
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_17
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {p2}, Ls1/a/a/a/v0/a/f;->f(Ls1/a/a/a/v0/m/e0;)Ljava/util/List;

    move-result-object v3

    .line 42
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls1/a/a/a/v0/m/y0;

    if-lez v5, :cond_18

    const-string v9, ", "

    .line 43
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_18
    iget-object v9, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 45
    iget-object v10, v9, Ls1/a/a/a/v0/i/j;->S:Ls1/b0/c;

    sget-object v11, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v12, 0x2b

    aget-object v11, v11, v12

    invoke-interface {v10, v9, v11}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 46
    invoke-interface {v7}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v9

    const-string v10, "typeProjection.type"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Ls1/a/a/a/v0/a/f;->b(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/f/e;

    move-result-object v9

    goto :goto_c

    :cond_19
    move-object v9, v4

    :goto_c
    if-eqz v9, :cond_1a

    .line 47
    invoke-virtual {p0, v9, v0}, Ls1/a/a/a/v0/i/d;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    .line 48
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_1a
    invoke-virtual {p0, v7}, Ls1/a/a/a/v0/i/d;->x(Ls1/a/a/a/v0/m/y0;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_1b
    const-string v0, ") "

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1d

    if-ne v0, v2, :cond_1c

    const-string v0, "&rarr;"

    goto :goto_d

    .line 52
    :cond_1c
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 53
    :cond_1d
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-static {p2}, Ls1/a/a/a/v0/a/f;->e(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->f0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    if-eqz v8, :cond_1e

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    if-eqz v6, :cond_21

    const-string p2, "?"

    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 58
    :cond_1f
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->V(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    goto :goto_f

    .line 59
    :cond_20
    :goto_e
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    :goto_f
    return-void
.end method

.method public h(Z)V
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->v:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final h0(Ls1/a/a/a/v0/b/b;Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/i/h;->d:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 4
    iget-object v2, v0, Ls1/a/a/a/v0/i/j;->A:Ls1/b0/c;

    sget-object v3, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/n;

    .line 5
    sget-object v2, Ls1/a/a/a/v0/i/n;->b:Ls1/a/a/a/v0/i/n;

    if-eq v0, v2, :cond_1

    const-string v0, "override"

    .line 6
    invoke-virtual {p0, p2, v1, v0}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "*/ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public i(Z)V
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->f:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final i0(Ls1/a/a/a/v0/f/b;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object p1

    const-string p2, "fqName.toUnsafe()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->u(Ls1/a/a/a/v0/f/c;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, " "

    .line 4
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/j;->j(Z)V

    return-void
.end method

.method public final j0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/i0;)V
    .locals 2

    .line 1
    iget-object v0, p2, Ls1/a/a/a/v0/b/i0;->c:Ls1/a/a/a/v0/b/i0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/i/d;->j0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/i0;)V

    const/16 v0, 0x2e

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p2, Ls1/a/a/a/v0/b/i0;->a:Ls1/a/a/a/v0/b/i;

    .line 5
    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    const-string v1, "possiblyInnerType.classifierDescriptor.name"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ls1/a/a/a/v0/i/d;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p2, Ls1/a/a/a/v0/b/i0;->a:Ls1/a/a/a/v0/b/i;

    .line 7
    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    const-string v1, "possiblyInnerType.classi\u2026escriptor.typeConstructor"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/i/d;->o0(Ls1/a/a/a/v0/m/v0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :goto_0
    iget-object p2, p2, Ls1/a/a/a/v0/b/i0;->b:Ljava/util/List;

    .line 9
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/i/d;->n0(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public k(Z)V
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/j;->k(Z)V

    return-void
.end method

.method public final k0(Ls1/a/a/a/v0/b/a;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object v0, Ls1/a/a/a/v0/b/f1/e;->g:Ls1/a/a/a/v0/b/f1/e;

    invoke-virtual {p0, p2, p1, v0}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->y0(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public l(Z)V
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->E:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final l0(Ls1/a/a/a/v0/b/a;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->E:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->n0()Ls1/a/a/a/v0/b/n0;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, " on "

    .line 4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public m(Ls1/a/a/a/v0/i/q;)V
    .locals 4

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Ls1/a/a/a/v0/i/j;->C:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final m0(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public n(Ls1/a/a/a/v0/i/a;)V
    .locals 4

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Ls1/a/a/a/v0/i/j;->M:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public n0(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "typeArguments"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, v0, p1}, Ls1/a/a/a/v0/i/d;->z(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public o(Ls1/a/a/a/v0/i/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/j;->o(Ls1/a/a/a/v0/i/b;)V

    return-void
.end method

.method public o0(Ls1/a/a/a/v0/m/v0;)Ljava/lang/String;
    .locals 2

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/b/w0;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Ls1/a/a/a/v0/b/v0;

    if-eqz v1, :cond_3

    :goto_0
    const-string p1, "klass"

    .line 3
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Ls1/a/a/a/v0/m/x;->j(Ls1/a/a/a/v0/b/k;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->E()Ls1/a/a/a/v0/i/b;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Ls1/a/a/a/v0/i/b;->a(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/i/c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    const-string p1, "Unexpected classifier: "

    .line 8
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Z)V
    .locals 4

    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 1
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->F:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    return-void
.end method

.method public final p0(Ls1/a/a/a/v0/b/w0;Ljava/lang/StringBuilder;Z)V
    .locals 8

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->j()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->w()Z

    move-result v0

    const-string v1, "reified"

    invoke-virtual {p0, p2, v0, v1}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    .line 6
    iget-object v0, v0, Ls1/a/a/a/v0/m/j1;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0, p2, v1, v0}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p2, p1, v0}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    .line 10
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v4, "upperBound"

    const-string v5, " : "

    const/16 v6, 0x83

    if-le v1, v3, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    if-ne v1, v3, :cond_6

    .line 11
    :cond_4
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    if-eqz p1, :cond_5

    .line 12
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->F(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 13
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 14
    :cond_5
    invoke-static {v6}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v0

    :cond_6
    if-eqz p3, :cond_a

    .line 15
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/m/e0;

    if-eqz v1, :cond_9

    .line 16
    invoke-static {v1}, Ls1/a/a/a/v0/a/g;->F(Ls1/a/a/a/v0/m/e0;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    .line 17
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v3, " & "

    .line 18
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    :goto_2
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v2

    goto :goto_1

    .line 20
    :cond_9
    invoke-static {v6}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v0

    :cond_a
    :goto_3
    if-eqz p3, :cond_b

    .line 21
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    return-void
.end method

.method public q(Ls1/a/a/a/v0/b/k;)Ljava/lang/String;
    .locals 6

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ls1/a/a/a/v0/i/d$a;

    invoke-direct {v1, p0}, Ls1/a/a/a/v0/i/d$a;-><init>(Ls1/a/a/a/v0/i/d;)V

    invoke-interface {p1, v1, v0}, Ls1/a/a/a/v0/b/k;->d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 4
    iget-object v2, v1, Ls1/a/a/a/v0/i/j;->c:Ls1/b0/c;

    sget-object v3, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-interface {v2, v1, v4}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    instance-of v1, p1, Ls1/a/a/a/v0/b/c0;

    if-nez v1, :cond_3

    instance-of v1, p1, Ls1/a/a/a/v0/b/g0;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    instance-of v1, p1, Ls1/a/a/a/v0/b/a0;

    if-eqz v1, :cond_1

    const-string p1, " is a module"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    instance-of v2, v1, Ls1/a/a/a/v0/b/a0;

    if-nez v2, :cond_3

    const-string v2, " "

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "defined in"

    invoke-virtual {p0, v4}, Ls1/a/a/a/v0/i/d;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {v1}, Ls1/a/a/a/v0/j/g;->g(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v2

    const-string v4, "DescriptorUtils.getFqName(containingDeclaration)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ls1/a/a/a/v0/f/c;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v2, "root package"

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Ls1/a/a/a/v0/i/d;->u(Ls1/a/a/a/v0/f/c;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 14
    iget-object v4, v2, Ls1/a/a/a/v0/i/j;->d:Ls1/b0/c;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    invoke-interface {v4, v2, v3}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    instance-of v1, v1, Ls1/a/a/a/v0/b/c0;

    if-eqz v1, :cond_3

    .line 16
    instance-of v1, p1, Ls1/a/a/a/v0/b/n;

    if-eqz v1, :cond_3

    .line 17
    check-cast p1, Ls1/a/a/a/v0/b/n;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object p1

    const-string v1, "descriptor.source"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/b/r0;->b()Ls1/a/a/a/v0/b/s0;

    move-result-object p1

    const-string v1, "descriptor.source.containingFile"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final q0(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/w0;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Ls1/a/a/a/v0/i/d;->p0(Ls1/a/a/a/v0/b/w0;Ljava/lang/StringBuilder;Z)V

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Ls1/a/a/a/v0/b/f1/c;Ls1/a/a/a/v0/b/f1/e;)Ljava/lang/String;
    .locals 10

    const-string v0, "annotation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object p2, p2, Ls1/a/a/a/v0/b/f1/e;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/c;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p2

    .line 7
    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 9
    invoke-virtual {v1}, Ls1/a/a/a/v0/i/j;->q()Ls1/a/a/a/v0/i/a;

    move-result-object v1

    .line 10
    iget-boolean v1, v1, Ls1/a/a/a/v0/i/a;->a:Z

    if-eqz v1, :cond_d

    .line 11
    invoke-interface {p1}, Ls1/a/a/a/v0/b/f1/c;->b()Ljava/util/Map;

    move-result-object v1

    .line 12
    iget-object v2, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 13
    iget-object v3, v2, Ls1/a/a/a/v0/i/j;->H:Ls1/b0/c;

    sget-object v4, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v5, 0x20

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 14
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->e(Ls1/a/a/a/v0/b/f1/c;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v3

    :goto_0
    const-string v2, "it"

    const/16 v4, 0xa

    if-eqz p1, :cond_5

    .line 15
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->z()Ls1/a/a/a/v0/b/d;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ls1/a/a/a/v0/b/b1;

    .line 18
    invoke-interface {v6}, Ls1/a/a/a/v0/b/b1;->U()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {p1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 21
    check-cast v5, Ls1/a/a/a/v0/b/b1;

    .line 22
    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v3, p1

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_3

    .line 23
    :cond_6
    sget-object v3, Ls1/u/s;->a:Ls1/u/s;

    .line 24
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ls1/a/a/a/v0/f/e;

    .line 26
    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 27
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 29
    check-cast v5, Ls1/a/a/a/v0/f/e;

    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ..."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 31
    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 34
    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls1/a/a/a/v0/f/e;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/j/t/g;

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0, v4}, Ls1/a/a/a/v0/i/d;->U(Ls1/a/a/a/v0/j/t/g;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_a
    const-string v4, "..."

    :goto_7
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 36
    :cond_b
    invoke-static {v2, v1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->E0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 37
    iget-object p1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 38
    invoke-virtual {p1}, Ls1/a/a/a/v0/i/j;->q()Ls1/a/a/a/v0/i/a;

    move-result-object p1

    .line 39
    iget-boolean p1, p1, Ls1/a/a/a/v0/i/a;->b:Z

    if-nez p1, :cond_c

    .line 40
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_d

    :cond_c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const-string v3, ", "

    const-string v4, "("

    const-string v5, ")"

    move-object v2, v0

    .line 41
    invoke-static/range {v1 .. v9}, Ls1/u/i;->M(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/Appendable;

    .line 42
    :cond_d
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->Z1(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {p2}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    instance-of p1, p1, Ls1/a/a/a/v0/b/b0$b;

    if-eqz p1, :cond_f

    :cond_e
    const-string p1, " /* annotation class not found */"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final r0(Ljava/util/List;Ljava/lang/StringBuilder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0, p2, p1}, Ls1/a/a/a/v0/i/d;->q0(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p1, " "

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public final s0(Ls1/a/a/a/v0/b/c1;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    instance-of p3, p1, Ls1/a/a/a/v0/b/b1;

    if-nez p3, :cond_2

    .line 2
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/c1;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "var"

    goto :goto_0

    :cond_1
    const-string p1, "val"

    :goto_0
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method public t(Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/a/g;)Ljava/lang/String;
    .locals 12

    const-string v0, "lowerRendered"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperRendered"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/i/d;->A(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x21

    const/16 v2, 0x28

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    const-string v0, "("

    .line 2
    invoke-static {p2, v0, p3, v3}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1, v1}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->E()Ls1/a/a/a/v0/i/b;

    move-result-object v0

    .line 6
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->I:Ls1/a/a/a/v0/f/b;

    invoke-virtual {p3, v4}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    const-string v1, "builtIns.collection"

    .line 7
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4, p0}, Ls1/a/a/a/v0/i/b;->a(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/i/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Collection"

    invoke-static {v0, v1, v5, v3}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mutable"

    .line 8
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move-object v10, v0

    .line 10
    invoke-virtual/range {v6 .. v11}, Ls1/a/a/a/v0/i/d;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    return-object v4

    :cond_2
    const-string v4, "MutableMap.MutableEntry"

    .line 11
    invoke-static {v0, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "Map.Entry"

    .line 12
    invoke-static {v0, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "(Mutable)Map.(Mutable)Entry"

    .line 13
    invoke-static {v0, v4}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    .line 14
    invoke-virtual/range {v6 .. v11}, Ls1/a/a/a/v0/i/d;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    .line 15
    :cond_3
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->E()Ls1/a/a/a/v0/i/b;

    move-result-object v0

    const-string v4, "Array"

    .line 16
    invoke-virtual {p3, v4}, Ls1/a/a/a/v0/a/g;->j(Ljava/lang/String;)Ls1/a/a/a/v0/b/e;

    move-result-object p3

    const-string v6, "builtIns.array"

    .line 17
    invoke-static {p3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p3, p0}, Ls1/a/a/a/v0/i/b;->a(Ls1/a/a/a/v0/b/h;Ls1/a/a/a/v0/i/c;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v4, v5, v3}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 18
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v3

    const-string v4, "Array<"

    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v3

    const-string v4, "Array<out "

    invoke-virtual {v3, v4}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 25
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    const-string v3, "Array<(out) "

    invoke-virtual {v0, v3}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    .line 27
    invoke-virtual/range {v4 .. v9}, Ls1/a/a/a/v0/i/d;->x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    return-object p3

    .line 28
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 29
    :cond_5
    invoke-static {v1}, Ls1/a/a/a/v0/a/g;->a(I)V

    throw v5
.end method

.method public final t0(Ls1/a/a/a/v0/b/b1;ZLjava/lang/StringBuilder;Z)V
    .locals 9

    if-eqz p4, :cond_0

    const-string v0, "value-parameter"

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b1;->j()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p3, p1, v0}, Ls1/a/a/a/v0/i/d;->R(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/b/f1/a;Ls1/a/a/a/v0/b/f1/e;)V

    .line 5
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b1;->E0()Z

    move-result v1

    const-string v2, "crossinline"

    invoke-virtual {p0, p3, v1, v2}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 6
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b1;->C0()Z

    move-result v1

    const-string v2, "noinline"

    invoke-virtual {p0, p3, v1, v2}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 7
    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 8
    iget-object v2, v1, Ls1/a/a/a/v0/i/j;->r:Ls1/b0/c;

    sget-object v3, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v4, 0x10

    aget-object v4, v3, v4

    invoke-interface {v2, v1, v4}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b1;->b()Ls1/a/a/a/v0/b/a;

    move-result-object v1

    instance-of v5, v1, Ls1/a/a/a/v0/b/d;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast v0, Ls1/a/a/a/v0/b/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ls1/a/a/a/v0/b/j;->s0()Z

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v4

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 10
    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 11
    iget-object v5, v1, Ls1/a/a/a/v0/i/j;->s:Ls1/b0/c;

    const/16 v6, 0x11

    aget-object v6, v3, v6

    invoke-interface {v5, v1, v6}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v5, "actual"

    .line 12
    invoke-virtual {p0, p3, v1, v5}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 13
    :cond_4
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    const-string v5, "variable.type"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1}, Ls1/a/a/a/v0/b/b1;->H0()Ls1/a/a/a/v0/m/e0;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object v6, v5

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    if-eqz v5, :cond_6

    move v7, v4

    goto :goto_3

    :cond_6
    move v7, v2

    :goto_3
    const-string v8, "vararg"

    .line 15
    invoke-virtual {p0, p3, v7, v8}, Ls1/a/a/a/v0/i/d;->d0(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_7

    if-eqz p4, :cond_8

    .line 16
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->J()Z

    move-result v7

    if-nez v7, :cond_8

    .line 17
    :cond_7
    invoke-virtual {p0, p1, p3, v0}, Ls1/a/a/a/v0/i/d;->s0(Ls1/a/a/a/v0/b/c1;Ljava/lang/StringBuilder;Z)V

    :cond_8
    if-eqz p2, :cond_9

    .line 18
    invoke-virtual {p0, p1, p3, p4}, Ls1/a/a/a/v0/i/d;->e0(Ls1/a/a/a/v0/b/k;Ljava/lang/StringBuilder;Z)V

    const-string p2, ": "

    .line 19
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :cond_9
    invoke-virtual {p0, v6}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0, p1, p3}, Ls1/a/a/a/v0/i/d;->W(Ls1/a/a/a/v0/b/c1;Ljava/lang/StringBuilder;)V

    .line 22
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->M()Z

    move-result p2

    if-eqz p2, :cond_a

    if-eqz v5, :cond_a

    const-string p2, " /*"

    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "*/"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_a
    iget-object p2, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 25
    iget-object p4, p2, Ls1/a/a/a/v0/i/j;->y:Ls1/b0/c;

    const/16 v0, 0x17

    aget-object v1, v3, v0

    invoke-interface {p4, p2, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/z/b/l;

    if-eqz p2, :cond_c

    .line 26
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->d()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b1;->U()Z

    move-result p2

    goto :goto_4

    :cond_b
    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->a(Ls1/a/a/a/v0/b/b1;)Z

    move-result p2

    :goto_4
    if-eqz p2, :cond_c

    move v2, v4

    :cond_c
    if-eqz v2, :cond_d

    const-string p2, " = "

    .line 27
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 28
    iget-object p4, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 29
    iget-object v1, p4, Ls1/a/a/a/v0/i/j;->y:Ls1/b0/c;

    aget-object v0, v3, v0

    invoke-interface {v1, p4, v0}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ls1/z/b/l;

    .line 30
    invoke-static {p4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {p4, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    return-void
.end method

.method public u(Ls1/a/a/a/v0/f/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/c;->g()Ljava/util/List;

    move-result-object p1

    const-string v0, "fqName.pathSegments()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->R2(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/i/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final u0(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ls1/a/a/a/v0/b/b1;",
            ">;Z",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/i/j;->D:Ls1/b0/c;

    sget-object v2, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/i/o;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    const/4 p2, 0x2

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v1

    .line 5
    :goto_2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 6
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->L()Ls1/a/a/a/v0/i/c$l;

    move-result-object v3

    invoke-interface {v3, v0, p3}, Ls1/a/a/a/v0/i/c$l;->a(ILjava/lang/StringBuilder;)V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v3, v2

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/b1;

    .line 8
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->L()Ls1/a/a/a/v0/i/c$l;

    move-result-object v5

    invoke-interface {v5, v4, v3, v0, p3}, Ls1/a/a/a/v0/i/c$l;->c(Ls1/a/a/a/v0/b/b1;IILjava/lang/StringBuilder;)V

    .line 9
    invoke-virtual {p0, v4, p2, p3, v2}, Ls1/a/a/a/v0/i/d;->t0(Ls1/a/a/a/v0/b/b1;ZLjava/lang/StringBuilder;Z)V

    .line 10
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->L()Ls1/a/a/a/v0/i/c$l;

    move-result-object v5

    invoke-interface {v5, v4, v3, v0, p3}, Ls1/a/a/a/v0/i/c$l;->d(Ls1/a/a/a/v0/b/b1;IILjava/lang/StringBuilder;)V

    add-int/2addr v3, v1

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->L()Ls1/a/a/a/v0/i/c$l;

    move-result-object p1

    invoke-interface {p1, v0, p3}, Ls1/a/a/a/v0/i/c$l;->b(ILjava/lang/StringBuilder;)V

    return-void
.end method

.method public v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->Q2(Ls1/a/a/a/v0/f/e;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->K()Ls1/a/a/a/v0/i/q;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/i/q;->b:Ls1/a/a/a/v0/i/q;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    const-string p2, "<b>"

    const-string v0, "</b>"

    .line 3
    invoke-static {p2, p1, v0}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final v0(Ls1/a/a/a/v0/b/r;Ljava/lang/StringBuilder;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->G()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/i/h;->b:Ls1/a/a/a/v0/i/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 3
    iget-object v2, v0, Ls1/a/a/a/v0/i/j;->n:Ls1/b0/c;

    sget-object v3, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v4, 0xc

    aget-object v4, v3, v4

    invoke-interface {v2, v0, v4}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/r;->d()Ls1/a/a/a/v0/b/r;

    move-result-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 6
    iget-object v2, v0, Ls1/a/a/a/v0/i/j;->o:Ls1/b0/c;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Ls1/a/a/a/v0/b/q;->k:Ls1/a/a/a/v0/b/r;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 8
    :cond_2
    invoke-virtual {p1}, Ls1/a/a/a/v0/b/r;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/i/d;->d:Ls1/a/a/a/v0/i/j;

    .line 3
    iget-object v2, v1, Ls1/a/a/a/v0/i/j;->x:Ls1/b0/c;

    sget-object v3, Ls1/a/a/a/v0/i/j;->W:[Ls1/a/l;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/z/b/l;

    .line 4
    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {p0, v0, p1}, Ls1/a/a/a/v0/i/d;->f0(Ljava/lang/StringBuilder;Ls1/a/a/a/v0/m/e0;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final w0(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/b/w0;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/i/d;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/b/w0;

    .line 4
    invoke-interface {v2}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v4

    const-string v5, "typeParameter.upperBounds"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v4, v3}, Ls1/u/i;->s(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 7
    check-cast v4, Ls1/a/a/a/v0/m/e0;

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v6

    const-string v7, "typeParameter.name"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6, v0}, Ls1/a/a/a/v0/i/d;->v(Ls1/a/a/a/v0/f/e;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "it"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ls1/a/a/a/v0/i/d;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_3

    const-string p1, " "

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "where"

    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/i/d;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7c

    const-string v3, ", "

    move-object v2, p2

    .line 11
    invoke-static/range {v1 .. v9}, Ls1/u/i;->M(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method public x(Ls1/a/a/a/v0/m/y0;)Ljava/lang/String;
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ls1/a/a/a/v0/i/d;->z(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final x0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p1, p2, v0, v1}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3, p4, v0, v1}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p5, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p1, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-object p2

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p3}, Ls1/a/a/a/v0/i/d;->A(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x21

    .line 7
    invoke-static {p2, p1}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final y0(Ls1/a/a/a/v0/m/e0;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ls1/a/a/a/v0/a/f;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p1

    .line 2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move p1, v2

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/y0;

    .line 4
    invoke-interface {v0}, Ls1/a/a/a/v0/m/y0;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public final z(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Ls1/a/a/a/v0/m/y0;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Ls1/a/a/a/v0/i/d$b;

    invoke-direct {v7, p0}, Ls1/a/a/a/v0/i/d$b;-><init>(Ls1/a/a/a/v0/i/d;)V

    const-string v2, ", "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x3c

    move-object v0, p2

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Ls1/u/i;->M(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/Appendable;

    return-void
.end method
