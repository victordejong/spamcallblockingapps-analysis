.class public Le/k/a/c/d0/z/v$l;
.super Le/k/a/c/d0/z/v$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/v$k<",
        "Ljava/lang/Short;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final h:Le/k/a/c/d0/z/v$l;

.field public static final i:Le/k/a/c/d0/z/v$l;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/d0/z/v$l;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$l;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    sput-object v0, Le/k/a/c/d0/z/v$l;->h:Le/k/a/c/d0/z/v$l;

    .line 2
    new-instance v0, Le/k/a/c/d0/z/v$l;

    const-class v1, Ljava/lang/Short;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$l;-><init>(Ljava/lang/Class;Ljava/lang/Short;)V

    sput-object v0, Le/k/a/c/d0/z/v$l;->i:Le/k/a/c/d0/z/v$l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Short;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Short;",
            ">;",
            "Ljava/lang/Short;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Le/k/a/c/d0/z/v$k;-><init>(Ljava/lang/Class;Le/k/a/c/m0/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->T1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->Q0()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->Z(Le/k/a/b/j;Le/k/a/c/g;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_2

    .line 5
    :cond_1
    sget-object v0, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_10

    const/4 v5, 0x3

    if-eq v2, v5, :cond_f

    const/16 v5, 0xb

    if-eq v2, v5, :cond_e

    const/4 v5, 0x6

    if-eq v2, v5, :cond_7

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    .line 6
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->b:Le/k/a/c/i;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 8
    :goto_0
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->H(Le/k/a/c/i;Le/k/a/b/j;)Ljava/lang/Object;

    throw v4

    .line 9
    :cond_3
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/b0;->u(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    if-ne v2, v1, :cond_4

    .line 10
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    goto/16 :goto_2

    :cond_4
    if-ne v2, v0, :cond_5

    .line 11
    iget-object p1, p0, Le/k/a/c/d0/z/v$k;->f:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/lang/Short;

    goto/16 :goto_2

    .line 13
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->Q0()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_2

    .line 14
    :cond_6
    invoke-virtual {p1}, Le/k/a/b/j;->Q0()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto/16 :goto_2

    .line 15
    :cond_7
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {p0}, Le/k/a/c/d0/z/v$k;->o()Le/k/a/c/m0/f;

    move-result-object v2

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, p2, p1, v2, v5}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v2

    if-ne v2, v1, :cond_8

    .line 17
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    goto :goto_2

    :cond_8
    if-ne v2, v0, :cond_9

    .line 18
    iget-object p1, p0, Le/k/a/c/d0/z/v$k;->f:Ljava/lang/Object;

    .line 19
    check-cast p1, Ljava/lang/Short;

    goto :goto_2

    .line 20
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->w(Le/k/a/c/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    .line 23
    :try_start_0
    invoke-static {p1}, Le/k/a/b/w/f;->f(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, -0x8000

    if-lt v1, v2, :cond_c

    const/16 v2, 0x7fff

    if-le v1, v2, :cond_b

    goto :goto_1

    :cond_b
    move v3, v0

    :cond_c
    :goto_1
    if-nez v3, :cond_d

    int-to-short p1, v1

    .line 24
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    goto :goto_2

    .line 25
    :cond_d
    iget-object v1, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "overflow, value cannot be represented as 16-bit value"

    invoke-virtual {p2, v1, p1, v2, v0}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v4

    .line 26
    :catch_0
    iget-object v1, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "not a valid Short value"

    invoke-virtual {p2, v1, p1, v2, v0}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v4

    .line 27
    :cond_e
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    goto :goto_2

    .line 28
    :cond_f
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    :goto_2
    return-object p1

    .line 29
    :cond_10
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 30
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v4
.end method
