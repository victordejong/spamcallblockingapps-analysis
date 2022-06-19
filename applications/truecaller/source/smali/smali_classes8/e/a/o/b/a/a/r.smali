.class public final Le/a/o/b/a/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/o/b/a/a/r;->a:I

    iput p2, p0, Le/a/o/b/a/a/r;->b:I

    iput p3, p0, Le/a/o/b/a/a/r;->c:I

    iput p4, p0, Le/a/o/b/a/a/r;->d:I

    iput p5, p0, Le/a/o/b/a/a/r;->e:I

    iput p6, p0, Le/a/o/b/a/a/r;->f:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/o/b/a/a/r;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/o/b/a/a/r;

    iget v0, p0, Le/a/o/b/a/a/r;->a:I

    iget v1, p1, Le/a/o/b/a/a/r;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/o/b/a/a/r;->b:I

    iget v1, p1, Le/a/o/b/a/a/r;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/o/b/a/a/r;->c:I

    iget v1, p1, Le/a/o/b/a/a/r;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/o/b/a/a/r;->d:I

    iget v1, p1, Le/a/o/b/a/a/r;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/o/b/a/a/r;->e:I

    iget v1, p1, Le/a/o/b/a/a/r;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/o/b/a/a/r;->f:I

    iget p1, p1, Le/a/o/b/a/a/r;->f:I

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

    iget v0, p0, Le/a/o/b/a/a/r;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/o/b/a/a/r;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/o/b/a/a/r;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/o/b/a/a/r;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/o/b/a/a/r;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/o/b/a/a/r;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ThemeConfig(titleColor="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/o/b/a/a/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconColors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/o/b/a/a/r;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/o/b/a/a/r;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/o/b/a/a/r;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/o/b/a/a/r;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", editMessageIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/o/b/a/a/r;->f:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
