.class public Le/k/a/c/d0/z/v$j;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final d:Le/k/a/c/d0/z/v$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/v$j;

    invoke-direct {v0}, Le/k/a/c/d0/z/v$j;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/v$j;->d:Le/k/a/c/d0/z/v$j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const/4 v3, 0x3

    if-eq v0, v3, :cond_16

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2

    .line 5
    :cond_1
    sget-object v0, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->Z1()Z

    move-result p2

    if-nez p2, :cond_2

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    sget v0, Le/k/a/c/d0/z/b0;->c:I

    invoke-virtual {p2, v0}, Le/k/a/c/g;->O(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->y(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 12
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 13
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, p2, p1, v0, v3}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 14
    sget-object v3, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne v0, v3, :cond_6

    return-object v2

    .line 15
    :cond_6
    sget-object v3, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne v0, v3, :cond_7

    return-object v2

    .line 16
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object v2

    .line 18
    :cond_8
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->K(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 20
    :cond_9
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 21
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 22
    :cond_a
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->I(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 23
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_d

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_c

    goto :goto_1

    :cond_c
    move v4, v0

    goto :goto_2

    :cond_d
    :goto_1
    if-ne v3, v1, :cond_e

    goto :goto_3

    :cond_e
    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_11

    .line 26
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_10

    const/16 v6, 0x30

    if-ge v5, v6, :cond_f

    goto :goto_3

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_10
    :goto_3
    move v1, v0

    :cond_11
    if-nez v1, :cond_13

    .line 27
    sget-object v1, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 28
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 29
    :cond_12
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 30
    :cond_13
    sget-object v1, Le/k/a/c/h;->d:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 31
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 32
    :cond_14
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 33
    sget-object v1, Le/k/a/c/h;->e:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    if-nez v1, :cond_15

    const-wide/32 v5, 0x7fffffff

    cmp-long v1, v3, v5

    if-gtz v1, :cond_15

    const-wide/32 v5, -0x80000000

    cmp-long v1, v3, v5

    if-ltz v1, :cond_15

    long-to-int v1, v3

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 35
    :cond_15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 36
    :catch_0
    iget-object v1, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "not a valid number"

    invoke-virtual {p2, v1, p1, v3, v0}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 37
    :cond_16
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_17
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 39
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->e(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/v$j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    return-object v0
.end method
