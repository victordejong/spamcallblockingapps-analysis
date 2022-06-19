.class public final Le/a/l/c/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/c/a/x;

.field public final b:Le/a/l/c/a/x2;

.field public final c:J


# direct methods
.method public constructor <init>(Le/a/l/c/a/x;Le/a/l/c/a/x2;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/y;->a:Le/a/l/c/a/x;

    iput-object p2, p0, Le/a/l/c/a/y;->b:Le/a/l/c/a/x2;

    iput-wide p3, p0, Le/a/l/c/a/y;->c:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/c/a/y;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/c/a/y;

    iget-object v0, p0, Le/a/l/c/a/y;->a:Le/a/l/c/a/x;

    iget-object v1, p1, Le/a/l/c/a/y;->a:Le/a/l/c/a/x;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/c/a/y;->b:Le/a/l/c/a/x2;

    iget-object v1, p1, Le/a/l/c/a/y;->b:Le/a/l/c/a/x2;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/l/c/a/y;->c:J

    iget-wide v2, p1, Le/a/l/c/a/y;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/l/c/a/y;->a:Le/a/l/c/a/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/l/c/a/x;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/c/a/y;->b:Le/a/l/c/a/x2;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/l/c/a/x2;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/l/c/a/y;->c:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CountDownTimerSpec(countDownTextSpec="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/c/a/y;->a:Le/a/l/c/a/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offerEndTextSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/c/a/y;->b:Le/a/l/c/a/x2;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", countDownTimeInFuture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/l/c/a/y;->c:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
