.class public final Lp3/b/c/e;
.super Lp3/b/c/n;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lp3/b/c/n$a;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lp3/b/a/a;Lp3/b/c/n$a;JJJLp3/b/c/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/b/c/n;-><init>()V

    .line 2
    iput-object p2, p0, Lp3/b/c/e;->a:Lp3/b/c/n$a;

    .line 3
    iput-wide p3, p0, Lp3/b/c/e;->b:J

    .line 4
    iput-wide p5, p0, Lp3/b/c/e;->c:J

    .line 5
    iput-wide p7, p0, Lp3/b/c/e;->d:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp3/b/c/e;->d:J

    return-wide v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp3/b/c/e;->b:J

    return-wide v0
.end method

.method public d()Lp3/b/c/n$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/b/c/e;->a:Lp3/b/c/n$a;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp3/b/c/e;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lp3/b/c/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lp3/b/c/n;

    .line 3
    invoke-virtual {p1}, Lp3/b/c/n;->b()V

    iget-object v1, p0, Lp3/b/c/e;->a:Lp3/b/c/n$a;

    .line 4
    invoke-virtual {p1}, Lp3/b/c/n;->d()Lp3/b/c/n$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lp3/b/c/e;->b:J

    .line 5
    invoke-virtual {p1}, Lp3/b/c/n;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lp3/b/c/e;->c:J

    .line 6
    invoke-virtual {p1}, Lp3/b/c/n;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lp3/b/c/e;->d:J

    .line 7
    invoke-virtual {p1}, Lp3/b/c/n;->a()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 8

    const v0, -0x2aff6277

    .line 1
    iget-object v1, p0, Lp3/b/c/e;->a:Lp3/b/c/n$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    const v1, 0xf4243

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 2
    iget-wide v4, p0, Lp3/b/c/e;->b:J

    const/16 v0, 0x20

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/2addr v2, v1

    int-to-long v2, v2

    .line 3
    iget-wide v4, p0, Lp3/b/c/e;->c:J

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/2addr v2, v1

    int-to-long v1, v2

    .line 4
    iget-wide v3, p0, Lp3/b/c/e;->d:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    xor-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkEvent{kernelTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/b/c/e;->a:Lp3/b/c/n$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp3/b/c/e;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uncompressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp3/b/c/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", compressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp3/b/c/e;->d:J

    const-string v3, "}"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
