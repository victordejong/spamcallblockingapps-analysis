.class public final Le/a/i/d0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:Le/a/i/d0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/i/d0/k<",
            "Le/a/i/d0/h0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(DLe/a/i/d0/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Le/a/i/d0/k<",
            "+",
            "Le/a/i/d0/h0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/i/d0/h;->a:D

    iput-object p3, p0, Le/a/i/d0/h;->b:Le/a/i/d0/k;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/i/d0/h;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/i/d0/h;

    iget-wide v0, p0, Le/a/i/d0/h;->a:D

    iget-wide v2, p1, Le/a/i/d0/h;->a:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/i/d0/h;->b:Le/a/i/d0/k;

    iget-object p1, p1, Le/a/i/d0/h;->b:Le/a/i/d0/k;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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
    .locals 2

    iget-wide v0, p0, Le/a/i/d0/h;->a:D

    invoke-static {v0, v1}, Lc;->a(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/i/d0/h;->b:Le/a/i/d0/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/a/i/d0/k;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BidResult(price="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/i/d0/h;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/i/d0/h;->b:Le/a/i/d0/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
