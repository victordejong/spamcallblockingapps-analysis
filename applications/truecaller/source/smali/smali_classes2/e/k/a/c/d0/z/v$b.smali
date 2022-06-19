.class public Le/k/a/c/d0/z/v$b;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final d:Le/k/a/c/d0/z/v$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/v$b;

    invoke-direct {v0}, Le/k/a/c/d0/z/v$b;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/v$b;->d:Le/k/a/c/d0/z/v$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->T1()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->E()Ljava/math/BigInteger;

    move-result-object v3

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a

    const/4 v4, 0x3

    if-eq v2, v4, :cond_9

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    .line 4
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 6
    :goto_0
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3

    .line 7
    :cond_2
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p2

    if-ne p2, v1, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    .line 8
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_1

    .line 10
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 11
    sget-object v2, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, p2, p1, v2, v4}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto :goto_1

    :cond_6
    if-ne v2, v0, :cond_7

    .line 12
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_1

    .line 13
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Le/k/a/c/d0/z/b0;->F(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 15
    :cond_8
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_1

    .line 16
    :catch_0
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "not a valid representation"

    invoke-virtual {p2, v0, p1, v2, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v3

    .line 17
    :cond_9
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/math/BigInteger;

    :goto_1
    return-object v3

    .line 18
    :cond_a
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 19
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v3
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p1
.end method

.method public final o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    return-object v0
.end method
