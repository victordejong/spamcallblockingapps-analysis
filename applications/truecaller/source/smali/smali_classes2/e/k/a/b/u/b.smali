.class public abstract Le/k/a/b/u/b;
.super Le/k/a/b/u/c;
.source "SourceFile"


# static fields
.field public static final P:Le/k/a/b/a0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/b/a0/i<",
            "Le/k/a/b/q;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Z

.field public B:Le/k/a/b/a0/c;

.field public C:[B

.field public D:I

.field public E:I

.field public J:J

.field public K:D

.field public L:Ljava/math/BigInteger;

.field public M:Ljava/math/BigDecimal;

.field public N:Z

.field public O:I

.field public final m:Le/k/a/b/w/b;

.field public n:Z

.field public o:I

.field public p:I

.field public q:J

.field public r:I

.field public s:I

.field public t:J

.field public u:I

.field public v:I

.field public w:Le/k/a/b/x/d;

.field public x:Le/k/a/b/m;

.field public final y:Le/k/a/b/a0/n;

.field public z:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/j;->b:Le/k/a/b/a0/i;

    sput-object v0, Le/k/a/b/u/b;->P:Le/k/a/b/a0/i;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/w/b;I)V
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Le/k/a/b/u/c;-><init>(I)V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Le/k/a/b/u/b;->r:I

    .line 3
    iput v0, p0, Le/k/a/b/u/b;->u:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Le/k/a/b/u/b;->D:I

    .line 5
    iput-object p1, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    .line 6
    new-instance v2, Le/k/a/b/a0/n;

    iget-object p1, p1, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    invoke-direct {v2, p1}, Le/k/a/b/a0/n;-><init>(Le/k/a/b/a0/a;)V

    .line 7
    iput-object v2, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 8
    sget-object p1, Le/k/a/b/j$a;->o:Le/k/a/b/j$a;

    .line 9
    iget p1, p1, Le/k/a/b/j$a;->b:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 10
    new-instance p1, Le/k/a/b/x/b;

    invoke-direct {p1, p0}, Le/k/a/b/x/b;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v2, p1

    .line 11
    new-instance p1, Le/k/a/b/x/d;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/b/x/d;-><init>(Le/k/a/b/x/d;Le/k/a/b/x/b;III)V

    .line 12
    iput-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    return-void
.end method

