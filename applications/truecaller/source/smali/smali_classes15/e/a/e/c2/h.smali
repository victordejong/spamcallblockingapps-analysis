.class public final synthetic Le/a/e/c2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/EditBase;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/components/EditBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/h;->a:Lcom/truecaller/ui/components/EditBase;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p1, p0, Le/a/e/c2/h;->a:Lcom/truecaller/ui/components/EditBase;

    .line 1
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p1, Lcom/truecaller/ui/components/EditBase;->e:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    aget-object v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_3

    .line 2
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_3

    .line 3
    :cond_2
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    iget-boolean v3, p1, Lcom/truecaller/ui/components/EditBase;->e:Z

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p1, Lcom/truecaller/ui/components/EditBase;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iput-boolean v3, p1, Lcom/truecaller/ui/components/EditBase;->f:Z

    .line 5
    iget-boolean v3, p1, Lcom/truecaller/ui/components/EditBase;->e:Z

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p1, Lcom/truecaller/ui/components/EditBase;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p1, Lcom/truecaller/ui/components/EditBase;->g:Z

    .line 6
    :cond_5
    iget-boolean p2, p1, Lcom/truecaller/ui/components/EditBase;->f:Z

    if-nez p2, :cond_6

    iget-boolean p2, p1, Lcom/truecaller/ui/components/EditBase;->g:Z

    if-eqz p2, :cond_7

    :cond_6
    if-eqz v0, :cond_7

    const-string p2, ""

    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/ui/components/EditBase;->a()V

    :cond_7
    :goto_3
    return v2
.end method
