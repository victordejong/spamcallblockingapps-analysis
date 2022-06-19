.class public final Le/a/m5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/m5/e;->a:I

    iput p2, p0, Le/a/m5/e;->b:I

    iput p3, p0, Le/a/m5/e;->c:I

    iput p4, p0, Le/a/m5/e;->d:I

    iput p5, p0, Le/a/m5/e;->e:I

    iput-object p6, p0, Le/a/m5/e;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;I)V
    .locals 0

    and-int/lit8 p6, p7, 0x20

    const/4 p6, 0x0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/m5/e;->a:I

    iput p2, p0, Le/a/m5/e;->b:I

    iput p3, p0, Le/a/m5/e;->c:I

    iput p4, p0, Le/a/m5/e;->d:I

    iput p5, p0, Le/a/m5/e;->e:I

    iput-object p6, p0, Le/a/m5/e;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/m5/e;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/m5/e;

    iget v0, p0, Le/a/m5/e;->a:I

    iget v1, p1, Le/a/m5/e;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/m5/e;->b:I

    iget v1, p1, Le/a/m5/e;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/m5/e;->c:I

    iget v1, p1, Le/a/m5/e;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/m5/e;->d:I

    iget v1, p1, Le/a/m5/e;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/m5/e;->e:I

    iget v1, p1, Le/a/m5/e;->e:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/m5/e;->f:Ljava/lang/String;

    iget-object p1, p1, Le/a/m5/e;->f:Ljava/lang/String;

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

    iget v0, p0, Le/a/m5/e;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/m5/e;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/m5/e;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/m5/e;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/m5/e;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/m5/e;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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

    const-string v0, "TrueContextThemeConfig(labelColor="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/m5/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labelBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/m5/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/m5/e;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageBackgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/m5/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageOutlineColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/m5/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/m5/e;->f:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
