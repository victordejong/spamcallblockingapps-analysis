.class public final Lcom/hiya/stingray/ui/local/common/NavigationTabBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;
    }
.end annotation


# instance fields
.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lkotlin/w/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Landroid/graphics/Paint;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->i:I

    const/high16 v1, -0x1000000

    .line 4
    iput v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->j:I

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->k:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->l:I

    .line 7
    iput v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->m:I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 8
    sget-object v2, Lcom/hiya/stingray/p;->e:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    iget p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->i:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->i:I

    .line 10
    iget p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->j:I

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->j:I

    .line 11
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->k:Landroid/graphics/Paint;

    const/4 p2, 0x3

    .line 12
    iget v1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->l:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->l:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p2

    iget v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->l:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->i:I

    return p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->j:I

    return p0
.end method

.method private final f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->f:Ljava/util/ArrayList;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;

    .line 3
    iget v5, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->m:I

    if-ne v5, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->b(Z)V

    move v2, v4

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {}, Lkotlin/s/k;->p()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public final d(ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    .line 1
    new-instance v6, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0138

    const/4 v7, 0x0

    invoke-virtual {v0, v1, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v0, "LayoutInflater.from(cont\u2026_bar_button, this, false)"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;-><init>(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;ILandroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {v6}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a()Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/hiya/stingray/o;->H:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p3, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;

    invoke-direct {p3, p0, v6}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$b;-><init>(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {v6}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p3, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;

    invoke-direct {p3, p0, v6}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$c;-><init>(Lcom/hiya/stingray/ui/local/common/NavigationTabBar;Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;)V

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 5
    invoke-virtual {v6}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a()Landroid/view/View;

    move-result-object p1

    const/4 p3, -0x1

    invoke-virtual {p0, p1, v7, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 6
    invoke-virtual {v6}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->a()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string p2, "item.view.button"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar$a;->c(Z)V

    return-void
.end method

.method public final getLongPressedCallback()Lkotlin/w/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->h:Lkotlin/w/b/l;

    return-object v0
.end method

.method public final getSelectedCallback()Lkotlin/w/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/p<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->g:Lkotlin/w/b/p;

    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->m:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->l:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->k:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setLongPressedCallback(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->h:Lkotlin/w/b/l;

    return-void
.end method

.method public final setSelectedCallback(Lkotlin/w/b/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->g:Lkotlin/w/b/p;

    return-void
.end method

.method public final setSelectedIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->m:I

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->f()V

    return-void
.end method
