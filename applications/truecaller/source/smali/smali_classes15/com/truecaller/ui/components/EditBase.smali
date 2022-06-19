.class public Lcom/truecaller/ui/components/EditBase;
.super Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ui/components/EditBase$a;
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public final d:Landroid/graphics/drawable/Drawable;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Lcom/truecaller/ui/components/EditBase$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    .line 2
    invoke-static {p1, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v2

    sget-object v3, Lcom/truecaller/R$styleable;->EditBase:[I

    invoke-virtual {v2, p2, v3}, Landroid/view/ContextThemeWrapper;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v2, 0x7f080358

    .line 3
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    const v3, 0x7f040690

    .line 4
    invoke-static {p1, v2, v3}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/truecaller/ui/components/EditBase;->d:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Le/a/b0/k/h;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/truecaller/ui/components/EditBase;->e:Z

    const/high16 p2, 0x41c00000    # 24.0f

    .line 7
    invoke-static {p1, p2}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result p1

    .line 8
    invoke-virtual {v2, v0, v0, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    new-instance p1, Le/a/e/c2/h;

    invoke-direct {p1, p0}, Le/a/e/c2/h;-><init>(Lcom/truecaller/ui/components/EditBase;)V

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    new-instance p1, Le/a/e/c2/c0;

    invoke-direct {p1, p0}, Le/a/e/c2/c0;-><init>(Lcom/truecaller/ui/components/EditBase;)V

    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ui/components/EditBase;->e:Z

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aget-object v0, v0, v3

    .line 3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    .line 4
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v1

    .line 5
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 7
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v3, v4, v3

    .line 8
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aget-object v1, v4, v1

    .line 9
    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setClearIconListener(Lcom/truecaller/ui/components/EditBase$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/EditBase;->h:Lcom/truecaller/ui/components/EditBase$a;

    return-void
.end method
