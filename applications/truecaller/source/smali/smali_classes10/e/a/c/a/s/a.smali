.class public final Le/a/c/a/s/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/widget/SearchEditText;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/widget/SearchEditText;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string p1, "event"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 2
    iget-boolean v0, v0, Lcom/truecaller/insights/ui/widget/SearchEditText;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 3
    :goto_0
    aget-object p1, p1, v0

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    iget-object v2, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 7
    iget-boolean v3, v2, Lcom/truecaller/insights/ui/widget/SearchEditText;->e:Z

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 9
    iget-object v5, v5, Lcom/truecaller/insights/ui/widget/SearchEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v4

    int-to-float v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    .line 11
    :goto_1
    iput-boolean v3, v2, Lcom/truecaller/insights/ui/widget/SearchEditText;->f:Z

    .line 12
    iget-object v2, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 13
    iget-boolean v3, v2, Lcom/truecaller/insights/ui/widget/SearchEditText;->e:Z

    if-nez v3, :cond_4

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object v3, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 15
    iget-object v4, v4, Lcom/truecaller/insights/ui/widget/SearchEditText;->d:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float p2, p2, v3

    if-lez p2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    .line 17
    :goto_2
    iput-boolean v0, v2, Lcom/truecaller/insights/ui/widget/SearchEditText;->g:Z

    .line 18
    :cond_5
    iget-object p2, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 19
    iget-boolean v0, p2, Lcom/truecaller/insights/ui/widget/SearchEditText;->f:Z

    if-nez v0, :cond_6

    .line 20
    iget-boolean v0, p2, Lcom/truecaller/insights/ui/widget/SearchEditText;->g:Z

    if-eqz v0, :cond_7

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, ""

    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p1, p0, Le/a/c/a/s/a;->a:Lcom/truecaller/insights/ui/widget/SearchEditText;

    .line 23
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/widget/SearchEditText;->a()V

    :cond_7
    return v1
.end method
