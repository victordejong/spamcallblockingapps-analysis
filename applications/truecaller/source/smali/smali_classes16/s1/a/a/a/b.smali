.class public final Ls1/a/a/a/b;
.super Ls1/a/a/a/g;
.source "SourceFile"

# interfaces
.implements Ls1/z/c/h;
.implements Ls1/a/f;
.implements Ls1/z/b/a;
.implements Ls1/z/b/l;
.implements Ls1/z/b/b;
.implements Ls1/z/b/c;
.implements Ls1/z/b/d;
.implements Ls1/z/b/e;
.implements Ls1/z/b/f;
.implements Ls1/z/b/g;
.implements Ls1/z/b/h;
.implements Ls1/z/b/i;
.implements Ls1/z/b/j;
.implements Ls1/z/b/k;
.implements Ls1/z/b/p;
.implements Ls1/z/b/m;
.implements Ls1/z/b/n;
.implements Ls1/z/b/o;
.implements Ls1/z/b/q;
.implements Ls1/z/b/r;
.implements Ls1/z/b/s;
.implements Ls1/z/b/t;
.implements Ls1/z/b/u;
.implements Ls1/z/b/v;
.implements Ls1/z/b/w;
.implements Ls1/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/g<",
        "Ljava/lang/Object;",
        ">;",
        "Ls1/z/c/h<",
        "Ljava/lang/Object;",
        ">;",
        "Ls1/a/f<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final synthetic g:[Ls1/a/l;


# instance fields
.field public final b:Ls1/a/a/a/k0;

.field public final c:Ls1/a/a/a/l0;

