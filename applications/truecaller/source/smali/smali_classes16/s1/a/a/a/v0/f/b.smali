.class public final Ls1/a/a/a/v0/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ls1/a/a/a/v0/f/b;


# instance fields
.field public final a:Ls1/a/a/a/v0/f/c;

.field public transient b:Ls1/a/a/a/v0/f/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/b;

    const-string v1, ""

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ls1/a/a/a/v0/f/b;->c:Ls1/a/a/a/v0/f/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/f/c;

    invoke-direct {v0, p1, p0}, Ls1/a/a/a/v0/f/c;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/f/b;)V

    iput-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/f/b;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public constructor <init>(Ls1/a/a/a/v0/f/c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/f/c;Ls1/a/a/a/v0/f/b;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    .line 8
    iput-object p2, p0, Ls1/a/a/a/v0/f/b;->b:Ls1/a/a/a/v0/f/b;

    return-void
.end method

.method public static synthetic a(I)V
    .locals 7

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :pswitch_1
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_1

    :pswitch_2
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_3
    move v2, v1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "shortName"

    const-string v4, "kotlin/reflect/jvm/internal/impl/name/FqName"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_2

    const-string v6, "names"

    aput-object v6, v2, v5

    goto :goto_2

    :pswitch_4
    aput-object v3, v2, v5

    goto :goto_2

    :pswitch_5
    const-string v6, "segment"

    aput-object v6, v2, v5

    goto :goto_2

    :pswitch_6
    const-string v6, "name"

    aput-object v6, v2, v5

    goto :goto_2

    :pswitch_7
    aput-object v4, v2, v5

    goto :goto_2

    :pswitch_8
    const-string v6, "fqName"

    aput-object v6, v2, v5

    :goto_2
    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_3

    :pswitch_9
    aput-object v4, v2, v5

    goto :goto_3

    :pswitch_a
    const-string v3, "pathSegments"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_b
    const-string v3, "shortNameOrSpecial"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_c
    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_d
    const-string v3, "parent"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_e
    const-string v3, "toUnsafe"

    aput-object v3, v2, v5

    goto :goto_3

    :pswitch_f
    const-string v3, "asString"

    aput-object v3, v2, v5

    :goto_3
    packed-switch p0, :pswitch_data_4

    const-string v3, "fromSegments"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_10
    const-string v3, "topLevel"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_11
    const-string v3, "startsWith"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_12
    const-string v3, "child"

    aput-object v3, v2, v1

    goto :goto_4

    :pswitch_13
    const-string v3, "<init>"

    aput-object v3, v2, v1

    :goto_4
    :pswitch_14
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_5

    :pswitch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_12
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x4
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static k(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    new-instance v1, Ls1/a/a/a/v0/f/b;

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ls1/a/a/a/v0/f/c;

    invoke-virtual {p0}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ls1/a/a/a/v0/f/b;->c:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v3}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v3

    invoke-direct {v0, v2, v3, p0}, Ls1/a/a/a/v0/f/c;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/f/c;Ls1/a/a/a/v0/f/e;)V

    .line 3
    invoke-direct {v1, v0}, Ls1/a/a/a/v0/f/b;-><init>(Ls1/a/a/a/v0/f/c;)V

    return-object v1

    :cond_0
    const/16 p0, 0x10

    .line 4
    invoke-static {p0}, Ls1/a/a/a/v0/f/c;->a(I)V

    throw v0

    :cond_1
    const/16 p0, 0xd

    .line 5
    invoke-static {p0}, Ls1/a/a/a/v0/f/b;->a(I)V

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Ls1/a/a/a/v0/f/b;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ls1/a/a/a/v0/f/b;

    iget-object v1, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/f/c;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/c;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ls1/a/a/a/v0/f/b;-><init>(Ls1/a/a/a/v0/f/c;Ls1/a/a/a/v0/f/b;)V

    return-object v0

    :cond_0
    const/16 p1, 0x8

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/f/b;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->e()Z

    move-result v0

    return v0
.end method

.method public e()Ls1/a/a/a/v0/f/b;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->b:Ls1/a/a/a/v0/f/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x6

    .line 2
    invoke-static {v0}, Ls1/a/a/a/v0/f/b;->a(I)V

    throw v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/f/b;->d()Z

    move-result v0

    const-string v2, "root"

    if-nez v0, :cond_6

    .line 4
    new-instance v0, Ls1/a/a/a/v0/f/b;

    iget-object v3, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    .line 5
    iget-object v4, v3, Ls1/a/a/a/v0/f/c;->c:Ls1/a/a/a/v0/f/c;

    if-eqz v4, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {v3}, Ls1/a/a/a/v0/f/c;->e()Z

    move-result v4

    if-nez v4, :cond_5

    .line 7
    invoke-virtual {v3}, Ls1/a/a/a/v0/f/c;->d()V

    .line 8
    iget-object v4, v3, Ls1/a/a/a/v0/f/c;->c:Ls1/a/a/a/v0/f/c;

    if-eqz v4, :cond_4

    .line 9
    :goto_0
    invoke-direct {v0, v4}, Ls1/a/a/a/v0/f/b;-><init>(Ls1/a/a/a/v0/f/c;)V

    iput-object v0, p0, Ls1/a/a/a/v0/f/b;->b:Ls1/a/a/a/v0/f/b;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const/4 v0, 0x7

    .line 10
    invoke-static {v0}, Ls1/a/a/a/v0/f/b;->a(I)V

    throw v1

    :cond_4
    const/16 v0, 0x8

    .line 11
    invoke-static {v0}, Ls1/a/a/a/v0/f/c;->a(I)V

    throw v1

    .line 12
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ls1/a/a/a/v0/f/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ls1/a/a/a/v0/f/b;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    iget-object p1, p1, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/f/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0xb

    invoke-static {v0}, Ls1/a/a/a/v0/f/b;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public g()Ls1/a/a/a/v0/f/e;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->h()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x9

    invoke-static {v0}, Ls1/a/a/a/v0/f/b;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public h()Ls1/a/a/a/v0/f/e;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    .line 2
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    sget-object v0, Ls1/a/a/a/v0/f/c;->e:Ls1/a/a/a/v0/f/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    invoke-static {v0}, Ls1/a/a/a/v0/f/c;->a(I)V

    throw v2

    .line 4
    :cond_1
    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->h()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    const/16 v0, 0xd

    invoke-static {v0}, Ls1/a/a/a/v0/f/c;->a(I)V

    throw v2
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public i(Ls1/a/a/a/v0/f/e;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/c;->e()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v1, Ls1/a/a/a/v0/f/c;->a:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 5
    iget-object v3, v1, Ls1/a/a/a/v0/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object p1

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    iget-object v0, v1, Ls1/a/a/a/v0/f/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {v3, v2, p1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    :goto_0
    return v2

    :cond_2
    const/16 p1, 0xf

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/f/c;->a(I)V

    throw v0

    :cond_3
    const/16 p1, 0xc

    .line 7
    invoke-static {p1}, Ls1/a/a/a/v0/f/b;->a(I)V

    throw v0
.end method

.method public j()Ls1/a/a/a/v0/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ls1/a/a/a/v0/f/b;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/f/b;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
