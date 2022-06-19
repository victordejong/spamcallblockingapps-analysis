.class public final Ls1/a/a/a/v0/d/a/d0/o/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, "java.lang.Class"

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/o/i;->a:Ls1/a/a/a/v0/f/b;

    return-void
.end method

.method public static final a(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/w0;Ls1/z/b/a;)Ls1/a/a/a/v0/m/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/w0;",
            "Ls1/a/a/a/v0/b/w0;",
            "Ls1/z/b/a<",
            "+",
            "Ls1/a/a/a/v0/m/e0;",
            ">;)",
            "Ls1/a/a/a/v0/m/e0;"
        }
    .end annotation

    const-string v0, "$this$getErasedUpperBound"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p0, p1, :cond_0

    .line 1
    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/m/e0;

    return-object p0

    .line 2
    :cond_0
    invoke-interface {p0}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    const-string v1, "upperBounds"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/m/e0;

    .line 3
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_1

    const-string p0, "firstUpperBound"

    .line 4
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->W2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    move-object p0, p1

    .line 5
    :cond_2
    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/b/w0;

    .line 6
    :goto_0
    invoke-static {p1, p0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 7
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    const-string v1, "current.upperBounds"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    .line 8
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v1

    instance-of v1, v1, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_3

    const-string p0, "nextUpperBound"

    .line 9
    invoke-static {p1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->W2(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    return-object p0

    .line 10
    :cond_3
    invoke-virtual {p1}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/m/v0;->d()Ls1/a/a/a/v0/b/h;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/b/w0;

    goto :goto_0

    .line 11
    :cond_4
    invoke-interface {p2}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/a/a/a/v0/m/e0;

    return-object p0
.end method

.method public static final b(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/d/a/d0/o/a;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    const-string v0, "typeParameter"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/o/a;->a:Ls1/a/a/a/v0/d/a/b0/k;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/k;->a:Ls1/a/a/a/v0/d/a/b0/k;

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Ls1/a/a/a/v0/m/a1;

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->s3(Ls1/a/a/a/v0/b/w0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p0

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/m/a1;-><init>(Ls1/a/a/a/v0/m/e0;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls1/a/a/a/v0/m/q0;

    invoke-direct {p1, p0}, Ls1/a/a/a/v0/m/q0;-><init>(Ls1/a/a/a/v0/b/w0;)V

    :goto_0
    return-object p1
.end method

.method public static c(Ls1/a/a/a/v0/d/a/b0/k;ZLs1/a/a/a/v0/b/w0;I)Ls1/a/a/a/v0/d/a/d0/o/a;
    .locals 6

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v3, p1

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v4, p2

    const-string p1, "$this$toAttributes"

    .line 1
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ls1/a/a/a/v0/d/a/d0/o/a;

    const/4 v2, 0x0

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/d/a/d0/o/a;-><init>(Ls1/a/a/a/v0/d/a/b0/k;Ls1/a/a/a/v0/d/a/d0/o/b;ZLs1/a/a/a/v0/b/w0;I)V

    return-object p1
.end method