.field public final d:Ls1/a/a/a/n;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/b;

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "caller"

    const-string v5, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "defaultCaller"

    const-string v4, "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/b;->g:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/g;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    iput-object p3, p0, Ls1/a/a/a/b;->e:Ljava/lang/String;

    iput-object p5, p0, Ls1/a/a/a/b;->f:Ljava/lang/Object;

    .line 2
    new-instance p1, Ls1/a/a/a/b$b;

    invoke-direct {p1, p0, p2}, Ls1/a/a/a/b$b;-><init>(Ls1/a/a/a/b;Ljava/lang/String;)V

    invoke-static {p4, p1}, Le/q/f/a/d/a;->R1(Ljava/lang/Object;Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/b;->b:Ls1/a/a/a/k0;

    .line 3
    new-instance p1, Ls1/a/a/a/b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Ls1/a/a/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 4
    new-instance p2, Ls1/a/a/a/l0;

    invoke-direct {p2, p1}, Ls1/a/a/a/l0;-><init>(Ls1/z/b/a;)V

    .line 5
    iput-object p2, p0, Ls1/a/a/a/b;->c:Ls1/a/a/a/l0;

    .line 6
    new-instance p1, Ls1/a/a/a/b$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Ls1/a/a/a/b$a;-><init>(ILjava/lang/Object;)V

    .line 7
    new-instance p2, Ls1/a/a/a/l0;

    invoke-direct {p2, p1}, Ls1/a/a/a/l0;-><init>(Ls1/z/b/a;)V

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/v;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Ls1/a/a/a/q0;->b:Ls1/a/a/a/q0;

    invoke-static {p2}, Ls1/a/a/a/q0;->d(Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v4

    .line 10
    sget-object v6, Ls1/z/c/b$a;->a:Ls1/z/c/b$a;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/b;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ls1/a/a/a/v0/b/v;Ljava/lang/Object;)V

    return-void
.end method

.method public static final i(Ls1/a/a/a/b;Ljava/lang/reflect/Constructor;Ls1/a/a/a/v0/b/v;)Ls1/a/a/a/u0/i;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "descriptor"

    .line 2
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p2, Ls1/a/a/a/v0/b/d;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Ls1/a/a/a/v0/b/d;

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 4
    invoke-interface {p2}, Ls1/a/a/a/v0/b/x;->f()Ls1/a/a/a/v0/b/r;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/b/q;->e(Ls1/a/a/a/v0/b/r;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p2}, Ls1/a/a/a/v0/b/j;->N()Ls1/a/a/a/v0/b/e;

    move-result-object v1

    const-string v2, "constructorDescriptor.constructedClass"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ls1/a/a/a/v0/b/e;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p2}, Ls1/a/a/a/v0/b/j;->N()Ls1/a/a/a/v0/b/e;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/j/g;->v(Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {p2}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object p2

    const-string v1, "constructorDescriptor.valueParameters"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/b1;

    const-string v2, "it"

    .line 10
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ls1/a/a/a/v0/b/a1;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    const-string v2, "it.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->Y2(Ls1/a/a/a/v0/m/e0;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_6
    :goto_0
    if-eqz v0, :cond_8

    .line 11
    invoke-virtual {p0}, Ls1/a/a/a/b;->g()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 12
    new-instance p2, Ls1/a/a/a/u0/i$a;

    invoke-virtual {p0}, Ls1/a/a/a/b;->l()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ls1/a/a/a/u0/i$a;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_1

    .line 13
    :cond_7
    new-instance p2, Ls1/a/a/a/u0/i$b;

    invoke-direct {p2, p1}, Ls1/a/a/a/u0/i$b;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_1

    .line 14
    :cond_8
    invoke-virtual {p0}, Ls1/a/a/a/b;->g()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 15
    new-instance p2, Ls1/a/a/a/u0/i$c;

    invoke-virtual {p0}, Ls1/a/a/a/b;->l()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Ls1/a/a/a/u0/i$c;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :cond_9
    new-instance p2, Ls1/a/a/a/u0/i$d;

    invoke-direct {p2, p1}, Ls1/a/a/a/u0/i$d;-><init>(Ljava/lang/reflect/Constructor;)V

    :goto_1
    return-object p2
.end method

.method public static final j(Ls1/a/a/a/b;Ljava/lang/reflect/Method;)Ls1/a/a/a/u0/i$g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ls1/a/a/a/u0/i$g$c;

    invoke-virtual {p0}, Ls1/a/a/a/b;->l()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ls1/a/a/a/u0/i$g$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/a/a/a/u0/i$g$f;

    invoke-direct {v0, p1}, Ls1/a/a/a/u0/i$g$f;-><init>(Ljava/lang/reflect/Method;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b()Ls1/a/a/a/u0/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/u0/h<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/b;->c:Ls1/a/a/a/l0;

    sget-object v1, Ls1/a/a/a/b;->g:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 1
    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls1/a/a/a/u0/h;

    return-object v0
.end method

.method public c()Ls1/a/a/a/n;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    return-object v0
.end method

.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Ls1/a/a/a/v0/b/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ls1/a/a/a/s0;->a(Ljava/lang/Object;)Ls1/a/a/a/b;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    iget-object v2, p1, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ls1/a/a/a/b;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls1/a/a/a/b;->e:Ljava/lang/String;

    iget-object v2, p1, Ls1/a/a/a/b;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ls1/a/a/a/b;->f:Ljava/lang/Object;

    iget-object p1, p1, Ls1/a/a/a/b;->f:Ljava/lang/Object;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/b;->f:Ljava/lang/Object;

    sget v1, Ls1/z/c/b;->g:I

    sget-object v1, Ls1/z/c/b$a;->a:Ls1/z/c/b$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getArity()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/b;->b()Ls1/a/a/a/u0/h;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->G0(Ls1/a/a/a/u0/h;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/b;->d:Ls1/a/a/a/n;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ls1/a/a/a/b;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Ls1/a/a/a/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/b;->f:Ljava/lang/Object;

    invoke-virtual {p0}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v1

    invoke-static {v0, v1}, Le/q/f/a/d/a;->H(Ljava/lang/Object;Ls1/a/a/a/v0/b/b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m()Ls1/a/a/a/v0/b/v;
    .locals 3

    iget-object v0, p0, Ls1/a/a/a/b;->b:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/b;->g:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls1/a/a/a/v0/b/v;

    return-object v0
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 1
    invoke-virtual {p0, v0}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/o0;->b:Ls1/a/a/a/o0;

    invoke-virtual {p0}, Ls1/a/a/a/b;->m()Ls1/a/a/a/v0/b/v;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/o0;->c(Ls1/a/a/a/v0/b/v;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
