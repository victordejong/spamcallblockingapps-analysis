.class public Le/k/a/c/d0/z/v$e;
.super Le/k/a/c/d0/z/v$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/v$k<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final h:Le/k/a/c/d0/z/v$e;

.field public static final i:Le/k/a/c/d0/z/v$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/k/a/c/d0/z/v$e;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$e;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    sput-object v0, Le/k/a/c/d0/z/v$e;->h:Le/k/a/c/d0/z/v$e;

    .line 2
    new-instance v0, Le/k/a/c/d0/z/v$e;

    const-class v1, Ljava/lang/Character;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/c/d0/z/v$e;-><init>(Ljava/lang/Class;Ljava/lang/Character;)V

    sput-object v0, Le/k/a/c/d0/z/v$e;->i:Le/k/a/c/d0/z/v$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Character;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Character;",
            ">;",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->f:Le/k/a/c/m0/f;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1, v0, p2, v1}, Le/k/a/c/d0/z/v$k;-><init>(Ljava/lang/Class;Le/k/a/c/m0/f;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/16 v4, 0xb

    if-eq v0, v4, :cond_b

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-eq v0, v4, :cond_6

    const/4 v1, 0x7

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
    iget-object v0, p0, Le/k/a/c/d0/z/v$k;->d:Le/k/a/c/m0/f;

    .line 6
    iget-object v1, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    sget-object v4, Le/k/a/c/c0/d;->c:Le/k/a/c/c0/d;

    invoke-virtual {p2, v0, v1, v4}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_3

    .line 8
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result p1

    if-ltz p1, :cond_2

    const v0, 0xffff

    if-gt p1, v0, :cond_2

    int-to-char p1, p1

    .line 9
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto/16 :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "value outside valid Character range (0x0000 - 0xFFFF)"

    invoke-virtual {p2, v0, p1, v3, v1}, Le/k/a/c/g;->M(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 12
    :cond_3
    iget-object p1, p0, Le/k/a/c/d0/z/v$k;->f:Ljava/lang/Object;

    .line 13
    check-cast p1, Ljava/lang/Character;

    goto/16 :goto_1

    .line 14
    :cond_4
    iget-object v9, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object v10

    const-string v0, "Integer value ("

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, p0

    move-object v7, p2

    .line 16
    invoke-virtual/range {v6 .. v11}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    .line 17
    :cond_5
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 20
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_7
    invoke-virtual {p0}, Le/k/a/c/d0/z/v$k;->o()Le/k/a/c/m0/f;

    move-result-object v0

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 22
    sget-object v1, Le/k/a/c/c0/b;->c:Le/k/a/c/c0/b;

    if-ne v0, v1, :cond_8

    .line 23
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    goto :goto_1

    .line 24
    :cond_8
    sget-object v1, Le/k/a/c/c0/b;->d:Le/k/a/c/c0/b;

    if-ne v0, v1, :cond_9

    .line 25
    iget-object p1, p0, Le/k/a/c/d0/z/v$k;->f:Ljava/lang/Object;

    .line 26
    check-cast p1, Ljava/lang/Character;

    goto :goto_1

    .line 27
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p2, p1}, Le/k/a/c/d0/z/b0;->w(Le/k/a/c/g;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    goto :goto_1

    .line 30
    :cond_a
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "Expected either Integer value code or 1-character String"

    .line 31
    invoke-virtual {p2, v0, p1, v3, v1}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 32
    :cond_b
    iget-boolean p1, p0, Le/k/a/c/d0/z/v$k;->g:Z

    if-eqz p1, :cond_c

    .line 33
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/b0;->d0(Le/k/a/c/g;)V

    .line 34
    :cond_c
    invoke-virtual {p0, p2}, Le/k/a/c/d0/z/v$k;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    goto :goto_1

    .line 35
    :cond_d
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Character;

    :goto_1
    return-object p1

    .line 36
    :cond_e
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 37
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v2
.end method
