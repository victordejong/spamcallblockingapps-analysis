.class public Ln3/b/f/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/b/f/b0$c;,
        Ln3/b/f/b0$d;,
        Ln3/b/f/b0$e;,
        Ln3/b/f/b0$a;,
        Ln3/b/f/b0$b;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/reflect/Method;

.field public static B:Ljava/lang/reflect/Method;

.field public static C:Ljava/lang/reflect/Method;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/widget/ListAdapter;

.field public c:Ln3/b/f/x;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:Landroid/database/DataSetObserver;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/AdapterView$OnItemClickListener;

.field public final r:Ln3/b/f/b0$e;

.field public final s:Ln3/b/f/b0$d;

.field public final t:Ln3/b/f/b0$c;

.field public final u:Ln3/b/f/b0$a;

.field public final v:Landroid/os/Handler;

.field public final w:Landroid/graphics/Rect;

.field public x:Landroid/graphics/Rect;

.field public y:Z

.field public z:Landroid/widget/PopupWindow;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1c

    if-gt v1, v4, :cond_0

    .line 2
    :try_start_0
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "setClipToScreenEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Ln3/b/f/b0;->A:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    :try_start_1
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "setEpicenterBounds"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/graphics/Rect;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Ln3/b/f/b0;->C:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    const/16 v4, 0x17

    if-gt v1, v4, :cond_1

    .line 4
    :try_start_2
    const-class v1, Landroid/widget/PopupWindow;

    const-string v4, "getMaxAvailableHeight"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v5, v3

    const/4 v2, 0x2

    aput-object v0, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ln3/b/f/b0;->B:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 2
    iput v0, p0, Ln3/b/f/b0;->d:I

    .line 3
    iput v0, p0, Ln3/b/f/b0;->e:I

    const/16 v0, 0x3ea

    .line 4
    iput v0, p0, Ln3/b/f/b0;->h:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ln3/b/f/b0;->l:I

    const v1, 0x7fffffff

    .line 6
    iput v1, p0, Ln3/b/f/b0;->m:I

    .line 7
    iput v0, p0, Ln3/b/f/b0;->n:I

    .line 8
    new-instance v1, Ln3/b/f/b0$e;

    invoke-direct {v1, p0}, Ln3/b/f/b0$e;-><init>(Ln3/b/f/b0;)V

    iput-object v1, p0, Ln3/b/f/b0;->r:Ln3/b/f/b0$e;

    .line 9
    new-instance v1, Ln3/b/f/b0$d;

    invoke-direct {v1, p0}, Ln3/b/f/b0$d;-><init>(Ln3/b/f/b0;)V

    iput-object v1, p0, Ln3/b/f/b0;->s:Ln3/b/f/b0$d;

    .line 10
    new-instance v1, Ln3/b/f/b0$c;

    invoke-direct {v1, p0}, Ln3/b/f/b0$c;-><init>(Ln3/b/f/b0;)V

    iput-object v1, p0, Ln3/b/f/b0;->t:Ln3/b/f/b0$c;

    .line 11
    new-instance v1, Ln3/b/f/b0$a;

    invoke-direct {v1, p0}, Ln3/b/f/b0$a;-><init>(Ln3/b/f/b0;)V

    iput-object v1, p0, Ln3/b/f/b0;->u:Ln3/b/f/b0$a;

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    .line 13
    iput-object p1, p0, Ln3/b/f/b0;->a:Landroid/content/Context;

    .line 14
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Ln3/b/f/b0;->v:Landroid/os/Handler;

    .line 15
    sget-object v1, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 16
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Ln3/b/f/b0;->f:I

    .line 17
    sget v2, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Ln3/b/f/b0;->g:I

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 18
    iput-boolean v2, p0, Ln3/b/f/b0;->i:Z

    .line 19
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    new-instance v0, Ln3/b/f/h;

    invoke-direct {v0, p1, p2, p3, p4}, Ln3/b/f/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method


# virtual methods
.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/b/f/b0;->g:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/b/f/b0;->i:Z

    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 4
    iget-object v0, p0, Ln3/b/f/b0;->v:Landroid/os/Handler;

    iget-object v1, p0, Ln3/b/f/b0;->r:Ln3/b/f/b0$e;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/b/f/b0;->i:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Ln3/b/f/b0;->g:I

    return v0
.end method

.method public h()Landroid/widget/ListView;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/b/f/b0;->f:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/b/f/b0;->f:I

    return-void
.end method

