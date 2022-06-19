.class public final Le/a/l/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/premium/data/PremiumType;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/data/PremiumType;IIIII)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/s1;->a:Lcom/truecaller/premium/data/PremiumType;

    iput p2, p0, Le/a/l/s1;->b:I

    iput p3, p0, Le/a/l/s1;->c:I

    iput p4, p0, Le/a/l/s1;->d:I

    iput p5, p0, Le/a/l/s1;->e:I

    iput p6, p0, Le/a/l/s1;->f:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/s1;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/s1;

    iget-object v0, p0, Le/a/l/s1;->a:Lcom/truecaller/premium/data/PremiumType;

    iget-object v1, p1, Le/a/l/s1;->a:Lcom/truecaller/premium/data/PremiumType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/l/s1;->b:I

    iget v1, p1, Le/a/l/s1;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/l/s1;->c:I

    iget v1, p1, Le/a/l/s1;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/l/s1;->d:I

    iget v1, p1, Le/a/l/s1;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/l/s1;->e:I

    iget v1, p1, Le/a/l/s1;->e:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/l/s1;->f:I

    iget p1, p1, Le/a/l/s1;->f:I

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

    iget-object v0, p0, Le/a/l/s1;->a:Lcom/truecaller/premium/data/PremiumType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/l/s1;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/l/s1;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/l/s1;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/l/s1;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/l/s1;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PremiumPage(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/s1;->a:Lcom/truecaller/premium/data/PremiumType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", titleRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/s1;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconNormal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/s1;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/s1;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", normalColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/s1;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", selectedColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/s1;->f:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
