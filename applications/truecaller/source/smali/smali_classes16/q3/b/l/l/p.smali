.class public final Lq3/b/l/l/p;
.super Lq3/b/j/a;
.source "SourceFile"

# interfaces
.implements Lq3/b/l/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/b/l/l/p$a;
    }
.end annotation


# instance fields
.field public final a:Lq3/b/m/b;

.field public final b:Lq3/b/l/l/c;

.field public c:Z

.field public d:Z

.field public final e:Lq3/b/l/l/p$a;

.field public final f:Lq3/b/l/a;

.field public final g:Lq3/b/l/l/r;

.field public final h:[Lq3/b/l/f;


# direct methods
.method public constructor <init>(Lq3/b/l/l/p$a;Lq3/b/l/a;Lq3/b/l/l/r;[Lq3/b/l/f;)V
    .locals 1

    const-string v0, "composer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lq3/b/j/a;-><init>()V

    iput-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    iput-object p2, p0, Lq3/b/l/l/p;->f:Lq3/b/l/a;

    iput-object p3, p0, Lq3/b/l/l/p;->g:Lq3/b/l/l/r;

    iput-object p4, p0, Lq3/b/l/l/p;->h:[Lq3/b/l/f;

    .line 2
    iget-object p1, p2, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    iget-object p2, p1, Lq3/b/l/l/c;->k:Lq3/b/m/b;

    .line 3
    iput-object p2, p0, Lq3/b/l/l/p;->a:Lq3/b/m/b;

    .line 4
    iput-object p1, p0, Lq3/b/l/l/p;->b:Lq3/b/l/l/c;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 6
    aget-object p2, p4, p1

    if-nez p2, :cond_0

    aget-object p2, p4, p1

    if-eq p2, p0, :cond_1

    .line 7
    :cond_0
    aput-object p0, p4, p1

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lq3/b/i/d;)Lq3/b/j/c;
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/l/l/p;->f:Lq3/b/l/a;

    .line 2
    invoke-static {v0, p1}, Lq3/b/l/l/m;->b(Lq3/b/l/a;Lq3/b/i/d;)Lq3/b/l/l/r;

    move-result-object v0

    .line 3
    iget-char v1, v0, Lq3/b/l/l/r;->c:C

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 5
    iget-object v2, v2, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, v1, Lq3/b/l/l/p$a;->b:Z

    iget v3, v1, Lq3/b/l/l/p$a;->a:I

    add-int/2addr v3, v2

    iput v3, v1, Lq3/b/l/l/p$a;->a:I

    .line 8
    :cond_0
    iget-boolean v1, p0, Lq3/b/l/l/p;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lq3/b/l/l/p;->d:Z

    .line 10
    iget-object v1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {v1}, Lq3/b/l/l/p$a;->a()V

    .line 11
    iget-object v1, p0, Lq3/b/l/l/p;->b:Lq3/b/l/l/c;

    iget-object v1, v1, Lq3/b/l/l/c;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 13
    iget-object v1, v1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 14
    iget-object v1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {v1}, Lq3/b/l/l/p$a;->c()V

    .line 15
    invoke-interface {p1}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-object p1, p0, Lq3/b/l/l/p;->g:Lq3/b/l/l/r;

    if-ne p1, v0, :cond_2

    return-object p0

    .line 17
    :cond_2
    iget-object p1, p0, Lq3/b/l/l/p;->h:[Lq3/b/l/f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Lq3/b/l/l/p;

    iget-object v1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 18
    iget-object v2, p0, Lq3/b/l/l/p;->f:Lq3/b/l/a;

    .line 19
    iget-object v3, p0, Lq3/b/l/l/p;->h:[Lq3/b/l/f;

    invoke-direct {p1, v1, v2, v0, v3}, Lq3/b/l/l/p;-><init>(Lq3/b/l/l/p$a;Lq3/b/l/a;Lq3/b/l/l/r;[Lq3/b/l/f;)V

    :goto_0
    return-object p1
.end method

.method public b(Lq3/b/i/d;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lq3/b/l/l/p;->g:Lq3/b/l/l/r;

    iget-char p1, p1, Lq3/b/l/l/r;->d:C

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 3
    iget v0, p1, Lq3/b/l/l/p$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lq3/b/l/l/p$a;->a:I

    .line 4
    invoke-virtual {p1}, Lq3/b/l/l/p$a;->a()V

    .line 5
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    iget-object v0, p0, Lq3/b/l/l/p;->g:Lq3/b/l/l/r;

    iget-char v0, v0, Lq3/b/l/l/r;->d:C

    .line 6
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public c()Lq3/b/m/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/p;->a:Lq3/b/m/b;

    return-object v0
.end method

.method public d(Lq3/b/g;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/b/g<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lq3/b/k/b;

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lq3/b/l/l/p;->f:Lq3/b/l/a;

    .line 3
    iget-object v0, v0, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 4
    iget-boolean v0, v0, Lq3/b/l/l/c;->h:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    .line 5
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    check-cast p1, Lq3/b/k/b;

    .line 7
    invoke-static {p1, p0, p2}, Ls1/a/a/a/v0/f/d;->L0(Lq3/b/k/b;Lq3/b/j/e;Ljava/lang/Object;)Lq3/b/g;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lq3/b/l/l/p;->s()Lq3/b/l/a;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 10
    iget-object v1, v1, Lq3/b/l/l/c;->i:Ljava/lang/String;

    .line 11
    instance-of v2, p1, Lq3/b/e;

    if-nez v2, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {v0}, Lq3/b/g;->a()Lq3/b/i/d;

    move-result-object v2

    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->v2(Lq3/b/i/d;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    :goto_0
    invoke-interface {v0}, Lq3/b/g;->a()Lq3/b/i/d;

    move-result-object p1

    invoke-interface {p1}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object p1

    const-string v1, "kind"

    .line 14
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v1, p1, Lq3/b/i/h$b;

    if-nez v1, :cond_4

    .line 16
    instance-of v1, p1, Lq3/b/i/c;

    if-nez v1, :cond_3

    .line 17
    instance-of p1, p1, Lq3/b/i/b;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lq3/b/l/l/p;->d:Z

    .line 19
    invoke-interface {v0, p0, p2}, Lq3/b/g;->b(Lq3/b/j/e;Ljava/lang/Object;)V

    goto :goto_2

    .line 20
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_5
    check-cast p1, Lq3/b/e;

    invoke-virtual {p1}, Lq3/b/e;->a()Lq3/b/i/d;

    move-result-object p1

    invoke-interface {p1}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-interface {v0}, Lq3/b/g;->a()Lq3/b/i/d;

    move-result-object p2

    invoke-interface {p2}, Lq3/b/i/d;->f()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Sealed class \'"

    const-string v2, "\' cannot be serialized as base class \'"

    const-string v3, "\' because"

    .line 25
    invoke-static {v0, p2, v2, p1, v3}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " it has property name that conflicts with JSON class discriminator \'"

    const-string v0, "\'. "

    const-string v2, "You can either change class discriminator in JsonConfiguration, "

    invoke-static {p1, p2, v1, v0, v2}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "rename property with @SerialName annotation or fall back to array polymorphism"

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_6
    :goto_1
    invoke-interface {p1, p0, p2}, Lq3/b/g;->b(Lq3/b/j/e;Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/b/l/l/p;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 2
    iget-object v0, v0, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/b/l/l/p;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 2
    iget-object v0, v0, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lq3/b/l/l/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public m(Lq3/b/i/d;I)Lq3/b/j/c;
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lq3/b/l/l/p;->a(Lq3/b/i/d;)Lq3/b/j/c;

    move-result-object p1

    return-object p1
.end method

.method public n(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/b/l/l/p;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 2
    iget-object v0, v0, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lq3/b/l/l/p$a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public r(Lq3/b/i/d;I)Z
    .locals 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/l/l/p;->g:Lq3/b/l/l/r;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x0

    const/16 v4, 0x3a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    const/4 v5, 0x3

    if-eq v0, v5, :cond_1

    .line 2
    iget-object v0, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 3
    iget-boolean v3, v0, Lq3/b/l/l/p$a;->b:Z

    if-nez v3, :cond_0

    .line 4
    iget-object v0, v0, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v0, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {v0}, Lq3/b/l/l/p$a;->a()V

    .line 6
    invoke-interface {p1, p2}, Lq3/b/i/d;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq3/b/l/l/p;->k(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 8
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {p1}, Lq3/b/l/l/p$a;->c()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_2

    .line 10
    iput-boolean v2, p0, Lq3/b/l/l/p;->c:Z

    :cond_2
    if-ne p2, v2, :cond_8

    .line 11
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 12
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 13
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {p1}, Lq3/b/l/l/p$a;->c()V

    .line 14
    iput-boolean v3, p0, Lq3/b/l/l/p;->c:Z

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 16
    iget-boolean v0, p1, Lq3/b/l/l/p$a;->b:Z

    if-nez v0, :cond_5

    .line 17
    rem-int/2addr p2, v5

    if-nez p2, :cond_4

    .line 18
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {p1}, Lq3/b/l/l/p$a;->a()V

    move v3, v2

    goto :goto_0

    .line 20
    :cond_4
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {p1}, Lq3/b/l/l/p$a;->c()V

    .line 22
    :goto_0
    iput-boolean v3, p0, Lq3/b/l/l/p;->c:Z

    goto :goto_1

    .line 23
    :cond_5
    iput-boolean v2, p0, Lq3/b/l/l/p;->c:Z

    .line 24
    invoke-virtual {p1}, Lq3/b/l/l/p$a;->a()V

    goto :goto_1

    .line 25
    :cond_6
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    .line 26
    iget-boolean p2, p1, Lq3/b/l/l/p$a;->b:Z

    if-nez p2, :cond_7

    .line 27
    iget-object p1, p1, Lq3/b/l/l/p$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    :cond_7
    iget-object p1, p0, Lq3/b/l/l/p;->e:Lq3/b/l/l/p$a;

    invoke-virtual {p1}, Lq3/b/l/l/p$a;->a()V

    :cond_8
    :goto_1
    return v2
.end method

.method public s()Lq3/b/l/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/p;->f:Lq3/b/l/a;

    return-object v0
.end method
