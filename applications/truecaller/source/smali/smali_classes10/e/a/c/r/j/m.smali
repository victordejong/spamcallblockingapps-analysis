.class public final Le/a/c/r/j/m;
.super Le/a/c/r/j/e0;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Le/a/c/r/j/e0;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/c/r/j/m;->a:I

    iput p2, p0, Le/a/c/r/j/m;->b:I

    iput p3, p0, Le/a/c/r/j/m;->c:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget p2, Lcom/truecaller/insights/R$attr;->tcx_avatarTextBlue:I

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2
    sget p3, Lcom/truecaller/insights/R$attr;->tcx_avatarBackgroundBlue:I

    :cond_1
    const/4 p4, 0x0

    .line 3
    invoke-direct {p0, p4}, Le/a/c/r/j/e0;-><init>(Ls1/z/c/f;)V

    iput p1, p0, Le/a/c/r/j/m;->a:I

    iput p2, p0, Le/a/c/r/j/m;->b:I

    iput p3, p0, Le/a/c/r/j/m;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/m;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/m;

    iget v0, p0, Le/a/c/r/j/m;->a:I

    iget v1, p1, Le/a/c/r/j/m;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/c/r/j/m;->b:I

    iget v1, p1, Le/a/c/r/j/m;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/c/r/j/m;->c:I

    iget p1, p1, Le/a/c/r/j/m;->c:I

    if-ne v0, p1, :cond_0

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

    iget v0, p0, Le/a/c/r/j/m;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/c/r/j/m;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/c/r/j/m;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "IconPropertyMapping(icon="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/c/r/j/m;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconTint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/c/r/j/m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bgTint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/c/r/j/m;->c:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
