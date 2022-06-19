.class public final Le/m/a/b/i/e/j;
.super Le/m/a/b/i/e/p;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/b/i/e/p$a;

.field public final b:Le/m/a/b/i/e/a;


# direct methods
.method public constructor <init>(Le/m/a/b/i/e/p$a;Le/m/a/b/i/e/a;Le/m/a/b/i/e/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/b/i/e/p;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/i/e/j;->a:Le/m/a/b/i/e/p$a;

    .line 3
    iput-object p2, p0, Le/m/a/b/i/e/j;->b:Le/m/a/b/i/e/a;

    return-void
.end method


# virtual methods
.method public a()Le/m/a/b/i/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/j;->b:Le/m/a/b/i/e/a;

    return-object v0
.end method

.method public b()Le/m/a/b/i/e/p$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/j;->a:Le/m/a/b/i/e/p$a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Le/m/a/b/i/e/p;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 2
    check-cast p1, Le/m/a/b/i/e/p;

    .line 3
    iget-object v1, p0, Le/m/a/b/i/e/j;->a:Le/m/a/b/i/e/p$a;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Le/m/a/b/i/e/p;->b()Le/m/a/b/i/e/p$a;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Le/m/a/b/i/e/p;->b()Le/m/a/b/i/e/p$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Le/m/a/b/i/e/j;->b:Le/m/a/b/i/e/a;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Le/m/a/b/i/e/p;->a()Le/m/a/b/i/e/a;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Le/m/a/b/i/e/p;->a()Le/m/a/b/i/e/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    :cond_4
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/b/i/e/j;->a:Le/m/a/b/i/e/p$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2
    iget-object v2, p0, Le/m/a/b/i/e/j;->b:Le/m/a/b/i/e/a;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ClientInfo{clientType="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/m/a/b/i/e/j;->a:Le/m/a/b/i/e/p$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", androidClientInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/b/i/e/j;->b:Le/m/a/b/i/e/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
