.class public final Le/m/a/b/i/e/l;
.super Le/m/a/b/i/e/r;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Le/m/a/b/i/e/p;

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/a/b/i/e/q;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/m/a/b/i/e/u;


# direct methods
.method public constructor <init>(JJLe/m/a/b/i/e/p;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Le/m/a/b/i/e/u;Le/m/a/b/i/e/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/b/i/e/r;-><init>()V

    .line 2
    iput-wide p1, p0, Le/m/a/b/i/e/l;->a:J

    .line 3
    iput-wide p3, p0, Le/m/a/b/i/e/l;->b:J

    .line 4
    iput-object p5, p0, Le/m/a/b/i/e/l;->c:Le/m/a/b/i/e/p;

    .line 5
    iput-object p6, p0, Le/m/a/b/i/e/l;->d:Ljava/lang/Integer;

    .line 6
    iput-object p7, p0, Le/m/a/b/i/e/l;->e:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Le/m/a/b/i/e/l;->f:Ljava/util/List;

    .line 8
    iput-object p9, p0, Le/m/a/b/i/e/l;->g:Le/m/a/b/i/e/u;

    return-void
.end method


# virtual methods
.method public a()Le/m/a/b/i/e/p;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/l;->c:Le/m/a/b/i/e/p;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/a/b/i/e/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/l;->f:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/l;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Le/m/a/b/i/e/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/l;->g:Le/m/a/b/i/e/u;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/m/a/b/i/e/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 2
    check-cast p1, Le/m/a/b/i/e/r;

    .line 3
    iget-wide v3, p0, Le/m/a/b/i/e/l;->a:J

    invoke-virtual {p1}, Le/m/a/b/i/e/r;->f()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Le/m/a/b/i/e/l;->b:J

    .line 4
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->g()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Le/m/a/b/i/e/l;->c:Le/m/a/b/i/e/p;

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->a()Le/m/a/b/i/e/p;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->a()Le/m/a/b/i/e/p;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Le/m/a/b/i/e/l;->d:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->c()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Le/m/a/b/i/e/l;->e:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 7
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Le/m/a/b/i/e/l;->f:Ljava/util/List;

    if-nez v1, :cond_4

    .line 8
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->b()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Le/m/a/b/i/e/l;->g:Le/m/a/b/i/e/u;

    if-nez v1, :cond_5

    .line 9
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->e()Le/m/a/b/i/e/u;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Le/m/a/b/i/e/r;->e()Le/m/a/b/i/e/u;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v2

    :goto_4
    return v0

    :cond_7
    return v2
.end method

.method public f()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/b/i/e/l;->a:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/m/a/b/i/e/l;->b:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Le/m/a/b/i/e/l;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-wide v3, p0, Le/m/a/b/i/e/l;->b:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Le/m/a/b/i/e/l;->c:Le/m/a/b/i/e/p;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Le/m/a/b/i/e/l;->d:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Le/m/a/b/i/e/l;->e:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Le/m/a/b/i/e/l;->f:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Le/m/a/b/i/e/l;->g:Le/m/a/b/i/e/u;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "LogRequest{requestTimeMs="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/m/a/b/i/e/l;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", requestUptimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/m/a/b/i/e/l;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/b/i/e/l;->c:Le/m/a/b/i/e/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/b/i/e/l;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logSourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/b/i/e/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logEvents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/b/i/e/l;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", qosTier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/b/i/e/l;->g:Le/m/a/b/i/e/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
