.class public abstract Le/k/a/b/u/c;
.super Le/k/a/b/j;
.source "SourceFile"


# static fields
.field public static final d:[B

.field public static final e:Ljava/math/BigInteger;

.field public static final f:Ljava/math/BigInteger;

.field public static final g:Ljava/math/BigInteger;

.field public static final h:Ljava/math/BigInteger;

.field public static final i:Ljava/math/BigDecimal;

.field public static final j:Ljava/math/BigDecimal;

.field public static final k:Ljava/math/BigDecimal;

.field public static final l:Ljava/math/BigDecimal;


# instance fields
.field public c:Le/k/a/b/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 1
    sput-object v0, Le/k/a/b/u/c;->d:[B

    const-wide/32 v0, -0x80000000

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Le/k/a/b/u/c;->e:Ljava/math/BigInteger;

    const-wide/32 v1, 0x7fffffff

    .line 3
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Le/k/a/b/u/c;->f:Ljava/math/BigInteger;

    const-wide/high16 v2, -0x8000000000000000L

    .line 4
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Le/k/a/b/u/c;->g:Ljava/math/BigInteger;

    const-wide v3, 0x7fffffffffffffffL

    .line 5
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Le/k/a/b/u/c;->h:Ljava/math/BigInteger;

    .line 6
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v4, Le/k/a/b/u/c;->i:Ljava/math/BigDecimal;

    .line 7
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v2, Le/k/a/b/u/c;->j:Ljava/math/BigDecimal;

    .line 8
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v2, Le/k/a/b/u/c;->k:Ljava/math/BigDecimal;

    .line 9
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Le/k/a/b/u/c;->l:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/b/j;-><init>(I)V

    return-void
.end method

.method public static final y2(I)Ljava/lang/String;
    .locals 5

    int-to-char v0, p0

    .line 1
    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_0

    const-string v0, "(CTRL-CHAR, code "

    .line 2
    invoke-static {v0, p0, v2}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0xff

    const-string v3, "\' (code "

    const-string v4, "\'"

    if-le p0, v1, :cond_1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "-"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "[Integer with %d digits]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public B1()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 2
    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->E1(J)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/k/a/b/j;->B0()J

    move-result-wide v0

    return-wide v0
.end method

.method public B2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "-"

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    const-string v0, "[number with %d characters]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final C2(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Le/k/a/b/i;

    invoke-direct {p2, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 3
    throw p2
.end method

.method public final D2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    .line 1
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Le/k/a/b/i;

    invoke-direct {p2, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 3
    throw p2
.end method

.method public E1(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 2
    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-eq v0, v1, :cond_4

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    .line 3
    iget v0, v0, Le/k/a/b/m;->d:I

    const/4 v1, 0x6

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    :pswitch_1
    return-wide v2

    :pswitch_2
    const-wide/16 p1, 0x1

    return-wide p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-wide v2

    .line 9
    :cond_2
    invoke-static {v0, p1, p2}, Le/k/a/b/w/f;->c(Ljava/lang/String;J)J

    move-result-wide p1

    :cond_3
    :goto_0
    return-wide p1

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0}, Le/k/a/b/j;->B0()J

    move-result-wide p1

    return-wide p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public E2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    const-string v0, " in "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public F1()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->I1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F2(Ljava/lang/String;Le/k/a/b/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/b/w/c;

    const-string v1, "Unexpected end-of-input"

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p2, p1}, Le/k/a/b/w/c;-><init>(Le/k/a/b/j;Le/k/a/b/m;Ljava/lang/String;)V

    throw v0
.end method

.method public G2(Le/k/a/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-eq p1, v0, :cond_2

    .line 2
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-eq p1, v0, :cond_1

    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " in a value"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, " in a Number value"

    goto :goto_1

    :cond_2
    const-string v0, " in a String value"

    .line 3
    :goto_1
    invoke-virtual {p0, v0, p1}, Le/k/a/b/u/c;->F2(Ljava/lang/String;Le/k/a/b/m;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public H2(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1
    invoke-static {p1}, Le/k/a/b/u/c;->y2(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Unexpected character (%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v0, ": "

    .line 2
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    new-instance p2, Le/k/a/b/i;

    invoke-direct {p2, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 4
    throw p2

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/u/c;->E2()V

    const/4 p1, 0x0

    throw p1
.end method

.method public I1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->p:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Le/k/a/b/j;->Q()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v0, :cond_3

    .line 5
    sget-object v1, Le/k/a/b/m;->u:Le/k/a/b/m;

    if-eq v0, v1, :cond_3

    .line 6
    iget-boolean v0, v0, Le/k/a/b/m;->h:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method public I2(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    int-to-char p1, p1

    const-string v0, "Illegal character ("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Le/k/a/b/u/c;->y2(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Le/k/a/b/i;

    invoke-direct {v0, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 3
    throw v0
.end method

.method public J2()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 3
    invoke-virtual {p0, v0, v1}, Le/k/a/b/u/c;->K2(Ljava/lang/String;Le/k/a/b/m;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public K2(Ljava/lang/String;Le/k/a/b/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, p1}, Le/k/a/b/u/c;->A2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/high16 p1, -0x80000000

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const p1, 0x7fffffff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "Numeric value (%s) out of range of int (%d - %s)"

    .line 2
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 3
    new-instance v1, Le/k/a/b/v/a;

    invoke-direct {v1, p0, p1, p2, v0}, Le/k/a/b/v/a;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/m;Ljava/lang/Class;)V

    throw v1
.end method

.method public L1()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public L2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->M2(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public M2(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1}, Le/k/a/b/u/c;->A2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "Numeric value (%s) out of range of long (%d - %s)"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 4
    new-instance v2, Le/k/a/b/v/a;

    invoke-direct {v2, p0, p1, v0, v1}, Le/k/a/b/v/a;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/m;Ljava/lang/Class;)V

    throw v2
.end method

.method public N2(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Le/k/a/b/u/c;->y2(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Unexpected character (%s) in numeric value"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ": "

    .line 2
    invoke-static {p1, v0, p2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Le/k/a/b/i;

    invoke-direct {p2, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 4
    throw p2
.end method

.method public O1(Le/k/a/b/m;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public R1(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 2
    :cond_1
    iget v0, v0, Le/k/a/b/m;->d:I

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public S()Le/k/a/b/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0
.end method

.method public T1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public V1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->l:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public W()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Le/k/a/b/m;->d:I

    :goto_0
    return v0
.end method

.method public Y1()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    :cond_0
    return-void
.end method

.method public l()Le/k/a/b/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    return-object v0
.end method

.method public o2()Le/k/a/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    .line 2
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, v0, Le/k/a/b/m;->d:I

    :goto_0
    return v0
.end method

.method public s1()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 2
    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-eq v0, v1, :cond_1

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le/k/a/b/u/c;->z1(I)I

    move-result v0

    return v0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/k/a/b/j;->z0()I

    move-result v0

    return v0
.end method

.method public w2()Le/k/a/b/j;
    .locals 3
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

    if-eq v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {p0}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {p0}, Le/k/a/b/u/c;->z2()V

    return-object p0

    .line 4
    :cond_2
    iget-boolean v2, v1, Le/k/a/b/m;->e:Z

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_3
    iget-boolean v2, v1, Le/k/a/b/m;->f:Z

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    return-object p0

    .line 6
    :cond_4
    sget-object v2, Le/k/a/b/m;->i:Le/k/a/b/m;

    if-eq v1, v2, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not enough content available for `skipChildren()`: non-blocking parser? (%s)"

    .line 8
    invoke-virtual {p0, v1, v0}, Le/k/a/b/u/c;->C2(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public x2(Ljava/lang/String;Le/k/a/b/a0/c;Le/k/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p3, p1, p2}, Le/k/a/b/a;->d(Ljava/lang/String;Le/k/a/b/a0/c;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance p2, Le/k/a/b/i;

    invoke-direct {p2, p0, p1}, Le/k/a/b/i;-><init>(Le/k/a/b/j;Ljava/lang/String;)V

    .line 4
    throw p2
.end method

.method public z1(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/b/u/c;->c:Le/k/a/b/m;

    .line 2
    sget-object v1, Le/k/a/b/m;->q:Le/k/a/b/m;

    if-eq v0, v1, :cond_4

    sget-object v1, Le/k/a/b/m;->r:Le/k/a/b/m;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_3

    .line 3
    iget v0, v0, Le/k/a/b/m;->d:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 6
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    :pswitch_1
    return v2

    :pswitch_2
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    .line 9
    :cond_2
    invoke-static {v0, p1}, Le/k/a/b/w/f;->b(Ljava/lang/String;I)I

    move-result p1

    :cond_3
    :goto_0
    return p1

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {p0}, Le/k/a/b/j;->z0()I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract z2()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/b/i;
        }
    .end annotation
.end method
