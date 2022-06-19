.class public final Le/k/a/c/n0/a0$a;
.super Le/k/a/b/u/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/n0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public m:Le/k/a/b/n;

.field public final n:Z

.field public final o:Z

.field public p:Le/k/a/c/n0/a0$b;

.field public q:I

.field public r:Le/k/a/c/n0/b0;

.field public s:Z

.field public transient t:Le/k/a/b/a0/c;

.field public u:Le/k/a/b/h;


# direct methods
.method public constructor <init>(Le/k/a/c/n0/a0$b;Le/k/a/b/n;ZZLe/k/a/b/l;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/k/a/b/u/c;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/k/a/c/n0/a0$a;->u:Le/k/a/b/h;

    .line 3
    iput-object p1, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Le/k/a/c/n0/a0$a;->q:I

    .line 5
    iput-object p2, p0, Le/k/a/c/n0/a0$a;->m:Le/k/a/b/n;

    if-nez p5, :cond_0

    .line 6
    new-instance p1, Le/k/a/c/n0/b0;

    invoke-direct {p1}, Le/k/a/c/n0/b0;-><init>()V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Le/k/a/c/n0/b0;

    invoke-direct {p1, p5, v0}, Le/k/a/c/n0/b0;-><init>(Le/k/a/b/l;Le/k/a/b/h;)V

    .line 8
    :goto_0
    iput-object p1, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 9
    iput-boolean p3, p0, Le/k/a/c/n0/a0$a;->n:Z

    .line 10
    iput-boolean p4, p0, Le/k/a/c/n0/a0$a;->o:Z

    return-void
.end method


# virtual methods
.method public B0()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->F0()Ljava/lang/Number;

    move-result-object v0

    .line 3
    :goto_0
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_b

    .line 4
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    goto :goto_6

    .line 5
    :cond_3
    instance-of v1, v0, Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    move-object v1, v0

    check-cast v1, Ljava/math/BigInteger;

    .line 7
    sget-object v3, Le/k/a/b/u/c;->g:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_4

    sget-object v3, Le/k/a/b/u/c;->h:Ljava/math/BigInteger;

    .line 8
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/u/c;->L2()V

    throw v2

    .line 10
    :cond_5
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_9

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_8

    .line 12
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    .line 13
    sget-object v3, Le/k/a/b/u/c;->i:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_7

    sget-object v3, Le/k/a/b/u/c;->j:Ljava/math/BigDecimal;

    .line 14
    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 15
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_5

    .line 16
    :cond_7
    invoke-virtual {p0}, Le/k/a/b/u/c;->L2()V

    throw v2

    .line 17
    :cond_8
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v2

    .line 18
    :cond_9
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_a

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_a

    double-to-long v0, v0

    :goto_5
    return-wide v0

    .line 19
    :cond_a
    invoke-virtual {p0}, Le/k/a/b/u/c;->L2()V

    throw v2

    .line 20
    :cond_b
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public D0()Le/k/a/b/j$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j$b;->a:Le/k/a/b/j$b;

    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->F0()Ljava/lang/Number;

    move-result-object v1

    .line 2
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    return-object v0

    .line 3
    :cond_0
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    sget-object v0, Le/k/a/b/j$b;->b:Le/k/a/b/j$b;

    return-object v0

    .line 4
    :cond_1
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_2

    sget-object v0, Le/k/a/b/j$b;->e:Le/k/a/b/j$b;

    return-object v0

    .line 5
    :cond_2
    instance-of v2, v1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_3

    sget-object v0, Le/k/a/b/j$b;->f:Le/k/a/b/j$b;

    return-object v0

    .line 6
    :cond_3
    instance-of v2, v1, Ljava/math/BigInteger;

    if-eqz v2, :cond_4

    sget-object v0, Le/k/a/b/j$b;->c:Le/k/a/b/j$b;

    return-object v0

    .line 7
    :cond_4
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_5

    sget-object v0, Le/k/a/b/j$b;->d:Le/k/a/b/j$b;

    return-object v0

    .line 8
    :cond_5
    instance-of v1, v1, Ljava/lang/Short;

    if-eqz v1, :cond_6

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public E()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->F0()Ljava/lang/Number;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->D0()Le/k/a/b/j$b;

    move-result-object v1

    sget-object v2, Le/k/a/b/j$b;->f:Le/k/a/b/j$b;

    if-ne v1, v2, :cond_1

    .line 5
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final F0()Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, v0, Le/k/a/b/m;->g:Z

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 6
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Ljava/lang/String;

    const/16 v1, 0x2e

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 9
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 10
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error: entry should be a Number, but is of type "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "Current token ("

    .line 13
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not numeric, cannot use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Le/k/a/b/i;

    invoke-direct {v1, p0, v0}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 15
    throw v1
.end method

.method public I(Le/k/a/b/a;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->o:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, [B

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_3

    .line 6
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->U0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget-object v2, p0, Le/k/a/c/n0/a0$a;->t:Le/k/a/b/a0/c;

    if-nez v2, :cond_2

    .line 8
    new-instance v2, Le/k/a/b/a0/c;

    const/16 v3, 0x64

    .line 9
    invoke-direct {v2, v1, v3}, Le/k/a/b/a0/c;-><init>(Le/k/a/b/a0/a;I)V

    .line 10
    iput-object v2, p0, Le/k/a/c/n0/a0$a;->t:Le/k/a/b/a0/c;

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v2}, Le/k/a/b/a0/c;->l()V

    .line 12
    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Le/k/a/b/u/c;->x2(Ljava/lang/String;Le/k/a/b/a0/c;Le/k/a/b/a;)V

    .line 13
    invoke-virtual {v2}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Current token ("

    .line 14
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), cannot access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 16
    throw v0
.end method

.method public J0()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0$a;->q:I

    invoke-virtual {v0, v1}, Le/k/a/c/n0/a0$b;->f(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public K()Le/k/a/b/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->m:Le/k/a/b/n;

    return-object v0
.end method

.method public K0()Le/k/a/b/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    return-object v0
.end method

.method public L0()Le/k/a/b/a0/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/b/a0/i<",
            "Le/k/a/b/q;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j;->b:Le/k/a/b/a0/i;

    return-object v0
.end method

.method public M1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final O2()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0$a;->q:I

    .line 2
    iget-object v0, v0, Le/k/a/c/n0/a0$b;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public P()Le/k/a/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->u:Le/k/a/b/h;

    if-nez v0, :cond_0

    sget-object v0, Le/k/a/b/h;->f:Le/k/a/b/h;

    :cond_0
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public U0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    return-object v2

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 4
    iget-object v0, v0, Le/k/a/b/m;->a:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    .line 6
    sget-object v1, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    .line 8
    :cond_4
    :goto_1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 10
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11
    :cond_5
    sget-object v1, Le/k/a/c/n0/g;->a:[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_6

    goto :goto_2

    .line 12
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public W0()[C
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->U0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public Z1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 2
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v1, v0, Ljava/lang/Double;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 4
    check-cast v0, Ljava/lang/Double;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2

    .line 6
    :cond_2
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_4

    .line 7
    check-cast v0, Ljava/lang/Float;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0$a;->o:Z

    return v0
.end method

.method public b2()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0$a;->s:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget v1, p0, Le/k/a/c/n0/a0$a;->q:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 3
    invoke-virtual {v0, v1}, Le/k/a/c/n0/a0$b;->k(I)Le/k/a/b/m;

    move-result-object v0

    sget-object v2, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v2, :cond_2

    .line 4
    iput v1, p0, Le/k/a/c/n0/a0$a;->q:I

    .line 5
    iput-object v2, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 6
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    .line 7
    iget-object v0, v0, Le/k/a/c/n0/a0$b;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v1, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 10
    iput-object v0, v1, Le/k/a/c/n0/b0;->e:Ljava/lang/String;

    return-object v0

    .line 11
    :cond_2
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->i2()Le/k/a/b/m;

    move-result-object v0

    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0$a;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/k/a/c/n0/a0$a;->s:Z

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0$a;->n:Z

    return v0
.end method

.method public i2()Le/k/a/b/m;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/n0/a0$a;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v2, p0, Le/k/a/c/n0/a0$a;->q:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Le/k/a/c/n0/a0$a;->q:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_1

    const/4 v2, 0x0

    .line 3
    iput v2, p0, Le/k/a/c/n0/a0$a;->q:I

    .line 4
    iget-object v0, v0, Le/k/a/c/n0/a0$b;->a:Le/k/a/c/n0/a0$b;

    .line 5
    iput-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    if-nez v0, :cond_1

    return-object v1

    .line 6
    :cond_1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0$a;->q:I

    invoke-virtual {v0, v1}, Le/k/a/c/n0/a0$b;->k(I)Le/k/a/b/m;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 7
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :goto_0
    iget-object v1, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 11
    iput-object v0, v1, Le/k/a/c/n0/b0;->e:Ljava/lang/String;

    goto :goto_3

    .line 12
    :cond_3
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    const/4 v2, -0x1

    if-ne v0, v1, :cond_4

    .line 13
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 14
    iget v1, v0, Le/k/a/b/l;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Le/k/a/b/l;->b:I

    .line 15
    new-instance v1, Le/k/a/c/n0/b0;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v3, v2}, Le/k/a/c/n0/b0;-><init>(Le/k/a/c/n0/b0;II)V

    .line 16
    iput-object v1, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    goto :goto_3

    .line 17
    :cond_4
    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_5

    .line 18
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 19
    iget v1, v0, Le/k/a/b/l;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Le/k/a/b/l;->b:I

    .line 20
    new-instance v1, Le/k/a/c/n0/b0;

    invoke-direct {v1, v0, v3, v2}, Le/k/a/c/n0/b0;-><init>(Le/k/a/c/n0/b0;II)V

    .line 21
    iput-object v1, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    goto :goto_3

    .line 22
    :cond_5
    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-eq v0, v1, :cond_7

    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v0, v1, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 24
    iget v1, v0, Le/k/a/b/l;->b:I

    add-int/2addr v1, v3

    iput v1, v0, Le/k/a/b/l;->b:I

    goto :goto_3

    .line 25
    :cond_7
    :goto_1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 26
    iget-object v1, v0, Le/k/a/c/n0/b0;->c:Le/k/a/b/l;

    instance-of v2, v1, Le/k/a/c/n0/b0;

    if-eqz v2, :cond_8

    .line 27
    check-cast v1, Le/k/a/c/n0/b0;

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    .line 28
    new-instance v1, Le/k/a/c/n0/b0;

    invoke-direct {v1}, Le/k/a/c/n0/b0;-><init>()V

    goto :goto_2

    .line 29
    :cond_9
    new-instance v2, Le/k/a/c/n0/b0;

    iget-object v0, v0, Le/k/a/c/n0/b0;->d:Le/k/a/b/h;

    invoke-direct {v2, v1, v0}, Le/k/a/c/n0/b0;-><init>(Le/k/a/b/l;Le/k/a/b/h;)V

    move-object v1, v2

    .line 30
    :goto_2
    iput-object v1, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 31
    :goto_3
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0

    :cond_a
    :goto_4
    return-object v1
.end method

.method public j1()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->U0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 3
    iget-object v0, v0, Le/k/a/c/n0/b0;->e:Ljava/lang/String;

    return-object v0

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->r:Le/k/a/c/n0/b0;

    .line 5
    iget-object v0, v0, Le/k/a/c/n0/b0;->c:Le/k/a/b/l;

    .line 6
    invoke-virtual {v0}, Le/k/a/b/l;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k0()Ljava/math/BigDecimal;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->F0()Ljava/lang/Number;

    move-result-object v0

    .line 2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ljava/math/BigDecimal;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->D0()Le/k/a/b/j$b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    new-instance v1, Ljava/math/BigDecimal;

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v1

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public l1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m1()Le/k/a/b/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->P()Le/k/a/b/h;

    move-result-object v0

    return-object v0
.end method

.method public n0()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->F0()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public n1()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/a0$a;->p:Le/k/a/c/n0/a0$b;

    iget v1, p0, Le/k/a/c/n0/a0$a;->q:I

    invoke-virtual {v0, v1}, Le/k/a/c/n0/a0$b;->g(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public p0()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->o:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r2(Le/k/a/b/a;Ljava/io/OutputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/c/n0/a0$a;->I(Le/k/a/b/a;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    array-length v1, p1

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 3
    array-length p1, p1

    return p1

    :cond_0
    return v0
.end method

.method public t0()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->F0()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public z0()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->O2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/k/a/c/n0/a0$a;->F0()Ljava/lang/Number;

    move-result-object v0

    .line 3
    :goto_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_d

    .line 4
    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_3

    goto/16 :goto_6

    .line 5
    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 6
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v3, v0

    int-to-long v4, v3

    cmp-long v0, v4, v0

    if-nez v0, :cond_4

    goto :goto_5

    .line 7
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/u/c;->J2()V

    throw v2

    .line 8
    :cond_5
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_7

    .line 9
    move-object v1, v0

    check-cast v1, Ljava/math/BigInteger;

    .line 10
    sget-object v3, Le/k/a/b/u/c;->e:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_6

    sget-object v3, Le/k/a/b/u/c;->f:Ljava/math/BigInteger;

    .line 11
    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_6

    goto :goto_3

    .line 12
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/u/c;->J2()V

    throw v2

    .line 13
    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_b

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_8

    goto :goto_4

    .line 14
    :cond_8
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_a

    .line 15
    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    .line 16
    sget-object v3, Le/k/a/b/u/c;->k:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_9

    sget-object v3, Le/k/a/b/u/c;->l:Ljava/math/BigDecimal;

    .line 17
    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 18
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v3

    goto :goto_5

    .line 19
    :cond_9
    invoke-virtual {p0}, Le/k/a/b/u/c;->J2()V

    throw v2

    .line 20
    :cond_a
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v2

    .line 21
    :cond_b
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_c

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_c

    double-to-int v3, v0

    :goto_5
    return v3

    .line 22
    :cond_c
    invoke-virtual {p0}, Le/k/a/b/u/c;->J2()V

    throw v2

    .line 23
    :cond_d
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public z2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    const/4 v0, 0x0

    throw v0
.end method
