.class public final Lp3/b/c/d;
.super Lp3/b/c/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/b/c/d$b;
    }
.end annotation


# instance fields
.field public final a:Lp3/b/c/m$b;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lp3/b/c/m$b;JJJLp3/b/c/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/b/c/m;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/b/c/d;->a:Lp3/b/c/m$b;

    .line 3
    iput-wide p2, p0, Lp3/b/c/d;->b:J

    .line 4
    iput-wide p4, p0, Lp3/b/c/d;->c:J

    .line 5
    iput-wide p6, p0, Lp3/b/c/d;->d:J

    return-void
.end method


# virtual methods
.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp3/b/c/d;->d:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp3/b/c/d;->b:J

    return-wide v0
.end method

.method public d()Lp3/b/c/m$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/b/c/d;->a:Lp3/b/c/m$b;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lp3/b/c/d;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lp3/b/c/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lp3/b/c/m;

    .line 3
    iget-object v1, p0, Lp3/b/c/d;->a:Lp3/b/c/m$b;

    invoke-virtual {p1}, Lp3/b/c/m;->d()Lp3/b/c/m$b;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lp3/b/c/d;->b:J

    .line 4
    invoke-virtual {p1}, Lp3/b/c/m;->c()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lp3/b/c/d;->c:J

    .line 5
    invoke-virtual {p1}, Lp3/b/c/m;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lp3/b/c/d;->d:J

    .line 6
    invoke-virtual {p1}, Lp3/b/c/m;->b()J

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

    .line 1
    iget-object v0, p0, Lp3/b/c/d;->a:Lp3/b/c/m$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    int-to-long v2, v0

    .line 2
    iget-wide v4, p0, Lp3/b/c/d;->b:J

    const/16 v0, 0x20

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/2addr v2, v1

    int-to-long v2, v2

    .line 3
    iget-wide v4, p0, Lp3/b/c/d;->c:J

    ushr-long v6, v4, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/2addr v2, v1

    int-to-long v1, v2

    .line 4
    iget-wide v3, p0, Lp3/b/c/d;->d:J

    ushr-long v5, v3, v0

    xor-long/2addr v3, v5

    xor-long v0, v1, v3

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "MessageEvent{type="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp3/b/c/d;->a:Lp3/b/c/m$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp3/b/c/d;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uncompressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp3/b/c/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", compressedMessageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp3/b/c/d;->d:J

    const-string v3, "}"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