.method public static e3([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1
    new-array p0, p1, [I

    return-object p0

    .line 2
    :cond_0
    array-length v0, p0

    add-int/2addr v0, p1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B0()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Le/k/a/b/u/b;->Y2(I)V

    .line 3
    :cond_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_8

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->E:I

    int-to-long v2, v0

    iput-wide v2, p0, Le/k/a/b/u/b;->J:J

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 5
    sget-object v0, Le/k/a/b/u/c;->g:Ljava/math/BigInteger;

    iget-object v2, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Le/k/a/b/u/c;->h:Ljava/math/BigInteger;

    iget-object v2, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    .line 6
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 7
    iget-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Le/k/a/b/u/b;->J:J

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/k/a/b/u/c;->L2()V

    throw v3

    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_5

    .line 9
    iget-wide v4, p0, Le/k/a/b/u/b;->K:D

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_4

    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_4

    double-to-long v2, v4

    .line 10
    iput-wide v2, p0, Le/k/a/b/u/b;->J:J

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/u/c;->L2()V

    throw v3

    :cond_5
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 12
    sget-object v0, Le/k/a/b/u/c;->i:Ljava/math/BigDecimal;

    iget-object v2, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_6

    sget-object v0, Le/k/a/b/u/c;->j:Ljava/math/BigDecimal;

    iget-object v2, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    .line 13
    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 14
    iget-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Le/k/a/b/u/b;->J:J

    .line 15
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    or-int/2addr v0, v1

    iput v0, p0, Le/k/a/b/u/b;->D:I

    goto :goto_1

    .line 16
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/u/c;->L2()V

    throw v3

    .line 17
    :cond_7
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v3

    .line 18
    :cond_8
    :goto_1
    iget-wide v0, p0, Le/k/a/b/u/b;->J:J

    return-wide v0
.end method

.method public D0()Le/k/a/b/j$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/b/u/b;->Y2(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-ne v0, v1, :cond_3

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 5
    sget-object v0, Le/k/a/b/j$b;->a:Le/k/a/b/j$b;

    return-object v0

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Le/k/a/b/j$b;->b:Le/k/a/b/j$b;

    return-object v0

    .line 7
    :cond_2
    sget-object v0, Le/k/a/b/j$b;->c:Le/k/a/b/j$b;

    return-object v0

    .line 8
    :cond_3
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 9
    sget-object v0, Le/k/a/b/j$b;->f:Le/k/a/b/j$b;

    return-object v0

    .line 10
    :cond_4
    sget-object v0, Le/k/a/b/j$b;->e:Le/k/a/b/j$b;

    return-object v0
.end method

.method public E()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_5

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Le/k/a/b/u/b;->Y2(I)V

    .line 3
    :cond_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_5

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 5
    iget-wide v2, p0, Le/k/a/b/u/b;->J:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    .line 6
    iget v0, p0, Le/k/a/b/u/b;->E:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 7
    iget-wide v2, p0, Le/k/a/b/u/b;->K:D

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    .line 8
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    or-int/2addr v0, v1

    iput v0, p0, Le/k/a/b/u/b;->D:I

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    const/4 v0, 0x0

    throw v0

    .line 10
    :cond_5
    :goto_1
    iget-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    return-object v0
.end method

.method public F0()Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Le/k/a/b/u/b;->Y2(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 4
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget v0, p0, Le/k/a/b/u/b;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 6
    iget-wide v0, p0, Le/k/a/b/u/b;->J:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    return-object v0

    .line 8
    :cond_3
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v2

    .line 9
    :cond_4
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    .line 10
    iget-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    return-object v0

    :cond_5
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    .line 11
    iget-wide v0, p0, Le/k/a/b/u/b;->K:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 12
    :cond_6
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v2
.end method

.method public G0()Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 2
    iget v0, p0, Le/k/a/b/u/b;->D:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le/k/a/b/u/b;->Y2(I)V

    .line 4
    :cond_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget v0, p0, Le/k/a/b/u/b;->E:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 6
    iget-wide v0, p0, Le/k/a/b/u/b;->J:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    return-object v0

    .line 8
    :cond_3
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v2

    .line 9
    :cond_4
    iget v0, p0, Le/k/a/b/u/b;->D:I

    if-nez v0, :cond_5

    const/16 v0, 0x10

    .line 10
    invoke-virtual {p0, v0}, Le/k/a/b/u/b;->Y2(I)V

    .line 11
    :cond_5
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6

    .line 12
    iget-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    return-object v0

    :cond_6
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    .line 13
    iget-wide v0, p0, Le/k/a/b/u/b;->K:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 14
    :cond_7
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v2
.end method

.method public K0()Le/k/a/b/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    return-object v0
.end method

.method public M1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Le/k/a/b/u/b;->A:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public O2(II)V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/j$a;->o:Le/k/a/b/j$a;

    .line 2
    iget v0, v0, Le/k/a/b/j$a;->b:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 4
    iget-object p2, p1, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    if-nez p2, :cond_0

    .line 5
    new-instance p2, Le/k/a/b/x/b;

    invoke-direct {p2, p0}, Le/k/a/b/x/b;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object p2, p1, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    .line 7
    iput-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8
    iput-object p2, p1, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    .line 9
    iput-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract P2()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public Q()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-eq v0, v1, :cond_0

    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 3
    iget-object v0, v0, Le/k/a/b/x/d;->c:Le/k/a/b/x/d;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 6
    iget-object v0, v0, Le/k/a/b/x/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final Q2(Le/k/a/b/a;CI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x5c

    if-ne p2, v1, :cond_3

    .line 1
    invoke-virtual {p0}, Le/k/a/b/u/b;->S2()C

    move-result p2

    const/16 v1, 0x20

    if-gt p2, v1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Le/k/a/b/a;->e(C)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const/4 v2, 0x2

    if-lt p3, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Le/k/a/b/u/b;->f3(Le/k/a/b/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 4
    throw p1

    :cond_2
    :goto_0
    return v1

    .line 5
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Le/k/a/b/u/b;->f3(Le/k/a/b/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 6
    throw p1
.end method

.method public final R2(Le/k/a/b/a;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x5c

    if-ne p2, v1, :cond_3

    .line 1
    invoke-virtual {p0}, Le/k/a/b/u/b;->S2()C

    move-result p2

    const/16 v1, 0x20

    if-gt p2, v1, :cond_0

    if-nez p3, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1, p2}, Le/k/a/b/a;->f(I)I

    move-result v1

    if-gez v1, :cond_2

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Le/k/a/b/u/b;->f3(Le/k/a/b/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 4
    throw p1

    :cond_2
    :goto_0
    return v1

    .line 5
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Le/k/a/b/u/b;->f3(Le/k/a/b/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    .line 6
    throw p1
.end method

.method public abstract S2()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public T2()Le/k/a/b/a0/c;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->B:Le/k/a/b/a0/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/k/a/b/a0/c;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v2, v1}, Le/k/a/b/a0/c;-><init>(Le/k/a/b/a0/a;I)V

    .line 4
    iput-object v0, p0, Le/k/a/b/u/b;->B:Le/k/a/b/a0/c;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Le/k/a/b/a0/c;->l()V

    .line 6
    :goto_0
    iget-object v0, p0, Le/k/a/b/u/b;->B:Le/k/a/b/a0/c;

    return-object v0
.end method

.method public U2()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Le/k/a/b/j$a;->q:Le/k/a/b/j$a;

    iget v1, p0, Le/k/a/b/j;->a:I

    invoke-virtual {v0, v1}, Le/k/a/b/j$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    .line 3
    iget-object v0, v0, Le/k/a/b/w/b;->a:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public V2(Le/k/a/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/a;->l()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public W2(C)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j$a;->i:Le/k/a/b/j$a;

    invoke-virtual {p0, v0}, Le/k/a/b/j;->S1(Le/k/a/b/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Le/k/a/b/j$a;->g:Le/k/a/b/j$a;

    invoke-virtual {p0, v0}, Le/k/a/b/j;->S1(Le/k/a/b/j$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const-string v0, "Unrecognized character escape "

    .line 3
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Le/k/a/b/u/c;->y2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 5
    throw v0
.end method

.method public X2()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/b/u/b;->n:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Le/k/a/b/u/b;->O:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    iget-boolean v1, p0, Le/k/a/b/u/b;->N:Z

    invoke-virtual {v0, v1}, Le/k/a/b/a0/n;->g(Z)I

    move-result v0

    .line 5
    iput v0, p0, Le/k/a/b/u/b;->E:I

    .line 6
    iput v2, p0, Le/k/a/b/u/b;->D:I

    return v0

    .line 7
    :cond_0
    invoke-virtual {p0, v2}, Le/k/a/b/u/b;->Y2(I)V

    .line 8
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0}, Le/k/a/b/u/b;->d3()V

    .line 10
    :cond_1
    iget v0, p0, Le/k/a/b/u/b;->E:I

    return v0

    .line 11
    :cond_2
    new-instance v0, Le/k/a/b/i;

    const-string v1, "Internal error: _parseNumericValue called when parser instance closed"

    invoke-direct {v0, p0, v1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 12
    throw v0
.end method

.method public Y2(I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 1
    iget-boolean v2, v1, Le/k/a/b/u/b;->n:Z

    if-nez v2, :cond_17

    .line 2
    iget-object v2, v1, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v3, Le/k/a/b/m;->q:Le/k/a/b/m;

    const/16 v4, 0x8

    const-string v5, ")"

    const-string v6, "Malformed numeric value ("

    const/4 v7, 0x0

    if-ne v2, v3, :cond_14

    .line 3
    iget v2, v1, Le/k/a/b/u/b;->O:I

    const/16 v3, 0x9

    const/4 v8, 0x1

    if-gt v2, v3, :cond_0

    .line 4
    iget-object v0, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    iget-boolean v2, v1, Le/k/a/b/u/b;->N:Z

    invoke-virtual {v0, v2}, Le/k/a/b/a0/n;->g(Z)I

    move-result v0

    .line 5
    iput v0, v1, Le/k/a/b/u/b;->E:I

    .line 6
    iput v8, v1, Le/k/a/b/u/b;->D:I

    return-void

    :cond_0
    const/16 v3, 0x12

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-gt v2, v3, :cond_6

    .line 7
    iget-object v0, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    iget-boolean v3, v1, Le/k/a/b/u/b;->N:Z

    .line 8
    iget v4, v0, Le/k/a/b/a0/n;->c:I

    if-ltz v4, :cond_2

    iget-object v5, v0, Le/k/a/b/a0/n;->b:[C

    if-eqz v5, :cond_2

    if-eqz v3, :cond_1

    add-int/2addr v4, v8

    .line 9
    iget v0, v0, Le/k/a/b/a0/n;->d:I

    sub-int/2addr v0, v8

    invoke-static {v5, v4, v0}, Le/k/a/b/w/f;->i([CII)J

    move-result-wide v3

    goto :goto_0

    .line 10
    :cond_1
    iget v0, v0, Le/k/a/b/a0/n;->d:I

    invoke-static {v5, v4, v0}, Le/k/a/b/w/f;->i([CII)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 11
    iget-object v3, v0, Le/k/a/b/a0/n;->h:[C

    iget v0, v0, Le/k/a/b/a0/n;->i:I

    sub-int/2addr v0, v8

    invoke-static {v3, v8, v0}, Le/k/a/b/w/f;->i([CII)J

    move-result-wide v3

    :goto_0
    neg-long v3, v3

    goto :goto_1

    .line 12
    :cond_3
    iget-object v3, v0, Le/k/a/b/a0/n;->h:[C

    iget v0, v0, Le/k/a/b/a0/n;->i:I

    invoke-static {v3, v10, v0}, Le/k/a/b/w/f;->i([CII)J

    move-result-wide v3

    :goto_1
    const/16 v0, 0xa

    if-ne v2, v0, :cond_5

    .line 13
    iget-boolean v0, v1, Le/k/a/b/u/b;->N:Z

    if-eqz v0, :cond_4

    const-wide/32 v5, -0x80000000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5

    long-to-int v0, v3

    .line 14
    iput v0, v1, Le/k/a/b/u/b;->E:I

    .line 15
    iput v8, v1, Le/k/a/b/u/b;->D:I

    return-void

    :cond_4
    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_5

    long-to-int v0, v3

    .line 16
    iput v0, v1, Le/k/a/b/u/b;->E:I

    .line 17
    iput v8, v1, Le/k/a/b/u/b;->D:I

    return-void

    .line 18
    :cond_5
    iput-wide v3, v1, Le/k/a/b/u/b;->J:J

    .line 19
    iput v9, v1, Le/k/a/b/u/b;->D:I

    return-void

    .line 20
    :cond_6
    iget-object v2, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v2}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v2

    .line 21
    :try_start_0
    iget v3, v1, Le/k/a/b/u/b;->O:I

    .line 22
    iget-object v11, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v11}, Le/k/a/b/a0/n;->n()[C

    move-result-object v11

    .line 23
    iget-object v12, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v12}, Le/k/a/b/a0/n;->o()I

    move-result v12

    .line 24
    iget-boolean v13, v1, Le/k/a/b/u/b;->N:Z

    if-eqz v13, :cond_7

    add-int/lit8 v12, v12, 0x1

    :cond_7
    if-eqz v13, :cond_8

    .line 25
    sget-object v13, Le/k/a/b/w/f;->a:Ljava/lang/String;

    goto :goto_2

    :cond_8
    sget-object v13, Le/k/a/b/w/f;->b:Ljava/lang/String;

    .line 26
    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v3, v14, :cond_9

    goto :goto_4

    :cond_9
    if-le v3, v14, :cond_a

    goto :goto_5

    :cond_a
    move v3, v10

    :goto_3
    if-ge v3, v14, :cond_c

    add-int v15, v12, v3

    .line 27
    aget-char v15, v11, v15

    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    sub-int v15, v15, v16

    if-eqz v15, :cond_b

    if-gez v15, :cond_d

    goto :goto_4

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    move v10, v8

    :cond_d
    :goto_5
    if-eqz v10, :cond_e

    .line 28
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Le/k/a/b/u/b;->J:J

    .line 29
    iput v9, v1, Le/k/a/b/u/b;->D:I

    goto :goto_7

    :cond_e
    if-eq v0, v8, :cond_12

    if-ne v0, v9, :cond_f

    goto :goto_8

    :cond_f
    if-eq v0, v4, :cond_11

    const/16 v3, 0x20

    if-ne v0, v3, :cond_10

    goto :goto_6

    .line 30
    :cond_10
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    const/4 v0, 0x4

    .line 31
    iput v0, v1, Le/k/a/b/u/b;->D:I

    goto :goto_7

    .line 32
    :cond_11
    :goto_6
    invoke-static {v2}, Le/k/a/b/w/f;->e(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v1, Le/k/a/b/u/b;->K:D

    .line 33
    iput v4, v1, Le/k/a/b/u/b;->D:I

    :goto_7
    return-void

    :cond_12
    :goto_8
    if-ne v0, v8, :cond_13

    .line 34
    iget-object v0, v1, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 35
    invoke-virtual {v1, v2, v0}, Le/k/a/b/u/c;->K2(Ljava/lang/String;Le/k/a/b/m;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    throw v7

    .line 36
    :cond_13
    :try_start_1
    invoke-virtual {v1, v2}, Le/k/a/b/u/c;->M2(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    throw v7

    :catch_0
    move-exception v0

    .line 37
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Le/k/a/b/u/c;->B2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v3, Le/k/a/b/i;

    invoke-direct {v3, v1, v2, v0}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    throw v3

    .line 40
    :cond_14
    sget-object v3, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne v2, v3, :cond_16

    const/16 v2, 0x10

    if-ne v0, v2, :cond_15

    .line 41
    :try_start_2
    iget-object v0, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->f()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, v1, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    .line 42
    iput v2, v1, Le/k/a/b/u/b;->D:I

    goto :goto_9

    .line 43
    :cond_15
    iget-object v0, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    .line 44
    invoke-virtual {v0}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/k/a/b/w/f;->e(Ljava/lang/String;)D

    move-result-wide v2

    .line 45
    iput-wide v2, v1, Le/k/a/b/u/b;->K:D

    .line 46
    iput v4, v1, Le/k/a/b/u/b;->D:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_9
    return-void

    :catch_1
    move-exception v0

    .line 47
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v3}, Le/k/a/b/a0/n;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Le/k/a/b/u/c;->B2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v3, Le/k/a/b/i;

    invoke-direct {v3, v1, v2, v0}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    throw v3

    :cond_16
    const-string v0, "Current token (%s) not numeric, can not use numeric value accessors"

    .line 50
    invoke-virtual {v1, v0, v2}, Le/k/a/b/u/c;->C2(Ljava/lang/String;Ljava/lang/Object;)V

    throw v7

    .line 51
    :cond_17
    new-instance v0, Le/k/a/b/i;

    const-string v2, "Internal error: _parseNumericValue called when parser instance closed"

    invoke-direct {v0, v1, v2}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 52
    throw v0
.end method

.method public Z1()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Le/k/a/b/u/b;->K:D

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public Z2()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    invoke-virtual {v0}, Le/k/a/b/a0/n;->p()V

    .line 2
    iget-object v0, p0, Le/k/a/b/u/b;->z:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Le/k/a/b/u/b;->z:[C

    .line 4
    iget-object v2, p0, Le/k/a/b/u/b;->m:Le/k/a/b/w/b;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v3, v2, Le/k/a/b/w/b;->j:[C

    invoke-virtual {v2, v0, v3}, Le/k/a/b/w/b;->c([C[C)V

    .line 7
    iput-object v1, v2, Le/k/a/b/w/b;->j:[C

    .line 8
    iget-object v1, v2, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    const/4 v2, 0x3

    .line 9
    iget-object v1, v1, Le/k/a/b/a0/a;->b:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a3(IC)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    int-to-char p1, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {v0}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p0}, Le/k/a/b/u/b;->U2()Ljava/lang/Object;

    move-result-object v3

    .line 3
    new-instance p1, Le/k/a/b/h;

    iget v6, v0, Le/k/a/b/x/d;->h:I

    iget v7, v0, Le/k/a/b/x/d;->i:I

    const-wide/16 v4, -0x1

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Le/k/a/b/h;-><init>(Ljava/lang/Object;JII)V

    const/4 p2, 0x3

    aput-object p1, v1, p2

    const-string p1, "Unexpected close marker \'%s\': expected \'%c\' (for %s starting at %s)"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Le/k/a/b/i;

    invoke-direct {p2, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 6
    throw p2
.end method

.method public b3(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j$a;->h:Le/k/a/b/j$a;

    invoke-virtual {p0, v0}, Le/k/a/b/j;->S1(Le/k/a/b/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    int-to-char p1, p1

    const-string v0, "Illegal unquoted character ("

    .line 2
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Le/k/a/b/u/c;->y2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Le/k/a/b/i;

    invoke-direct {p2, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 4
    throw p2
.end method

.method public c3()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/j$a;->l:Le/k/a/b/j$a;

    invoke-virtual {p0, v0}, Le/k/a/b/j;->S1(Le/k/a/b/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(JSON String, Number (or \'NaN\'/\'INF\'/\'+INF\'), Array, Object or token \'null\', \'true\' or \'false\')"

    return-object v0

    :cond_0
    const-string v0, "(JSON String, Number, Array, Object or token \'null\', \'true\' or \'false\')"

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/b/u/b;->n:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Le/k/a/b/u/b;->o:I

    iget v1, p0, Le/k/a/b/u/b;->p:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Le/k/a/b/u/b;->o:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/k/a/b/u/b;->n:Z

    .line 4
    :try_start_0
    invoke-virtual {p0}, Le/k/a/b/u/b;->P2()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Le/k/a/b/u/b;->Z2()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Le/k/a/b/u/b;->Z2()V

    .line 6
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public d3()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-wide v0, p0, Le/k/a/b/u/b;->J:J

    long-to-int v3, v0

    int-to-long v4, v3

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 3
    iput v3, p0, Le/k/a/b/u/b;->E:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 6
    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->K2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    .line 7
    sget-object v0, Le/k/a/b/u/c;->e:Ljava/math/BigInteger;

    iget-object v1, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2

    sget-object v0, Le/k/a/b/u/c;->f:Ljava/math/BigInteger;

    iget-object v1, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    .line 8
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 9
    iget-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Le/k/a/b/u/b;->E:I

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Le/k/a/b/u/c;->J2()V

    throw v2

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_5

    .line 11
    iget-wide v0, p0, Le/k/a/b/u/b;->K:D

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_4

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_4

    double-to-int v0, v0

    .line 12
    iput v0, p0, Le/k/a/b/u/b;->E:I

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p0}, Le/k/a/b/u/c;->J2()V

    throw v2

    :cond_5
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    .line 14
    sget-object v0, Le/k/a/b/u/c;->k:Ljava/math/BigDecimal;

    iget-object v1, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_6

    sget-object v0, Le/k/a/b/u/c;->l:Ljava/math/BigDecimal;

    iget-object v1, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    .line 15
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 16
    iget-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Le/k/a/b/u/b;->E:I

    .line 17
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Le/k/a/b/u/b;->D:I

    return-void

    .line 18
    :cond_6
    invoke-virtual {p0}, Le/k/a/b/u/c;->J2()V

    throw v2

    .line 19
    :cond_7
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v2
.end method

.method public f3(Le/k/a/b/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-gt p2, v2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units"

    .line 2
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 3
    :cond_0
    iget-char v2, p1, Le/k/a/b/a;->e:C

    if-ne p2, v2, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const-string p2, "Unexpected padding character (\'"

    .line 4
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 5
    iget-char p1, p1, Le/k/a/b/a;->e:C

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\') as character #"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {p2}, Ljava/lang/Character;->isDefined(I)Z

    move-result p1

    const-string p3, ") in base64 content"

    if-eqz p1, :cond_4

    invoke-static {p2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Illegal character \'"

    .line 8
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    int-to-char v0, p2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' (code 0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    :goto_0
    const-string p1, "Illegal character (code 0x"

    .line 9
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p4, :cond_5

    const-string p2, ": "

    .line 10
    invoke-static {p1, p2, p4}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public final g3(Ljava/lang/String;D)Le/k/a/b/m;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->y:Le/k/a/b/a0/n;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Le/k/a/b/a0/n;->b:[C

    const/4 v2, -0x1

    .line 3
    iput v2, v0, Le/k/a/b/a0/n;->c:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Le/k/a/b/a0/n;->d:I

    .line 5
    iput-object p1, v0, Le/k/a/b/a0/n;->j:Ljava/lang/String;

    .line 6
    iput-object v1, v0, Le/k/a/b/a0/n;->k:[C

    .line 7
    iget-boolean p1, v0, Le/k/a/b/a0/n;->f:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {v0}, Le/k/a/b/a0/n;->d()V

    .line 9
    :cond_0
    iput v2, v0, Le/k/a/b/a0/n;->i:I

    .line 10
    iput-wide p2, p0, Le/k/a/b/u/b;->K:D

    const/16 p1, 0x8

    .line 11
    iput p1, p0, Le/k/a/b/u/b;->D:I

    .line 12
    sget-object p1, Le/k/a/b/m;->r:Le/k/a/b/m;

    return-object p1
.end method

.method public final h3(ZI)Le/k/a/b/m;
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/k/a/b/u/b;->N:Z

    .line 2
    iput p2, p0, Le/k/a/b/u/b;->O:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Le/k/a/b/u/b;->D:I

    .line 4
    sget-object p1, Le/k/a/b/m;->q:Le/k/a/b/m;

    return-object p1
.end method

.method public k0()Ljava/math/BigDecimal;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_5

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Le/k/a/b/u/b;->Y2(I)V

    .line 3
    :cond_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_5

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v2, Le/k/a/b/w/f;->a:Ljava/lang/String;

    .line 6
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iput-object v2, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    goto :goto_0

    .line 8
    :catch_0
    invoke-static {v0}, Le/k/a/b/w/f;->a(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 9
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 10
    iget-wide v2, p0, Le/k/a/b/u/b;->J:J

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 11
    iget v0, p0, Le/k/a/b/u/b;->E:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    .line 12
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    or-int/2addr v0, v1

    iput v0, p0, Le/k/a/b/u/b;->D:I

    goto :goto_1

    .line 13
    :cond_4
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    const/4 v0, 0x0

    throw v0

    .line 14
    :cond_5
    :goto_1
    iget-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public n0()D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_5

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Le/k/a/b/u/b;->Y2(I)V

    .line 3
    :cond_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_5

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    .line 4
    iget-object v0, p0, Le/k/a/b/u/b;->M:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Le/k/a/b/u/b;->K:D

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Le/k/a/b/u/b;->L:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Le/k/a/b/u/b;->K:D

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    .line 6
    iget-wide v2, p0, Le/k/a/b/u/b;->J:J

    long-to-double v2, v2

    iput-wide v2, p0, Le/k/a/b/u/b;->K:D

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 7
    iget v0, p0, Le/k/a/b/u/b;->E:I

    int-to-double v2, v0

    iput-wide v2, p0, Le/k/a/b/u/b;->K:D

    .line 8
    :goto_0
    iget v0, p0, Le/k/a/b/u/b;->D:I

    or-int/2addr v0, v1

    iput v0, p0, Le/k/a/b/u/b;->D:I

    goto :goto_1

    .line 9
    :cond_4
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    const/4 v0, 0x0

    throw v0

    .line 10
    :cond_5
    :goto_1
    iget-wide v0, p0, Le/k/a/b/u/b;->K:D

    return-wide v0
.end method

.method public q2(II)Le/k/a/b/j;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    xor-int p2, v0, p1

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Le/k/a/b/j;->a:I

    .line 3
    invoke-virtual {p0, p1, p2}, Le/k/a/b/u/b;->O2(II)V

    :cond_0
    return-object p0
.end method

.method public s(Le/k/a/b/j$a;)Le/k/a/b/j;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    .line 2
    iget v1, p1, Le/k/a/b/j$a;->b:I

    not-int v1, v1

    and-int/2addr v0, v1

    .line 3
    iput v0, p0, Le/k/a/b/j;->a:I

    .line 4
    sget-object v0, Le/k/a/b/j$a;->o:Le/k/a/b/j$a;

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Le/k/a/b/x/d;->d:Le/k/a/b/x/b;

    .line 7
    iput-object p1, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    :cond_0
    return-object p0
.end method

.method public t0()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/u/b;->n0()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public t2(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 2
    iput-object p1, v0, Le/k/a/b/x/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public u2(I)Le/k/a/b/j;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/j;->a:I

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Le/k/a/b/j;->a:I

    .line 3
    invoke-virtual {p0, p1, v0}, Le/k/a/b/u/b;->O2(II)V

    :cond_0
    return-object p0
.end method

.method public z0()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/b/u/b;->D:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/u/b;->X2()I

    move-result v0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Le/k/a/b/u/b;->d3()V

    .line 4
    :cond_1
    iget v0, p0, Le/k/a/b/u/b;->E:I

    return v0
.end method

.method public z2()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    invoke-virtual {v0}, Le/k/a/b/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 3
    iget-object v2, p0, Le/k/a/b/u/b;->w:Le/k/a/b/x/d;

    .line 4
    invoke-virtual {p0}, Le/k/a/b/u/b;->U2()Ljava/lang/Object;

    move-result-object v4

    .line 5
    new-instance v9, Le/k/a/b/h;

    iget v7, v2, Le/k/a/b/x/d;->h:I

    iget v8, v2, Le/k/a/b/x/d;->i:I

    const-wide/16 v5, -0x1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Le/k/a/b/h;-><init>(Ljava/lang/Object;JII)V

    aput-object v9, v1, v0

    const-string v0, ": expected close marker for %s (start marker at %s)"

    .line 6
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    throw v1

    :cond_1
    return-void
.end method
