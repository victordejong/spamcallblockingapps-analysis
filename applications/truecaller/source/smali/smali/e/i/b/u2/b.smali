.class public abstract Le/i/b/u2/b;
.super Le/i/b/u2/q;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/i/b/u2/a0;

.field public final c:Le/i/b/u2/e0;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Le/i/b/l2/c/c;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/i/b/u2/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/i/b/u2/a0;Le/i/b/u2/e0;Ljava/lang/String;ILe/i/b/l2/c/c;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/i/b/u2/a0;",
            "Le/i/b/u2/e0;",
            "Ljava/lang/String;",
            "I",
            "Le/i/b/l2/c/c;",
            "Ljava/util/List<",
            "Le/i/b/u2/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/i/b/u2/q;-><init>()V

    const-string v0, "Null id"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/i/b/u2/b;->a:Ljava/lang/String;

    const-string p1, "Null publisher"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/i/b/u2/b;->b:Le/i/b/u2/a0;

    const-string p1, "Null user"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Le/i/b/u2/b;->c:Le/i/b/u2/e0;

    const-string p1, "Null sdkVersion"

    .line 8
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Le/i/b/u2/b;->d:Ljava/lang/String;

    .line 10
    iput p5, p0, Le/i/b/u2/b;->e:I

    .line 11
    iput-object p6, p0, Le/i/b/u2/b;->f:Le/i/b/l2/c/c;

    const-string p1, "Null slots"

    .line 12
    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object p7, p0, Le/i/b/u2/b;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Le/i/b/l2/c/c;
    .locals 1
    .annotation runtime Le/m/e/d0/b;
        value = "gdprConsent"
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/b;->f:Le/i/b/l2/c/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Le/i/b/u2/b;->e:I

    return v0
.end method

.method public d()Le/i/b/u2/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/b;->b:Le/i/b/u2/a0;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/i/b/u2/q;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Le/i/b/u2/q;

    .line 3
    iget-object v1, p0, Le/i/b/u2/b;->a:Ljava/lang/String;

    invoke-virtual {p1}, Le/i/b/u2/q;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/i/b/u2/b;->b:Le/i/b/u2/a0;

    .line 4
    invoke-virtual {p1}, Le/i/b/u2/q;->d()Le/i/b/u2/a0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/i/b/u2/b;->c:Le/i/b/u2/e0;

    .line 5
    invoke-virtual {p1}, Le/i/b/u2/q;->g()Le/i/b/u2/e0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/i/b/u2/b;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Le/i/b/u2/q;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Le/i/b/u2/b;->e:I

    .line 7
    invoke-virtual {p1}, Le/i/b/u2/q;->c()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Le/i/b/u2/b;->f:Le/i/b/l2/c/c;

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {p1}, Le/i/b/u2/q;->a()Le/i/b/l2/c/c;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/i/b/u2/q;->a()Le/i/b/l2/c/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Le/i/b/u2/b;->g:Ljava/util/List;

    .line 9
    invoke-virtual {p1}, Le/i/b/u2/q;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/i/b/u2/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/b;->g:Ljava/util/List;

    return-object v0
.end method

.method public g()Le/i/b/u2/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/b;->c:Le/i/b/u2/e0;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/u2/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Le/i/b/u2/b;->b:Le/i/b/u2/a0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Le/i/b/u2/b;->c:Le/i/b/u2/e0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Le/i/b/u2/b;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget v2, p0, Le/i/b/u2/b;->e:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Le/i/b/u2/b;->f:Le/i/b/l2/c/c;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Le/i/b/u2/b;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CdbRequest{id="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/i/b/u2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", publisher="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/b;->b:Le/i/b/u2/a0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/b;->c:Le/i/b/u2/e0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/i/b/u2/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gdprData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/b;->f:Le/i/b/l2/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/b;->g:Ljava/util/List;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
