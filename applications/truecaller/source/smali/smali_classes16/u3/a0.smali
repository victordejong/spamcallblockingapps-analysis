.class public final Lu3/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/a0$a;,
        Lu3/a0$b;
    }
.end annotation


# static fields
.field public static final k:[C

.field public static final l:Lu3/a0$b;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu3/a0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/a0$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/a0;->l:Lu3/a0$b;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lu3/a0;->k:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "scheme"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p6, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p9, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/a0;->b:Ljava/lang/String;

    iput-object p2, p0, Lu3/a0;->c:Ljava/lang/String;

    iput-object p3, p0, Lu3/a0;->d:Ljava/lang/String;

    iput-object p4, p0, Lu3/a0;->e:Ljava/lang/String;

    iput p5, p0, Lu3/a0;->f:I

    iput-object p6, p0, Lu3/a0;->g:Ljava/util/List;

    iput-object p7, p0, Lu3/a0;->h:Ljava/util/List;

    iput-object p8, p0, Lu3/a0;->i:Ljava/lang/String;

    iput-object p9, p0, Lu3/a0;->j:Ljava/lang/String;

    const-string p2, "https"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lu3/a0;->a:Z

    return-void
.end method

.method public static final h(Ljava/lang/String;)Lu3/a0;
    .locals 2

    const-string v0, "$this$toHttpUrlOrNull"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "$this$toHttpUrl"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lu3/a0$a;

    invoke-direct {v1}, Lu3/a0$a;-><init>()V

    invoke-virtual {v1, v0, p0}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v1}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lu3/a0;->d:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lu3/a0;->j:Ljava/lang/String;

    const/16 v3, 0x3a

    iget-object v4, p0, Lu3/a0;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x4

    invoke-static {v0, v3, v4, v2, v5}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lu3/a0;->j:Ljava/lang/String;

    const/16 v3, 0x40

    const/4 v4, 0x6

    invoke-static {v1, v3, v2, v2, v4}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    .line 4
    iget-object v2, p0, Lu3/a0;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lu3/a0;->j:Ljava/lang/String;

    iget-object v1, p0, Lu3/a0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    .line 2
    iget-object v1, p0, Lu3/a0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v3, v0, v2}, Lu3/p0/c;->g(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 3
    iget-object v2, p0, Lu3/a0;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/a0;->j:Ljava/lang/String;

    iget-object v1, p0, Lu3/a0;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v2, v1, v3, v4}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    .line 2
    iget-object v1, p0, Lu3/a0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v4, v0, v3}, Lu3/p0/c;->g(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-object v4, p0, Lu3/a0;->j:Ljava/lang/String;

    invoke-static {v4, v2, v0, v1}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v4

    .line 5
    iget-object v5, p0, Lu3/a0;->j:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v5}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v3
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/a0;->h:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/a0;->j:Ljava/lang/String;

    const/16 v1, 0x3f

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Lu3/a0;->j:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lu3/p0/c;->f(Ljava/lang/String;CII)I

    move-result v1

    .line 4
    iget-object v2, p0, Lu3/a0;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/a0;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v0, ""

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Lu3/a0;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 3
    iget-object v1, p0, Lu3/a0;->j:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v3, v0, v2}, Lu3/p0/c;->g(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 4
    iget-object v2, p0, Lu3/a0;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lu3/a0;

    if-eqz v0, :cond_0

    check-cast p1, Lu3/a0;

    iget-object p1, p1, Lu3/a0;->j:Ljava/lang/String;

    iget-object v0, p0, Lu3/a0;->j:Ljava/lang/String;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()Lu3/a0$a;
    .locals 6

    .line 1
    new-instance v0, Lu3/a0$a;

    invoke-direct {v0}, Lu3/a0$a;-><init>()V

    .line 2
    iget-object v1, p0, Lu3/a0;->b:Ljava/lang/String;

    .line 3
    iput-object v1, v0, Lu3/a0$a;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lu3/a0;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<set-?>"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object v1, v0, Lu3/a0$a;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Lu3/a0;->a()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object v1, v0, Lu3/a0$a;->c:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lu3/a0;->e:Ljava/lang/String;

    .line 11
    iput-object v1, v0, Lu3/a0$a;->d:Ljava/lang/String;

    .line 12
    iget v1, p0, Lu3/a0;->f:I

    iget-object v2, p0, Lu3/a0;->b:Ljava/lang/String;

    const-string v3, "scheme"

    .line 13
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x310888    # 4.503E-39f

    const/4 v5, -0x1

    if-eq v3, v4, :cond_1

    const v4, 0x5f008eb

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "https"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1bb

    goto :goto_1

    :cond_1
    const-string v3, "http"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x50

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    if-eq v1, v2, :cond_3

    .line 17
    iget v5, p0, Lu3/a0;->f:I

    .line 18
    :cond_3
    iput v5, v0, Lu3/a0$a;->e:I

    .line 19
    iget-object v1, v0, Lu3/a0$a;->f:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 21
    iget-object v1, v0, Lu3/a0$a;->f:Ljava/util/List;

    .line 22
    invoke-virtual {p0}, Lu3/a0;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-virtual {p0}, Lu3/a0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu3/a0$a;->d(Ljava/lang/String;)Lu3/a0$a;

    .line 24
    iget-object v1, p0, Lu3/a0;->i:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    .line 25
    :cond_4
    iget-object v1, p0, Lu3/a0;->j:Ljava/lang/String;

    const/16 v2, 0x23

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 26
    iget-object v2, p0, Lu3/a0;->j:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    :goto_2
    iput-object v1, v0, Lu3/a0$a;->h:Ljava/lang/String;

    return-object v0

    .line 28
    :cond_5
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g(Ljava/lang/String;)Lu3/a0$a;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lu3/a0$a;

    invoke-direct {v0}, Lu3/a0$a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lu3/a0$a;->f(Lu3/a0;Ljava/lang/String;)Lu3/a0$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/a0;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    const-string v0, "/..."

    .line 1
    invoke-virtual {p0, v0}, Lu3/a0;->g(Ljava/lang/String;)Lu3/a0$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-virtual {v0, v1}, Lu3/a0$a;->k(Ljava/lang/String;)Lu3/a0$a;

    .line 3
    invoke-virtual {v0, v1}, Lu3/a0$a;->g(Ljava/lang/String;)Lu3/a0$a;

    .line 4
    invoke-virtual {v0}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lu3/a0;->j:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()Ljava/net/URI;
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Lu3/a0;->f()Lu3/a0$a;

    move-result-object v0

    .line 2
    sget-object v12, Lu3/a0;->l:Lu3/a0$b;

    iget-object v1, v0, Lu3/a0$a;->d:Ljava/lang/String;

    const-string v13, ""

    if-eqz v1, :cond_0

    const-string v2, "[\"<>^`{|}]"

    invoke-static {v2, v1, v13}, Le/d/c/a/a;->A2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lu3/a0$a;->d:Ljava/lang/String;

    .line 3
    iget-object v1, v0, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v14, :cond_1

    .line 4
    iget-object v10, v0, Lu3/a0$a;->f:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe3

    const-string v5, "[]"

    move-object v1, v12

    move-object v15, v10

    move-object/from16 v10, v16

    move/from16 v16, v14

    move v14, v11

    move/from16 v11, v17

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v14, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v14, 0x1

    move/from16 v14, v16

    goto :goto_1

    .line 5
    :cond_1
    iget-object v14, v0, Lu3/a0$a;->g:Ljava/util/List;

    if-eqz v14, :cond_3

    .line 6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_3

    .line 7
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0xc3

    const-string v5, "\\^`{|}"

    move-object v1, v12

    move/from16 v17, v15

    move v15, v11

    move/from16 v11, v16

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    move/from16 v17, v15

    move v15, v11

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v14, v15, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v15, 0x1

    move/from16 v15, v17

    goto :goto_2

    .line 8
    :cond_3
    iget-object v2, v0, Lu3/a0$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0xa3

    const-string v5, " \"#<>\\^`{|}"

    move-object v1, v12

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iput-object v1, v0, Lu3/a0$a;->h:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lu3/a0$a;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 11
    :try_start_1
    new-instance v2, Ls1/f0/h;

    const-string v3, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-direct {v2, v3}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v13}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    const-string v2, "URI.create(stripped)"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_5
    return-object v0

    .line 13
    :catch_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final k()Ljava/net/URL;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lu3/a0;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/a0;->j:Ljava/lang/String;

    return-object v0
.end method
