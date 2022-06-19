.class public final Ls1/a/a/a/v0/d/a/d0/n/e;
.super Ls1/a/a/a/v0/b/h1/j;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/c0/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/a/d0/n/e$a;
    }
.end annotation


# instance fields
.field public final h:Ls1/a/a/a/v0/d/a/d0/h;

.field public final i:Ls1/a/a/a/v0/b/f;

.field public final j:Ls1/a/a/a/v0/b/y;

.field public final k:Ls1/a/a/a/v0/b/e1;

.field public final l:Z

.field public final m:Ls1/a/a/a/v0/d/a/d0/n/e$a;

.field public final n:Ls1/a/a/a/v0/d/a/d0/n/g;

.field public final o:Ls1/a/a/a/v0/b/o0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/b/o0<",
            "Ls1/a/a/a/v0/d/a/d0/n/g;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Ls1/a/a/a/v0/j/y/g;

.field public final q:Ls1/a/a/a/v0/d/a/d0/n/o;

.field public final r:Ls1/a/a/a/v0/b/f1/h;

.field public final s:Ls1/a/a/a/v0/l/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/v0/l/i<",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final t:Ls1/a/a/a/v0/d/a/d0/h;

.field public final u:Ls1/a/a/a/v0/d/a/f0/g;

.field public final v:Ls1/a/a/a/v0/b/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    const-string v5, "notifyAll"

    const-string v6, "toString"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/b/e;)V
    .locals 8

    sget-object v0, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    const-string v1, "outerContext"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "containingDeclaration"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jClass"

    invoke-static {p3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 2
    iget-object v3, v1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 3
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/s;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    .line 4
    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->j:Ls1/a/a/a/v0/d/a/e0/b;

    .line 6
    invoke-interface {v1, p3}, Ls1/a/a/a/v0/d/a/e0/b;->a(Ls1/a/a/a/v0/d/a/f0/l;)Ls1/a/a/a/v0/d/a/e0/a;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    .line 7
    invoke-direct/range {v2 .. v7}, Ls1/a/a/a/v0/b/h1/j;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Z)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->t:Ls1/a/a/a/v0/d/a/d0/h;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->u:Ls1/a/a/a/v0/d/a/f0/g;

    iput-object p4, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->v:Ls1/a/a/a/v0/b/e;

    const/4 p2, 0x0

    const/4 v1, 0x4

    .line 8
    invoke-static {p1, p0, p3, p2, v1}, Le/q/f/a/d/a;->A(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/g;Ls1/a/a/a/v0/d/a/f0/x;II)Ls1/a/a/a/v0/d/a/d0/h;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 9
    iget-object v1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 10
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/c;->g:Ls1/a/a/a/v0/d/a/b0/g;

    .line 11
    check-cast v1, Ls1/a/a/a/v0/d/a/b0/g$a;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->x()Ls1/a/a/a/v0/d/a/f0/a0;

    .line 14
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ls1/a/a/a/v0/b/f;->e:Ls1/a/a/a/v0/b/f;

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->J()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ls1/a/a/a/v0/b/f;->c:Ls1/a/a/a/v0/b/f;

    goto :goto_0

    .line 17
    :cond_2
    sget-object v1, Ls1/a/a/a/v0/b/f;->a:Ls1/a/a/a/v0/b/f;

    .line 18
    :goto_0
    iput-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->i:Ls1/a/a/a/v0/b/f;

    .line 19
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->D()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 20
    :cond_3
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/r;->E()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->J()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, p2

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v2

    :goto_2
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/r;->F()Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v1, :cond_6

    .line 21
    sget-object v0, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    .line 22
    sget-object v0, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    .line 23
    :cond_7
    :goto_3
    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->j:Ls1/a/a/a/v0/b/y;

    .line 24
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/r;->f()Ls1/a/a/a/v0/b/e1;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->k:Ls1/a/a/a/v0/b/e1;

    .line 25
    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/g;->h()Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ls1/a/a/a/v0/d/a/f0/r;->e()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, p2

    :goto_4
    iput-boolean v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->l:Z

    .line 26
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/e$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/v0/d/a/d0/n/e$a;-><init>(Ls1/a/a/a/v0/d/a/d0/n/e;)V

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->m:Ls1/a/a/a/v0/d/a/d0/n/e$a;

    .line 27
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/g;

    if-eqz p4, :cond_9

    move v6, v2

    goto :goto_5

    :cond_9
    move v6, p2

    :goto_5
    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p3

    .line 28
    invoke-direct/range {v2 .. v7}, Ls1/a/a/a/v0/d/a/d0/n/g;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/f0/g;ZLs1/a/a/a/v0/d/a/d0/n/g;)V

    .line 29
    iput-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->n:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 30
    sget-object p2, Ls1/a/a/a/v0/b/o0;->f:Ls1/a/a/a/v0/b/o0$a;

    .line 31
    iget-object p4, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 32
    iget-object v1, p4, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 33
    iget-object p4, p4, Ls1/a/a/a/v0/d/a/d0/c;->u:Ls1/a/a/a/v0/m/l1/k;

    .line 34
    invoke-interface {p4}, Ls1/a/a/a/v0/m/l1/k;->c()Ls1/a/a/a/v0/m/l1/e;

    move-result-object p4

    new-instance v2, Ls1/a/a/a/v0/d/a/d0/n/e$c;

    invoke-direct {v2, p0}, Ls1/a/a/a/v0/d/a/d0/n/e$c;-><init>(Ls1/a/a/a/v0/d/a/d0/n/e;)V

    invoke-virtual {p2, p0, v1, p4, v2}, Ls1/a/a/a/v0/b/o0$a;->a(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/m/l1/e;Ls1/z/b/l;)Ls1/a/a/a/v0/b/o0;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->o:Ls1/a/a/a/v0/b/o0;

    .line 35
    new-instance p2, Ls1/a/a/a/v0/j/y/g;

    invoke-direct {p2, v0}, Ls1/a/a/a/v0/j/y/g;-><init>(Ls1/a/a/a/v0/j/y/i;)V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->p:Ls1/a/a/a/v0/j/y/g;

    .line 36
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/n/o;

    invoke-direct {p2, p1, p3, p0}, Ls1/a/a/a/v0/d/a/d0/n/o;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/d/a/d0/n/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->q:Ls1/a/a/a/v0/d/a/d0/n/o;

    .line 37
    invoke-static {p1, p3}, Le/q/f/a/d/a;->B2(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/d;)Ls1/a/a/a/v0/b/f1/h;

    move-result-object p2

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->r:Ls1/a/a/a/v0/b/f1/h;

    .line 38
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 39
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/c;->a:Ls1/a/a/a/v0/l/m;

    .line 40
    new-instance p2, Ls1/a/a/a/v0/d/a/d0/n/e$b;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/d/a/d0/n/e$b;-><init>(Ls1/a/a/a/v0/d/a/d0/n/e;)V

    invoke-interface {p1, p2}, Ls1/a/a/a/v0/l/m;->e(Ls1/z/b/a;)Ls1/a/a/a/v0/l/i;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->s:Ls1/a/a/a/v0/l/i;

    return-void