.method public m(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/b0;->o:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/b/f/b0$b;

    invoke-direct {v0, p0}, Ln3/b/f/b0$b;-><init>(Ln3/b/f/b0;)V

    iput-object v0, p0, Ln3/b/f/b0;->o:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Ln3/b/f/b0;->b:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Ln3/b/f/b0;->b:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Ln3/b/f/b0;->o:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    iget-object p1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    if-eqz p1, :cond_3

    .line 8
    iget-object v0, p0, Ln3/b/f/b0;->b:Landroid/widget/ListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public n(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public o(Landroid/content/Context;Z)Ln3/b/f/x;
    .locals 1

    .line 1
    new-instance v0, Ln3/b/f/x;

    invoke-direct {v0, p1, p2}, Ln3/b/f/x;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public p(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Ln3/b/f/b0;->e:I

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Ln3/b/f/b0;->e:I

    :goto_0
    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Ln3/b/f/b0;->y:Z

    .line 2
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public show()V
    .locals 15

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/b/f/b0;->a:Landroid/content/Context;

    .line 3
    iget-boolean v3, p0, Ln3/b/f/b0;->y:Z

    xor-int/2addr v3, v2

    invoke-virtual {p0, v1, v3}, Ln3/b/f/b0;->o(Landroid/content/Context;Z)Ln3/b/f/x;

    move-result-object v1

    iput-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 4
    iget-object v3, p0, Ln3/b/f/b0;->b:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    iget-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    iget-object v3, p0, Ln3/b/f/b0;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6
    iget-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 7
    iget-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 8
    iget-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    new-instance v3, Ln3/b/f/a0;

    invoke-direct {v3, p0}, Ln3/b/f/a0;-><init>(Ln3/b/f/b0;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 9
    iget-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    iget-object v3, p0, Ln3/b/f/b0;->t:Ln3/b/f/b0$c;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 10
    iget-object v1, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 11
    iget-object v3, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 13
    :goto_0
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 14
    iget-object v4, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    iget-object v1, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    .line 16
    iget-boolean v5, p0, Ln3/b/f/b0;->i:Z

    if-nez v5, :cond_2

    neg-int v4, v4

    .line 17
    iput v4, p0, Ln3/b/f/b0;->g:I

    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    move v1, v3

    .line 19
    :cond_2
    :goto_1
    iget-object v4, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    .line 20
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v3

    .line 21
    :goto_2
    iget-object v6, p0, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 22
    iget v7, p0, Ln3/b/f/b0;->g:I

    const/16 v8, 0x17

    if-gt v0, v8, :cond_5

    .line 23
    sget-object v8, Ln3/b/f/b0;->B:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_4

    .line 24
    :try_start_0
    iget-object v9, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    .line 25
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v10, v5

    .line 26
    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 27
    :catch_0
    :cond_4
    iget-object v4, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6, v7}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    goto :goto_3

    .line 28
    :cond_5
    iget-object v8, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v6, v7, v4}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    .line 29
    :goto_3
    iget v6, p0, Ln3/b/f/b0;->d:I

    const/4 v7, -0x2

    const/4 v8, -0x1

    if-ne v6, v8, :cond_6

    add-int/2addr v4, v1

    goto :goto_6

    .line 30
    :cond_6
    iget v6, p0, Ln3/b/f/b0;->e:I

    if-eq v6, v7, :cond_8

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v6, v8, :cond_7

    .line 31
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    .line 32
    :cond_7
    iget-object v6, p0, Ln3/b/f/b0;->a:Landroid/content/Context;

    .line 33
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v10

    sub-int/2addr v6, v11

    .line 34
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_4

    .line 35
    :cond_8
    iget-object v6, p0, Ln3/b/f/b0;->a:Landroid/content/Context;

    .line 36
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v9, p0, Ln3/b/f/b0;->w:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v9

    sub-int/2addr v6, v10

    const/high16 v9, -0x80000000

    .line 37
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 38
    :goto_4
    iget-object v9, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    sub-int/2addr v4, v3

    invoke-virtual {v9, v6, v4, v8}, Ln3/b/f/x;->a(III)I

    move-result v4

    if-lez v4, :cond_9

    .line 39
    iget-object v6, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    invoke-virtual {v6}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v6

    iget-object v9, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    .line 40
    invoke-virtual {v9}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v9, v6

    add-int/2addr v9, v1

    add-int/2addr v9, v3

    goto :goto_5

    :cond_9
    move v9, v3

    :goto_5
    add-int/2addr v4, v9

    .line 41
    :goto_6
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    if-ne v1, v5, :cond_a

    move v1, v2

    goto :goto_7

    :cond_a
    move v1, v3

    .line 42
    :goto_7
    iget-object v5, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    iget v6, p0, Ln3/b/f/b0;->h:I

    .line 43
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 44
    iget-object v5, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 45
    iget-object v0, p0, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 46
    sget-object v5, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 48
    :cond_b
    iget v0, p0, Ln3/b/f/b0;->e:I

    if-ne v0, v8, :cond_c

    move v0, v8

    goto :goto_8

    :cond_c
    if-ne v0, v7, :cond_d

    .line 49
    iget-object v0, p0, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 51
    :cond_d
    :goto_8
    iget v5, p0, Ln3/b/f/b0;->d:I

    if-ne v5, v8, :cond_12

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    move v4, v8

    :goto_9
    if-eqz v1, :cond_10

    .line 52
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    iget v5, p0, Ln3/b/f/b0;->e:I

    if-ne v5, v8, :cond_f

    move v5, v8

    goto :goto_a

    :cond_f
    move v5, v3

    :goto_a
    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 53
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    .line 54
    :cond_10
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    iget v5, p0, Ln3/b/f/b0;->e:I

    if-ne v5, v8, :cond_11

    move v3, v8

    :cond_11
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 55
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_b

    :cond_12
    if-ne v5, v7, :cond_13

    goto :goto_b

    :cond_13
    move v4, v5

    .line 56
    :goto_b
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 57
    iget-object v9, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    .line 58
    iget-object v10, p0, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 59
    iget v11, p0, Ln3/b/f/b0;->f:I

    iget v12, p0, Ln3/b/f/b0;->g:I

    if-gez v0, :cond_14

    move v13, v8

    goto :goto_c

    :cond_14
    move v13, v0

    :goto_c
    if-gez v4, :cond_15

    move v14, v8

    goto :goto_d

    :cond_15
    move v14, v4

    :goto_d
    invoke-virtual/range {v9 .. v14}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_12

    .line 60
    :cond_16
    iget v1, p0, Ln3/b/f/b0;->e:I

    if-ne v1, v8, :cond_17

    move v1, v8

    goto :goto_e

    :cond_17
    if-ne v1, v7, :cond_18

    .line 61
    iget-object v1, p0, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 62
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 63
    :cond_18
    :goto_e
    iget v5, p0, Ln3/b/f/b0;->d:I

    if-ne v5, v8, :cond_19

    move v4, v8

    goto :goto_f

    :cond_19
    if-ne v5, v7, :cond_1a

    goto :goto_f

    :cond_1a
    move v4, v5

    .line 64
    :goto_f
    iget-object v5, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 65
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1b

    .line 66
    sget-object v4, Ln3/b/f/b0;->A:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1c

    .line 67
    :try_start_1
    iget-object v5, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_10

    .line 68
    :cond_1b
    iget-object v4, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    .line 69
    :catch_1
    :cond_1c
    :goto_10
    iget-object v4, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 70
    iget-object v4, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    iget-object v5, p0, Ln3/b/f/b0;->s:Ln3/b/f/b0$d;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 71
    iget-boolean v4, p0, Ln3/b/f/b0;->k:Z

    if-eqz v4, :cond_1d

    .line 72
    iget-object v4, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, Ln3/b/f/b0;->j:Z

    .line 73
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOverlapAnchor(Z)V

    :cond_1d
    if-gt v0, v1, :cond_1e

    .line 74
    sget-object v0, Ln3/b/f/b0;->C:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    .line 75
    :try_start_2
    iget-object v1, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Ln3/b/f/b0;->x:Landroid/graphics/Rect;

    aput-object v5, v4, v3

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    .line 76
    :cond_1e
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    iget-object v1, p0, Ln3/b/f/b0;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 77
    :catch_2
    :cond_1f
    :goto_11
    iget-object v0, p0, Ln3/b/f/b0;->z:Landroid/widget/PopupWindow;

    .line 78
    iget-object v1, p0, Ln3/b/f/b0;->p:Landroid/view/View;

    .line 79
    iget v3, p0, Ln3/b/f/b0;->f:I

    iget v4, p0, Ln3/b/f/b0;->g:I

    iget v5, p0, Ln3/b/f/b0;->l:I

    .line 80
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 81
    iget-object v0, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setSelection(I)V

    .line 82
    iget-boolean v0, p0, Ln3/b/f/b0;->y:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    invoke-virtual {v0}, Ln3/b/f/x;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 83
    :cond_20
    iget-object v0, p0, Ln3/b/f/b0;->c:Ln3/b/f/x;

    if-eqz v0, :cond_21

    .line 84
    invoke-virtual {v0, v2}, Ln3/b/f/x;->setListSelectionHidden(Z)V

    .line 85
    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 86
    :cond_21
    iget-boolean v0, p0, Ln3/b/f/b0;->y:Z

    if-nez v0, :cond_22

    .line 87
    iget-object v0, p0, Ln3/b/f/b0;->v:Landroid/os/Handler;

    iget-object v1, p0, Ln3/b/f/b0;->u:Ln3/b/f/b0$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    :goto_12
    return-void
.end method
