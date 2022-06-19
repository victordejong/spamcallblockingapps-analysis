.class public final Ls1/a/a/a/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/n;


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Ls1/a/a/a/k0;

.field public final b:Ls1/a/a/a/h0;

.field public final c:Ls1/a/a/a/v0/b/w0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/w;

    const-class v2, Ls1/a/a/a/g0;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Ls1/a/a/a/g0;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/h0;Ls1/a/a/a/v0/b/w0;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/g0;->c:Ls1/a/a/a/v0/b/w0;

    .line 2
    new-instance v0, Ls1/a/a/a/g0$a;

    invoke-direct {v0, p0}, Ls1/a/a/a/g0$a;-><init>(Ls1/a/a/a/g0;)V

    invoke-static {v0}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/g0;->a:Ls1/a/a/a/k0;

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-interface {p2}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    const-string p2, "descriptor.containingDeclaration"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of p2, p1, Ls1/a/a/a/v0/b/e;

    if-eqz p2, :cond_1

    .line 5
    check-cast p1, Ls1/a/a/a/v0/b/e;

    invoke-virtual {p0, p1}, Ls1/a/a/a/g0;->b(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/a;

    move-result-object p1

    goto :goto_4

    .line 6
    :cond_1
    instance-of p2, p1, Ls1/a/a/a/v0/b/b;

    if-eqz p2, :cond_9

    .line 7
    move-object p2, p1

    check-cast p2, Ls1/a/a/a/v0/b/b;

    invoke-interface {p2}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p2

    const-string v0, "declaration.containingDeclaration"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    instance-of v0, p2, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_2

    .line 9
    check-cast p2, Ls1/a/a/a/v0/b/e;

    invoke-virtual {p0, p2}, Ls1/a/a/a/g0;->b(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/a;

    move-result-object p2

    goto :goto_3

    .line 10
    :cond_2
    instance-of p2, p1, Ls1/a/a/a/v0/k/b/g0/g;

    const/4 v0, 0x0

    if-nez p2, :cond_3

    move-object p2, v0

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    check-cast p2, Ls1/a/a/a/v0/k/b/g0/g;

    if-eqz p2, :cond_8

    .line 11
    invoke-interface {p2}, Ls1/a/a/a/v0/k/b/g0/g;->j0()Ls1/a/a/a/v0/k/b/g0/f;

    move-result-object v1

    .line 12
    instance-of v2, v1, Ls1/a/a/a/v0/d/b/g;

    if-nez v2, :cond_4

    move-object v1, v0

    :cond_4
    check-cast v1, Ls1/a/a/a/v0/d/b/g;

    if-eqz v1, :cond_5

    .line 13
    iget-object v1, v1, Ls1/a/a/a/v0/d/b/g;->d:Ls1/a/a/a/v0/d/b/l;

    goto :goto_1

    :cond_5
    move-object v1, v0

    .line 14
    :goto_1
    instance-of v2, v1, Ls1/a/a/a/v0/b/j1/a/e;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    check-cast v0, Ls1/a/a/a/v0/b/j1/a/e;

    if-eqz v0, :cond_7

    .line 15
    iget-object v0, v0, Ls1/a/a/a/v0/b/j1/a/e;->a:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 16
    invoke-static {v0}, Le/q/f/a/d/a;->T0(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ls1/a/a/a/a;

    .line 17
    :goto_3
    new-instance v0, Ls1/a/a/a/c;

    invoke-direct {v0, p2}, Ls1/a/a/a/c;-><init>(Ls1/a/a/a/n;)V

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-interface {p1, v0, p2}, Ls1/a/a/a/v0/b/k;->d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "declaration.accept(Creat\u2026bleContainerClass), Unit)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :goto_4
    check-cast p1, Ls1/a/a/a/h0;

    .line 19
    :goto_5
    iput-object p1, p0, Ls1/a/a/a/g0;->b:Ls1/a/a/a/h0;

    return-void

    .line 20
    :cond_7
    new-instance p1, Ls1/a/a/a/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Container of deserialized member is not resolved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_8
    new-instance p2, Ls1/a/a/a/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Non-class callable descriptor must be deserialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p2

    .line 22
    :cond_9
    new-instance p2, Ls1/a/a/a/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type parameter container: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final b(Ls1/a/a/a/v0/b/e;)Ls1/a/a/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/e;",
            ")",
            "Ls1/a/a/a/a<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ls1/a/a/a/s0;->g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/q/f/a/d/a;->T0(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ls1/a/a/a/a;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Ls1/a/a/a/i0;

    const-string v1, "Type parameter container is not resolved: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ls1/a/a/a/g0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/g0;->b:Ls1/a/a/a/h0;

    check-cast p1, Ls1/a/a/a/g0;

    iget-object v1, p1, Ls1/a/a/a/g0;->b:Ls1/a/a/a/h0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ls1/a/a/a/g0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ls1/a/a/a/g0;->getName()Ljava/lang/String;

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

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/g0;->c:Ls1/a/a/a/v0/b/w0;

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/g0;->a:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/g0;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/g0;->b:Ls1/a/a/a/h0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ls1/a/a/a/g0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public k()Ls1/a/p;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/g0;->c:Ls1/a/a/a/v0/b/w0;

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Ls1/a/p;->c:Ls1/a/p;

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 4
    :cond_1
    sget-object v0, Ls1/a/p;->b:Ls1/a/p;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Ls1/a/p;->a:Ls1/a/p;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "typeParameter"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-interface {p0}, Ls1/a/n;->k()Ls1/a/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "out "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "in "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :goto_0
    invoke-interface {p0}, Ls1/a/n;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
