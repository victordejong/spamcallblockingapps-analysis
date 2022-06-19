.class public final Le/a/e/c/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:I

.field public final d:Le/a/e/c/y1;

.field public final e:Le/a/e/c/r1;


# direct methods
.method public constructor <init>(ILandroid/graphics/drawable/Drawable;ILe/a/e/c/y1;Le/a/e/c/r1;)V
    .locals 1

    const-string v0, "headerAppearance"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonsAppearance"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/e/c/p1;->a:I

    iput-object p2, p0, Le/a/e/c/p1;->b:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Le/a/e/c/p1;->c:I

    iput-object p4, p0, Le/a/e/c/p1;->d:Le/a/e/c/y1;

    iput-object p5, p0, Le/a/e/c/p1;->e:Le/a/e/c/r1;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/e/c/p1;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/e/c/p1;

    iget v0, p0, Le/a/e/c/p1;->a:I

    iget v1, p1, Le/a/e/c/p1;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/e/c/p1;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Le/a/e/c/p1;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/e/c/p1;->c:I

    iget v1, p1, Le/a/e/c/p1;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/e/c/p1;->d:Le/a/e/c/y1;

    iget-object v1, p1, Le/a/e/c/p1;->d:Le/a/e/c/y1;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/e/c/p1;->e:Le/a/e/c/r1;

    iget-object p1, p1, Le/a/e/c/p1;->e:Le/a/e/c/r1;

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
    .locals 3

    iget v0, p0, Le/a/e/c/p1;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/e/c/p1;->b:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/e/c/p1;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/e/c/p1;->d:Le/a/e/c/y1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le/a/e/c/y1;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/e/c/p1;->e:Le/a/e/c/r1;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Le/a/e/c/r1;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DetailsAppearance(statusBarColor="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/e/c/p1;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appBarBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/e/c/p1;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toolbarIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/e/c/p1;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headerAppearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/e/c/p1;->d:Le/a/e/c/y1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", buttonsAppearance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/e/c/p1;->e:Le/a/e/c/r1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
