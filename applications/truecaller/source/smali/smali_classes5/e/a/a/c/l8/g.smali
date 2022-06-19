.class public final Le/a/a/c/l8/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroid/net/Uri;

.field public final c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "itemUri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemDuration"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/c/l8/g;->a:I

    iput-object p2, p0, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

    iput-object p3, p0, Le/a/a/c/l8/g;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/a/c/l8/g;->d:Z

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;ZI)V
    .locals 0

    and-int/lit8 p3, p5, 0x4

    if-eqz p3, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string p5, "itemUri"

    .line 1
    invoke-static {p2, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "itemDuration"

    invoke-static {p3, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/a/c/l8/g;->a:I

    iput-object p2, p0, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

    iput-object p3, p0, Le/a/a/c/l8/g;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/a/c/l8/g;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/a/c/l8/g;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/a/c/l8/g;

    iget v0, p0, Le/a/a/c/l8/g;->a:I

    iget v1, p1, Le/a/a/c/l8/g;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

    iget-object v1, p1, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/c/l8/g;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/a/c/l8/g;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/a/c/l8/g;->d:Z

    iget-boolean p1, p1, Le/a/a/c/l8/g;->d:Z

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
    .locals 3

    iget v0, p0, Le/a/a/c/l8/g;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

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

    iget-object v1, p0, Le/a/a/c/l8/g;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/a/c/l8/g;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "GalleryItem(typeOfItem="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/a/c/l8/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/c/l8/g;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/a/c/l8/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/a/c/l8/g;->d:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
