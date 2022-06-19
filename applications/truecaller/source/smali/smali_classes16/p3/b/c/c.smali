.class public final Lp3/b/c/c;
.super Lp3/b/c/l;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public final c:Lp3/b/c/r;


# direct methods
.method public constructor <init>(ZLp3/b/c/r;Lp3/b/c/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/b/c/l;-><init>()V

    .line 2
    iput-boolean p1, p0, Lp3/b/c/c;->b:Z

    .line 3
    iput-object p2, p0, Lp3/b/c/c;->c:Lp3/b/c/r;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/b/c/c;->b:Z

    return v0
.end method

.method public b()Lp3/b/c/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/b/c/c;->c:Lp3/b/c/r;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lp3/b/c/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lp3/b/c/l;

    .line 3
    iget-boolean v1, p0, Lp3/b/c/c;->b:Z

    invoke-virtual {p1}, Lp3/b/c/l;->a()Z

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lp3/b/c/c;->c:Lp3/b/c/r;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lp3/b/c/l;->b()Lp3/b/c/r;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lp3/b/c/l;->b()Lp3/b/c/r;

    move-result-object p1

    invoke-virtual {v1, p1}, Lp3/b/c/r;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/b/c/c;->b:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d5

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lp3/b/c/c;->c:Lp3/b/c/r;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lp3/b/c/r;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "EndSpanOptions{sampleToLocalSpanStore="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lp3/b/c/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/b/c/c;->c:Lp3/b/c/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
