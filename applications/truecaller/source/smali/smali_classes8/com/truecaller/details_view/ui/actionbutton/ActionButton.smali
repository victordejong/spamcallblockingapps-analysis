.class public final Lcom/truecaller/details_view/ui/actionbutton/ActionButton;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;,
        Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Le/a/v/a/r0/h;

.field public final f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

.field public final g:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;

.field public final h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(IIIILe/a/v/a/r0/h;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "iconPainter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClickListener"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->a:I

    iput p2, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->b:I

    iput p3, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->c:I

    iput p4, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->d:I

    iput-object p5, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->e:Le/a/v/a/r0/h;

    iput-object p6, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    iput-object p7, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->g:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;

    iput-object p8, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->h:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;

    iget v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->a:I

    iget v1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->b:I

    iget v1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->c:I

    iget v1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->d:I

    iget v1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->e:Le/a/v/a/r0/h;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->e:Le/a/v/a/r0/h;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->g:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;

    iget-object v1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->g:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->h:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->h:Ljava/lang/Integer;

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

    iget v0, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->e:Le/a/v/a/r0/h;

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

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->g:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ActionButton(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconPainter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->e:Le/a/v/a/r0/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->f:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->g:Lcom/truecaller/details_view/ui/actionbutton/ActionButton$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/details_view/ui/actionbutton/ActionButton;->h:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
