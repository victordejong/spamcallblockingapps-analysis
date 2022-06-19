.class public final Le/a/h/b/d/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Landroid/graphics/drawable/Drawable;

.field public final c:Landroid/graphics/drawable/Drawable;

.field public final d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

.field public final e:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

.field public final f:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitleColor"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstIconColor"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "secondIconColor"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/d/a/b/a;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Le/a/h/b/d/a/b/a;->b:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Le/a/h/b/d/a/b/a;->c:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Le/a/h/b/d/a/b/a;->d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    iput-object p5, p0, Le/a/h/b/d/a/b/a;->e:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    iput-object p6, p0, Le/a/h/b/d/a/b/a;->f:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/h/b/d/a/b/a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/h/b/d/a/b/a;

    iget-object v0, p0, Le/a/h/b/d/a/b/a;->a:Ljava/lang/CharSequence;

    iget-object v1, p1, Le/a/h/b/d/a/b/a;->a:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/a;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Le/a/h/b/d/a/b/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/a;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Le/a/h/b/d/a/b/a;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/a;->d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    iget-object v1, p1, Le/a/h/b/d/a/b/a;->d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/a;->e:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    iget-object v1, p1, Le/a/h/b/d/a/b/a;->e:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/d/a/b/a;->f:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    iget-object p1, p1, Le/a/h/b/d/a/b/a;->f:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

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

    iget-object v0, p0, Le/a/h/b/d/a/b/a;->a:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/d/a/b/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/d/a/b/a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/d/a/b/a;->d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/d/a/b/a;->e:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/h/b/d/a/b/a;->f:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ListItemXSubtitle(text="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/h/b/d/a/b/a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", firstIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/a;->d:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/a;->e:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondIconColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/h/b/d/a/b/a;->f:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
