.class public final Le/a/v/a/r0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

.field public final b:I

.field public final c:I

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Ljava/lang/Integer;

.field public final f:I

.field public final g:I

.field public final h:Landroid/graphics/drawable/Drawable;

.field public final i:Le/a/v/a/r0/h;

.field public final j:I


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;IILandroid/graphics/drawable/Drawable;Ljava/lang/Integer;IILandroid/graphics/drawable/Drawable;Le/a/v/a/r0/h;I)V
    .locals 1

    const-string v0, "statusBarAppearance"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "background"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagPainter"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/r0/f;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    iput p2, p0, Le/a/v/a/r0/f;->b:I

    iput p3, p0, Le/a/v/a/r0/f;->c:I

    iput-object p4, p0, Le/a/v/a/r0/f;->d:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Le/a/v/a/r0/f;->e:Ljava/lang/Integer;

    iput p6, p0, Le/a/v/a/r0/f;->f:I

    iput p7, p0, Le/a/v/a/r0/f;->g:I

    iput-object p8, p0, Le/a/v/a/r0/f;->h:Landroid/graphics/drawable/Drawable;

    iput-object p9, p0, Le/a/v/a/r0/f;->i:Le/a/v/a/r0/h;

    iput p10, p0, Le/a/v/a/r0/f;->j:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/v/a/r0/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/v/a/r0/f;

    iget-object v0, p0, Le/a/v/a/r0/f;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    iget-object v1, p1, Le/a/v/a/r0/f;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/v/a/r0/f;->b:I

    iget v1, p1, Le/a/v/a/r0/f;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/v/a/r0/f;->c:I

    iget v1, p1, Le/a/v/a/r0/f;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/v/a/r0/f;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Le/a/v/a/r0/f;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/v/a/r0/f;->e:Ljava/lang/Integer;

    iget-object v1, p1, Le/a/v/a/r0/f;->e:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/v/a/r0/f;->f:I

    iget v1, p1, Le/a/v/a/r0/f;->f:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Le/a/v/a/r0/f;->g:I

    iget v1, p1, Le/a/v/a/r0/f;->g:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/v/a/r0/f;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Le/a/v/a/r0/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/v/a/r0/f;->i:Le/a/v/a/r0/h;

    iget-object v1, p1, Le/a/v/a/r0/f;->i:Le/a/v/a/r0/h;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/v/a/r0/f;->j:I

    iget p1, p1, Le/a/v/a/r0/f;->j:I

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

    iget-object v0, p0, Le/a/v/a/r0/f;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/v/a/r0/f;->b:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/v/a/r0/f;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/v/a/r0/f;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/v/a/r0/f;->e:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/v/a/r0/f;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/v/a/r0/f;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/v/a/r0/f;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/v/a/r0/f;->i:Le/a/v/a/r0/h;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/v/a/r0/f;->j:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "DetailsViewHeaderAppearance(statusBarAppearance="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/v/a/r0/f;->a:Lcom/truecaller/details_view/ui/theming/StatusBarAppearance;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultSourceTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/v/a/r0/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceTextColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/v/a/r0/f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourceIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/v/a/r0/f;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/v/a/r0/f;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toolbarIconsColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/v/a/r0/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", collapsedToolbarIconsColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/v/a/r0/f;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/v/a/r0/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagPainter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/v/a/r0/f;->i:Le/a/v/a/r0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarBorderColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/v/a/r0/f;->j:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
