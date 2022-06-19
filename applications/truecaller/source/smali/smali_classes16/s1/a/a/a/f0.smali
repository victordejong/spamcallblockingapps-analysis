.class public final Ls1/a/a/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/m;


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Ls1/a/a/a/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/k0<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/k0;

.field public final c:Ls1/a/a/a/v0/m/e0;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Ls1/a/a/a/f0;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v3

    const-string v4, "classifier"

    const-string v5, "getClassifier()Lkotlin/reflect/KClassifier;"

    invoke-direct {v2, v3, v4, v5}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ls1/z/c/w;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    const-string v3, "arguments"

    const-string v4, "getArguments()Ljava/util/List;"

    invoke-direct {v2, v0, v3, v4}, Ls1/z/c/w;-><init>(Ls1/a/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/z/c/d0;->d(Ls1/z/c/v;)Ls1/a/k;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Ls1/a/a/a/f0;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/m/e0;Ls1/z/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/e0;",
            "Ls1/z/b/a<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/f0;->c:Ls1/a/a/a/v0/m/e0;

    .line 2
    instance-of p1, p2, Ls1/a/a/a/k0;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    check-cast p1, Ls1/a/a/a/k0;

    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object v0

    :cond_2
    :goto_1
    iput-object v0, p0, Ls1/a/a/a/f0;->a:Ls1/a/a/a/k0;

    .line 3
    new-instance p1, Ls1/a/a/a/f0$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/f0$b;-><init>(Ls1/a/a/a/f0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/f0;->b:Ls1/a/a/a/k0;

    .line 4
    new-instance p1, Ls1/a/a/a/f0$a;

    invoke-direct {p1, p0, p2}, Ls1/a/a/a/f0$a;-><init>(Ls1/a/a/a/f0;Ls1/z/b/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->S1(Ls1/z/b/a;)Ls1/a/a/a/k0;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/e0;)Ls1/a/d;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 3
    check-cast v0, Ls1/a/a/a/v0/b/e;

    invoke-static {v0}, Ls1/a/a/a/s0;->g(Ls1/a/a/a/v0/b/e;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->D0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/y0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/y0;->getType()Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "type.arguments.singleOrN\u2026return KClassImpl(jClass)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1}, Ls1/a/a/a/f0;->a(Ls1/a/a/a/v0/m/e0;)Ls1/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    new-instance v0, Ls1/a/a/a/a;

    invoke-static {p1}, Le/q/f/a/d/a;->R0(Ls1/a/d;)Ls1/a/c;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/b/j1/b/b;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/a;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 8
    :cond_0
    new-instance p1, Ls1/a/a/a/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot determine classifier for array element type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls1/a/a/a/i0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ls1/a/a/a/a;

    invoke-direct {p1, v0}, Ls1/a/a/a/a;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 10
    :cond_2
    invoke-static {p1}, Ls1/a/a/a/v0/m/f1;->g(Ls1/a/a/a/v0/m/e0;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 11
    new-instance p1, Ls1/a/a/a/a;

    .line 12
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/b;->a:Ljava/util/List;

    const-string v1, "$this$primitiveByWrapper"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v1, Ls1/a/a/a/v0/b/j1/b/b;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    move-object v0, v1

    .line 14
    :cond_3
    invoke-direct {p1, v0}, Ls1/a/a/a/a;-><init>(Ljava/lang/Class;)V

    return-object p1

    .line 15
    :cond_4
    new-instance p1, Ls1/a/a/a/a;

    invoke-direct {p1, v0}, Ls1/a/a/a/a;-><init>(Ljava/lang/Class;)V

    return-object p1

    :cond_5
    return-object v2

    .line 16
    :cond_6
    instance-of p1, v0, Ls1/a/a/a/v0/b/w0;

    if-eqz p1, :cond_7

    new-instance p1, Ls1/a/a/a/g0;

    check-cast v0, Ls1/a/a/a/v0/b/w0;

    invoke-direct {p1, v2, v0}, Ls1/a/a/a/g0;-><init>(Ls1/a/a/a/h0;Ls1/a/a/a/v0/b/w0;)V

    return-object p1

    .line 17
    :cond_7
    instance-of p1, v0, Ls1/a/a/a/v0/b/v0;

    if-nez p1, :cond_8

    return-object v2

    :cond_8
    new-instance p1, Ls1/j;

    const-string v0, "An operation is not implemented: "

    const-string v1, "Type alias classifiers are not yet supported"

    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ls1/j;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ls1/a/d;
    .locals 3

    iget-object v0, p0, Ls1/a/a/a/f0;->b:Ls1/a/a/a/k0;

    sget-object v1, Ls1/a/a/a/f0;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 1
    invoke-virtual {v0}, Ls1/a/a/a/k0;->invoke()Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ls1/a/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/f0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/f0;->c:Ls1/a/a/a/v0/m/e0;

    check-cast p1, Ls1/a/a/a/f0;

    iget-object p1, p1, Ls1/a/a/a/f0;->c:Ls1/a/a/a/v0/m/e0;

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

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/f0;->c:Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/o0;->b:Ls1/a/a/a/o0;

    iget-object v0, p0, Ls1/a/a/a/f0;->c:Ls1/a/a/a/v0/m/e0;

    invoke-static {v0}, Ls1/a/a/a/o0;->e(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
