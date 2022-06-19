.class public abstract Le/k/a/b/u/a;
.super Le/k/a/b/g;
.source "SourceFile"


# static fields
.field public static final h:I


# instance fields
.field public d:Le/k/a/b/n;

.field public e:I

.field public f:Z

.field public g:Le/k/a/b/x/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Le/k/a/b/g$a;->i:Le/k/a/b/g$a;

    .line 2
    iget v0, v0, Le/k/a/b/g$a;->b:I

    .line 3
    sget-object v1, Le/k/a/b/g$a;->h:Le/k/a/b/g$a;

    .line 4
    iget v1, v1, Le/k/a/b/g$a;->b:I

    or-int/2addr v0, v1

    .line 5
    sget-object v1, Le/k/a/b/g$a;->k:Le/k/a/b/g$a;

    .line 6
    iget v1, v1, Le/k/a/b/g$a;->b:I

    or-int/2addr v0, v1

    .line 7
    sput v0, Le/k/a/b/u/a;->h:I

    return-void
.end method

.method public constructor <init>(ILe/k/a/b/n;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/k/a/b/g;-><init>()V

    .line 2
    iput p1, p0, Le/k/a/b/u/a;->e:I

    .line 3
    iput-object p2, p0, Le/k/a/b/u/a;->d:Le/k/a/b/n;

    .line 4
    sget-object p2, Le/k/a/b/g$a;->k:Le/k/a/b/g$a;

    .line 5
    iget p2, p2, Le/k/a/b/g$a;->b:I

    and-int/2addr p2, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Le/k/a/b/x/b;

    invoke-direct {p2, p0}, Le/k/a/b/x/b;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 7
    :goto_1
    invoke-static {p2}, Le/k/a/b/x/f;->n(Le/k/a/b/x/b;)Le/k/a/b/x/f;

    move-result-object p2

    iput-object p2, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 8
    sget-object p2, Le/k/a/b/g$a;->i:Le/k/a/b/g$a;

    .line 9
    iget p2, p2, Le/k/a/b/g$a;->b:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 10
    :goto_2
    iput-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    return-void
.end method


# virtual methods
.method public B1(Le/k/a/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write raw value"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/u/a;->i2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/g;->n1(Le/k/a/b/p;)V

    return-void
.end method

.method public final E(Le/k/a/b/g$a;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/u/a;->e:I

    .line 2
    iget p1, p1, Le/k/a/b/g$a;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public E1(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "write raw value"

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/u/a;->i2(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/g;->s1(Ljava/lang/String;)V

    return-void
.end method

.method public I(II)Le/k/a/b/g;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/b/u/a;->e:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    xor-int p2, v0, p1

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Le/k/a/b/u/a;->e:I

    .line 3
    invoke-virtual {p0, p1, p2}, Le/k/a/b/u/a;->h2(II)V

    :cond_0
    return-object p0
.end method

.method public J(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, v0, Le/k/a/b/x/f;->g:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public K(I)Le/k/a/b/g;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/a;->e:I

    xor-int/2addr v0, p1

    .line 2
    iput p1, p0, Le/k/a/b/u/a;->e:I

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, Le/k/a/b/u/a;->h2(II)V

    :cond_0
    return-object p0
.end method

.method public Y1(Le/k/a/b/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->D0()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/a;->d:Le/k/a/b/n;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0, p1}, Le/k/a/b/n;->b(Le/k/a/b/g;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No ObjectCodec defined"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b2(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/g$a;->j:Le/k/a/b/g$a;

    iget v1, p0, Le/k/a/b/u/a;->e:I

    invoke-virtual {v0, v1}, Le/k/a/b/g$a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    const/16 v1, -0x270f

    const/16 v2, 0x270f

    if-lt v0, v1, :cond_0

    if-gt v0, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]"

    .line 5
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Le/k/a/b/f;

    invoke-direct {v0, p1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw v0

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public h2(II)V
    .locals 4

    .line 1
    sget v0, Le/k/a/b/u/a;->h:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Le/k/a/b/g$a;->i:Le/k/a/b/g$a;

    .line 3
    iget v0, v0, Le/k/a/b/g$a;->b:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4
    :goto_0
    iput-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    .line 5
    sget-object v0, Le/k/a/b/g$a;->h:Le/k/a/b/g$a;

    .line 6
    iget v0, v0, Le/k/a/b/g$a;->b:I

    and-int v3, p2, v0

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    const/16 v0, 0x7f

    .line 7
    invoke-virtual {p0, v0}, Le/k/a/b/g;->P(I)Le/k/a/b/g;

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {p0, v2}, Le/k/a/b/g;->P(I)Le/k/a/b/g;

    .line 9
    :cond_5
    :goto_3
    sget-object v0, Le/k/a/b/g$a;->k:Le/k/a/b/g$a;

    .line 10
    iget v0, v0, Le/k/a/b/g$a;->b:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_6

    move p2, v1

    goto :goto_4

    :cond_6
    move p2, v2

    :goto_4
    if-eqz p2, :cond_9

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    if-eqz v1, :cond_8

    .line 11
    iget-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 12
    iget-object p2, p1, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-nez p2, :cond_9

    .line 13
    new-instance p2, Le/k/a/b/x/b;

    invoke-direct {p2, p0}, Le/k/a/b/x/b;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p1, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    .line 15
    iput-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    goto :goto_6

    .line 16
    :cond_8
    iget-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    const/4 p2, 0x0

    .line 17
    iput-object p2, p1, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    .line 18
    iput-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    :cond_9
    :goto_6
    return-void
.end method

.method public abstract i2(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public j1(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/k/a/b/g;->D0()V

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/a;->d:Le/k/a/b/n;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0, p1}, Le/k/a/b/n;->b(Le/k/a/b/g;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6
    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_c

    .line 7
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 8
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->J0(I)V

    goto/16 :goto_0

    .line 10
    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le/k/a/b/g;->K0(J)V

    goto/16 :goto_0

    .line 12
    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le/k/a/b/g;->F0(D)V

    goto/16 :goto_0

    .line 14
    :cond_5
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->G0(F)V

    goto/16 :goto_0

    .line 16
    :cond_6
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_7

    .line 17
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->W0(S)V

    goto :goto_0

    .line 18
    :cond_7
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    .line 19
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->W0(S)V

    goto :goto_0

    .line 20
    :cond_8
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    .line 21
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Le/k/a/b/g;->U0(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 22
    :cond_9
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_a

    .line 23
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Le/k/a/b/g;->Q0(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 24
    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_b

    .line 25
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->J0(I)V

    goto :goto_0

    .line 26
    :cond_b
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_f

    .line 27
    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Le/k/a/b/g;->K0(J)V

    goto :goto_0

    .line 28
    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    .line 29
    check-cast p1, [B

    invoke-virtual {p0, p1}, Le/k/a/b/g;->W([B)V

    goto :goto_0

    .line 30
    :cond_d
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->k0(Z)V

    goto :goto_0

    .line 32
    :cond_e
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_f

    .line 33
    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p0, p1}, Le/k/a/b/g;->k0(Z)V

    :goto_0
    return-void

    .line 34
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    .line 35
    invoke-static {p1, v1, v2}, Le/d/c/a/a;->d2(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(Le/k/a/b/g$a;)Le/k/a/b/g;
    .locals 3

    .line 1
    iget v0, p1, Le/k/a/b/g$a;->b:I

    .line 2
    iget v1, p0, Le/k/a/b/u/a;->e:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Le/k/a/b/u/a;->e:I

    .line 3
    sget v1, Le/k/a/b/u/a;->h:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Le/k/a/b/g$a;->i:Le/k/a/b/g$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 5
    iput-boolean v1, p0, Le/k/a/b/u/a;->f:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Le/k/a/b/g$a;->h:Le/k/a/b/g$a;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Le/k/a/b/g;->P(I)Le/k/a/b/g;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Le/k/a/b/g$a;->k:Le/k/a/b/g$a;

    if-ne p1, v0, :cond_2

    .line 9
    iget-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p1, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    .line 11
    iput-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/b/u/a;->e:I

    return v0
.end method

.method public s()Le/k/a/b/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    return-object v0
.end method