.end method


# virtual methods
.method public A0()Ls1/a/a/a/v0/b/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public I()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->p:Ls1/a/a/a/v0/j/y/g;

    return-object v0
.end method

.method public bridge synthetic J()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/d/a/d0/n/e;->N0()Ls1/a/a/a/v0/d/a/d0/n/g;

    move-result-object v0

    return-object v0
.end method

.method public L0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N0()Ls1/a/a/a/v0/d/a/d0/n/g;
    .locals 2

    .line 1
    invoke-super {p0}, Ls1/a/a/a/v0/b/h1/b;->J()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/n/g;

    return-object v0
.end method

.method public b0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->o:Ls1/a/a/a/v0/b/o0;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/b/o0;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/j/y/i;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/d0/n/g;

    return-object p1
.end method

.method public c0()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public f()Ls1/a/a/a/v0/b/r;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->k:Ls1/a/a/a/v0/b/e1;

    sget-object v1, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->u:Ls1/a/a/a/v0/d/a/f0/g;

    invoke-interface {v0}, Ls1/a/a/a/v0/d/a/f0/g;->h()Ls1/a/a/a/v0/d/a/f0/g;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/s;->a:Ls1/a/a/a/v0/b/r;

    const-string v1, "JavaDescriptorVisibilities.PACKAGE_VISIBILITY"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->k:Ls1/a/a/a/v0/b/e1;

    invoke-static {v0}, Le/q/f/a/d/a;->c3(Ls1/a/a/a/v0/b/e1;)Ls1/a/a/a/v0/b/r;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->r:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method

.method public getKind()Ls1/a/a/a/v0/b/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->i:Ls1/a/a/a/v0/b/f;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ls1/a/a/a/v0/b/y;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->j:Ls1/a/a/a/v0/b/y;

    return-object v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->m:Ls1/a/a/a/v0/d/a/d0/n/e$a;

    return-object v0
.end method

.method public p()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->n:Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/n/g;->n:Ls1/a/a/a/v0/l/i;

    .line 3
    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public p0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Lazy Java class "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ls1/a/a/a/v0/j/v/b;->i(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/f/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/List;
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
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->s:Ls1/a/a/a/v0/l/i;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->l:Z

    return v0
.end method

.method public x0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Ls1/a/a/a/v0/b/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z0()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/e;->q:Ls1/a/a/a/v0/d/a/d0/n/o;

    return-object v0
.end method
