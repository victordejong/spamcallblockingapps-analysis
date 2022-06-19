.class public Ls1/a/a/a/v0/j/f;
.super Ls1/a/a/a/v0/b/h1/i;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/r0;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    const/4 v3, 0x0

    .line 1
    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v4, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    const/4 v5, 0x1

    .line 4
    sget-object v6, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Ls1/a/a/a/v0/b/h1/i;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/f1/h;ZLs1/a/a/a/v0/b/b$a;Ls1/a/a/a/v0/b/r0;)V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 6
    sget v1, Ls1/a/a/a/v0/j/g;->a:I

    .line 7
    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->getKind()Ls1/a/a/a/v0/b/f;

    move-result-object v1

    .line 8
    sget-object v2, Ls1/a/a/a/v0/b/f;->c:Ls1/a/a/a/v0/b/f;

    if-eq v1, v2, :cond_4

    invoke-virtual {v1}, Ls1/a/a/a/v0/b/f;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->v(Ls1/a/a/a/v0/b/k;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->n(Ls1/a/a/a/v0/b/k;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Ls1/a/a/a/v0/b/q;->k:Ls1/a/a/a/v0/b/r;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 p1, 0x30

    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->a(I)V

    throw v0

    .line 11
    :cond_2
    sget-object p1, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x31

    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->a(I)V

    throw v0

    .line 12
    :cond_4
    :goto_0
    sget-object p1, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    if-eqz p1, :cond_5

    .line 13
    :goto_1
    invoke-virtual {p0, p2, p1}, Ls1/a/a/a/v0/b/h1/i;->Y0(Ljava/util/List;Ls1/a/a/a/v0/b/r;)Ls1/a/a/a/v0/b/h1/i;

    return-void

    :cond_5
    const/16 p1, 0x2f

    .line 14
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->a(I)V

    throw v0

    :cond_6
    const/4 p1, 0x1

    .line 15
    invoke-static {p1}, Ls1/a/a/a/v0/j/f;->X(I)V

    throw v0

    :cond_7
    const/4 p1, 0x0

    invoke-static {p1}, Ls1/a/a/a/v0/j/f;->X(I)V

    throw v0
.end method

.method public static synthetic X(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "containingClass"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "source"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
