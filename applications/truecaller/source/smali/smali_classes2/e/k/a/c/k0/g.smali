.class public Le/k/a/c/k0/g;
.super Le/k/a/c/k0/r;
.source "SourceFile"


# static fields
.field public static final b:Le/k/a/c/k0/g;

.field public static final c:Ljava/math/BigDecimal;

.field public static final d:Ljava/math/BigDecimal;

.field public static final e:Ljava/math/BigDecimal;

.field public static final f:Ljava/math/BigDecimal;


# instance fields
.field public final a:Ljava/math/BigDecimal;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/k0/g;

    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Le/k/a/c/k0/g;-><init>(Ljava/math/BigDecimal;)V

    sput-object v0, Le/k/a/c/k0/g;->b:Le/k/a/c/k0/g;

    const-wide/32 v0, -0x80000000

    .line 2
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Le/k/a/c/k0/g;->c:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x7fffffff

    .line 3
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Le/k/a/c/k0/g;->d:Ljava/math/BigDecimal;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Le/k/a/c/k0/g;->e:Ljava/math/BigDecimal;

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Le/k/a/c/k0/g;->f:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/k0/r;-><init>()V

    iput-object p1, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public K()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public a()Le/k/a/b/m;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/m;->r:Le/k/a/b/m;

    return-object v0
.end method

.method public final c(Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/k;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {p1, p2}, Le/k/a/b/g;->Q0(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Le/k/a/c/k0/g;

    if-eqz v2, :cond_3

    .line 2
    check-cast p1, Le/k/a/c/k0/g;

    iget-object p1, p1, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    iget-object v2, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/k/a/c/k0/g;->q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    sget-object v1, Le/k/a/c/k0/g;->c:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    sget-object v1, Le/k/a/c/k0/g;->d:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    sget-object v1, Le/k/a/c/k0/g;->e:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    sget-object v1, Le/k/a/c/k0/g;->f:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()D
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/k0/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method
