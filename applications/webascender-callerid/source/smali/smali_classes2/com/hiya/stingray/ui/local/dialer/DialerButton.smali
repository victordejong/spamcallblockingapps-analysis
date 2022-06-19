.class public final Lcom/hiya/stingray/ui/local/dialer/DialerButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private f:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/ui/local/dialer/DialerButton;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/ui/local/dialer/DialerButton;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p2}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->c(Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->b()V

    return-void
.end method

.method private final b()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0069

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->k:Landroid/graphics/drawable/Drawable;

    const-string v1, "textContainer"

    const/16 v2, 0x8

    const-string v3, "imageView"

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/hiya/stingray/o;->H1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    sget v0, Lcom/hiya/stingray/o;->q4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->H1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    sget v0, Lcom/hiya/stingray/o;->q4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    sget v0, Lcom/hiya/stingray/o;->a0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "characterView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v0, Lcom/hiya/stingray/o;->T1:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "lettersView"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    :goto_0
    sget v0, Lcom/hiya/stingray/o;->a0:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->l:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    new-instance v0, Lcom/hiya/stingray/ui/local/dialer/DialerButton$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/dialer/DialerButton$a;-><init>(Lcom/hiya/stingray/ui/local/dialer/DialerButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_4

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->j:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v2, Lkotlin/c0/j;

    const-string v3, "(.)"

    invoke-direct {v2, v3}, Lkotlin/c0/j;-><init>(Ljava/lang/String;)V

    const-string v3, "$1 "

    invoke-virtual {v2, v1, v3}, Lkotlin/c0/j;->d(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    .line 15
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 16
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method

.method private final c(Landroid/util/AttributeSet;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/p;->a:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->i:Ljava/lang/String;

    const/4 v1, 0x3

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->j:Ljava/lang/String;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f06004b

    invoke-static {v2, v3}, Lcom/hiya/stingray/util/e0;->g(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->l:Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->k:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->m:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->m:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->m:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Button::class.java.name"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCharacter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final getClick()Lkotlin/w/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/l<",
            "Lcom/hiya/stingray/ui/local/dialer/DialerButton;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->f:Lkotlin/w/b/l;

    return-object v0
.end method

.method public final getDigitColor()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getLetters()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getLongPress()Lkotlin/w/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/l<",
            "Lcom/hiya/stingray/ui/local/dialer/DialerButton;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->g:Lkotlin/w/b/l;

    return-object v0
.end method

.method public final getSecondaryCharacter()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->i:Ljava/lang/String;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->f:Lkotlin/w/b/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/r;

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setCharacter(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->h:Ljava/lang/String;

    return-void
.end method

.method public final setClick(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/ui/local/dialer/DialerButton;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->f:Lkotlin/w/b/l;

    return-void
.end method

.method public final setDigitColor(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->l:Ljava/lang/Integer;

    return-void
.end method

.method public final setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->k:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setLetters(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->j:Ljava/lang/String;

    return-void
.end method

.method public final setLongPress(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/ui/local/dialer/DialerButton;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->g:Lkotlin/w/b/l;

    return-void
.end method

.method public final setSecondaryCharacter(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/DialerButton;->i:Ljava/lang/String;

    return-void
.end method
