.class public abstract Le/i/b/u2/c/b;
.super Le/i/b/u2/c/n;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/i/b/u2/c/r;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/i/b/u2/c/m;

.field public final c:Le/i/b/u2/c/q;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/i/b/u2/c/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Le/i/b/u2/c/m;Le/i/b/u2/c/q;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/i/b/u2/c/r;",
            ">;",
            "Le/i/b/u2/c/m;",
            "Le/i/b/u2/c/q;",
            "Ljava/util/List<",
            "Le/i/b/u2/c/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/i/b/u2/c/n;-><init>()V

    const-string v0, "Null nativeProducts"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/i/b/u2/c/b;->a:Ljava/util/List;

    const-string p1, "Null advertiser"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/i/b/u2/c/b;->b:Le/i/b/u2/c/m;

    const-string p1, "Null privacy"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Le/i/b/u2/c/b;->c:Le/i/b/u2/c/q;

    const-string p1, "Null pixels"

    .line 8
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Le/i/b/u2/c/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Le/i/b/u2/c/m;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/c/b;->b:Le/i/b/u2/c/m;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/i/b/u2/c/r;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "products"
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/c/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/i/b/u2/c/p;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "impressionPixels"
    .end annotation

    .line 1
    iget-object v0, p0, Le/i/b/u2/c/b;->d:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/i/b/u2/c/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Le/i/b/u2/c/n;

    .line 3
    iget-object v1, p0, Le/i/b/u2/c/b;->a:Ljava/util/List;

    invoke-virtual {p1}, Le/i/b/u2/c/n;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/i/b/u2/c/b;->b:Le/i/b/u2/c/m;

    .line 4
    invoke-virtual {p1}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/i/b/u2/c/b;->c:Le/i/b/u2/c/q;

    .line 5
    invoke-virtual {p1}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/i/b/u2/c/b;->d:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Le/i/b/u2/c/n;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f()Le/i/b/u2/c/q;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/u2/c/b;->c:Le/i/b/u2/c/q;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/u2/c/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Le/i/b/u2/c/b;->b:Le/i/b/u2/c/m;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Le/i/b/u2/c/b;->c:Le/i/b/u2/c/q;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Le/i/b/u2/c/b;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "NativeAssets{nativeProducts="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/i/b/u2/c/b;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", advertiser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/c/b;->b:Le/i/b/u2/c/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", privacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/c/b;->c:Le/i/b/u2/c/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/i/b/u2/c/b;->d:Ljava/util/List;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
