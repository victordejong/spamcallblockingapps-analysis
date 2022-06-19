.class public final Ls1/a/a/a/v0/b/q$e;
.super Ls1/a/a/a/v0/b/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/e1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/p;-><init>(Ls1/a/a/a/v0/b/e1;)V

    return-void
.end method

.method public static synthetic e(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "what"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "from"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$2"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "isVisible"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Ls1/a/a/a/v0/j/y/o/d;Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/k;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x1

    if-eqz p3, :cond_3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    invoke-virtual {v0, p1, p2, p3}, Ls1/a/a/a/v0/b/r;->c(Ls1/a/a/a/v0/j/y/o/d;Ls1/a/a/a/v0/b/o;Ls1/a/a/a/v0/b/k;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 2
    sget-object p3, Ls1/a/a/a/v0/b/q;->m:Ls1/a/a/a/v0/j/y/o/d;

    if-ne p1, p3, :cond_0

    return v2

    .line 3
    :cond_0
    sget-object p3, Ls1/a/a/a/v0/b/q;->l:Ls1/a/a/a/v0/j/y/o/d;

    if-ne p1, p3, :cond_1

    return v1

    .line 4
    :cond_1
    const-class p3, Ls1/a/a/a/v0/b/e;

    invoke-static {p2, p3}, Ls1/a/a/a/v0/j/g;->j(Ls1/a/a/a/v0/b/k;Ljava/lang/Class;)Ls1/a/a/a/v0/b/k;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 5
    instance-of p3, p1, Ls1/a/a/a/v0/j/y/o/f;

    if-eqz p3, :cond_2

    .line 6
    check-cast p1, Ls1/a/a/a/v0/j/y/o/f;

    invoke-interface {p1}, Ls1/a/a/a/v0/j/y/o/f;->m()Ls1/a/a/a/v0/b/e;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/a/a/v0/b/e;->a()Ls1/a/a/a/v0/b/e;

    move-result-object p1

    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->a()Ls1/a/a/a/v0/b/k;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    return v1

    .line 7
    :cond_3
    invoke-static {v2}, Ls1/a/a/a/v0/b/q$e;->e(I)V

    throw v0

    :cond_4
    invoke-static {v1}, Ls1/a/a/a/v0/b/q$e;->e(I)V

    throw v0
.end method
