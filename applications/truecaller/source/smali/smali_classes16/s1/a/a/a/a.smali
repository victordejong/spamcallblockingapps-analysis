.class public final Ls1/a/a/a/a;
.super Ls1/a/a/a/n;
.source "SourceFile"

# interfaces
.implements Ls1/a/c;
.implements Ls1/a/a/a/h0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/n;",
        "Ls1/a/c<",
        "TT;>;",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/h0;"
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final c:Ls1/a/a/a/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/l0<",
            "Ls1/a/a/a/a<",
            "TT;>.a;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/n;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 2
    new-instance p1, Ls1/a/a/a/a$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/a$b;-><init>(Ls1/a/a/a/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string v0, "ReflectProperties.lazy { Data() }"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/a;->c:Ls1/a/a/a/l0;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a;->c:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/a$a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/a$a;->f:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/a$a;->n:[Ls1/a/l;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a;->c:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/a$a;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/a$a;->e:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/a$a;->n:[Ls1/a/l;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/a;

    if-eqz v0, :cond_0

    invoke-static {p0}, Le/q/f/a/d/a;->P0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Ls1/a/c;

    invoke-static {p1}, Le/q/f/a/d/a;->P0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/j;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/a;->t()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/b/f;->b:Ls1/a/a/a/v0/b/f;

    if-eq v1, v2, :cond_1

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/b/f;->f:Ls1/a/a/a/v0/b/f;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->p()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "descriptor.constructors"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public g(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/v;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/a;->u()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/c/a/d;->c:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v0, p1, v1}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/a;->v()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Ls1/a/a/a/v0/b/k0;
    .locals 9

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultImpls"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v0}, Le/q/f/a/d/a;->T0(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/a;

    invoke-virtual {v0, p1}, Ls1/a/a/a/a;->h(I)Ls1/a/a/a/v0/b/k0;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, Ls1/a/a/a/a;->t()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    instance-of v1, v0, Ls1/a/a/a/v0/k/b/g0/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v0, v2

    :cond_1
    check-cast v0, Ls1/a/a/a/v0/k/b/g0/d;

    if-eqz v0, :cond_2

    .line 8
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/d;->u:Ls1/a/a/a/v0/e/c;

    .line 9
    sget-object v3, Ls1/a/a/a/v0/e/a0/a;->j:Ls1/a/a/a/v0/h/h$f;

    const-string v4, "JvmProtoBuf.classLocalVariable"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3, p1}, Le/q/f/a/d/a;->L0(Ls1/a/a/a/v0/h/h$d;Ls1/a/a/a/v0/h/h$f;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ls1/a/a/a/v0/e/n;

    if-eqz v4, :cond_2

    .line 10
    iget-object v3, p0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    .line 11
    iget-object p1, v0, Ls1/a/a/a/v0/k/b/g0/d;->i:Ls1/a/a/a/v0/k/b/l;

    .line 12
    iget-object v5, p1, Ls1/a/a/a/v0/k/b/l;->d:Ls1/a/a/a/v0/e/z/c;

    .line 13
    iget-object v6, p1, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 14
    iget-object v7, v0, Ls1/a/a/a/v0/k/b/g0/d;->v:Ls1/a/a/a/v0/e/z/a;

    .line 15
    sget-object v8, Ls1/a/a/a/a$c;->j:Ls1/a/a/a/a$c;

    .line 16
    invoke-static/range {v3 .. v8}, Ls1/a/a/a/s0;->c(Ljava/lang/Class;Ls1/a/a/a/v0/h/p;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/e/z/a;Ls1/z/b/p;)Ls1/a/a/a/v0/b/a;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/k0;

    move-object v2, p1

    :cond_2
    return-object v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Le/q/f/a/d/a;->P0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public l(Ls1/a/a/a/v0/f/e;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            ")",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/b/k0;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/a;->u()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/c/a/d;->c:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v0, p1, v1}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/a;->v()Ls1/a/a/a/v0/j/y/i;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Ls1/a/a/a/v0/j/y/i;->c(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final s()Ls1/a/a/a/v0/f/a;
    .locals 4

    .line 1
    sget-object v0, Ls1/a/a/a/q0;->b:Ls1/a/a/a/q0;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/a;->d:Ljava/lang/Class;

    const-string v1, "klass"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/q0;->a(Ljava/lang/Class;)Ls1/a/a/a/v0/a/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ls1/a/a/a/v0/f/a;

    sget-object v2, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    .line 7
    iget-object v0, v0, Ls1/a/a/a/v0/a/i;->b:Ls1/a/a/a/v0/f/e;

    .line 8
    invoke-direct {v1, v2, v0}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    goto :goto_1

    .line 9
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/a/k$a;->g:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    const-string v0, "ClassId.topLevel(Standar\u2026s.FqNames.array.toSafe())"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ls1/a/a/a/q0;->a:Ls1/a/a/a/v0/f/a;

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {v0}, Ls1/a/a/a/q0;->a(Ljava/lang/Class;)Ls1/a/a/a/v0/a/i;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    new-instance v0, Ls1/a/a/a/v0/f/a;

    sget-object v2, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    .line 13
    iget-object v1, v1, Ls1/a/a/a/v0/a/i;->a:Ls1/a/a/a/v0/f/e;

    .line 14
    invoke-direct {v0, v2, v1}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/e;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {v0}, Ls1/a/a/a/v0/b/j1/b/b;->b(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    .line 16
    iget-boolean v0, v1, Ls1/a/a/a/v0/f/a;->c:Z

    if-nez v0, :cond_4

    .line 17
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "classId.asSingleFqName()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/a/p/c;->g(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public t()Ls1/a/a/a/v0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a;->c:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/a$a;

    invoke-virtual {v0}, Ls1/a/a/a/a$a;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "class "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ls1/a/a/a/a;->s()Ls1/a/a/a/v0/f/a;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v2

    const-string v3, "classId.packageFqName"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    :goto_0
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/a;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "classId.relativeClassName.asString()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x2e

    const/16 v4, 0x24

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v1, v3, v4, v5, v6}, Ls1/f0/r;->s(Ljava/lang/String;CCZI)Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/a;->t()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ls1/a/a/a/v0/j/y/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/a;->t()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->z0()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    const-string v1, "descriptor.staticScope"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
