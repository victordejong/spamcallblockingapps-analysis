.class public Lzendesk/belvedere/o;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/o$d;,
        Lzendesk/belvedere/o$c;,
        Lzendesk/belvedere/o$b;
    }
.end annotation


# instance fields
.field private final f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lzendesk/belvedere/o$c;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Lzendesk/belvedere/o$d;

.field private l:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lzendesk/belvedere/o;->g:I

    .line 3
    iput v0, p0, Lzendesk/belvedere/o;->h:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzendesk/belvedere/o;->j:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lzendesk/belvedere/o;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lzendesk/belvedere/o;->f:I

    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzendesk/belvedere/a0/d;->b:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 8
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzendesk/belvedere/o;->l:Landroid/widget/EditText;

    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 11
    iget-object v0, p0, Lzendesk/belvedere/o;->l:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 12
    iget-object v0, p0, Lzendesk/belvedere/o;->l:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lzendesk/belvedere/o;->l:Landroid/widget/EditText;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 14
    iget-object v0, p0, Lzendesk/belvedere/o;->l:Landroid/widget/EditText;

    const/16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 15
    iget-object v0, p0, Lzendesk/belvedere/o;->l:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lzendesk/belvedere/o$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lzendesk/belvedere/o$b;-><init>(Lzendesk/belvedere/o;Landroid/app/Activity;Lzendesk/belvedere/o$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lzendesk/belvedere/o;Landroid/app/Activity;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/belvedere/o;->j(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lzendesk/belvedere/o;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzendesk/belvedere/o;->i:Z

    return p1
.end method

.method static synthetic c(Lzendesk/belvedere/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lzendesk/belvedere/o;->h:I

    return p0
.end method

.method static synthetic d(Lzendesk/belvedere/o;I)I
    .locals 0

    .line 1
    iput p1, p0, Lzendesk/belvedere/o;->h:I

    return p1
.end method

.method static synthetic e(Lzendesk/belvedere/o;)Lzendesk/belvedere/o$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/o;->k:Lzendesk/belvedere/o$d;

    return-object p0
.end method

.method static synthetic f(Lzendesk/belvedere/o;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/belvedere/o;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lzendesk/belvedere/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/belvedere/o;->n()V

    return-void
.end method

.method private getCachedInset()I
    .locals 2

    .line 1
    iget v0, p0, Lzendesk/belvedere/o;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lzendesk/belvedere/o;->getViewInset()I

    move-result v0

    iput v0, p0, Lzendesk/belvedere/o;->g:I

    .line 3
    :cond_0
    iget v0, p0, Lzendesk/belvedere/o;->g:I

    return v0
.end method

.method private getStatusBarHeight()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getViewInset()I
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAttachInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mStableInsets"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8
    iget v0, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getViewPortHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lzendesk/belvedere/o;->f:I

    sub-int/2addr v0, v1

    invoke-direct {p0}, Lzendesk/belvedere/o;->getCachedInset()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic h(Lzendesk/belvedere/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzendesk/belvedere/o;->m()V

    return-void
.end method

.method private j(Landroid/app/Activity;)I
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 4
    invoke-direct {p0}, Lzendesk/belvedere/o;->getViewPortHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    return p1
.end method

.method static k(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public static l(Landroid/app/Activity;)Lzendesk/belvedere/o;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lzendesk/belvedere/o;

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lzendesk/belvedere/o;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v1, Lzendesk/belvedere/o;

    invoke-direct {v1, p0}, Lzendesk/belvedere/o;-><init>(Landroid/app/Activity;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/o;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/o$c;

    invoke-interface {v1}, Lzendesk/belvedere/o$c;->onKeyboardDismissed()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/o;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzendesk/belvedere/o$c;

    invoke-interface {v1}, Lzendesk/belvedere/o$c;->onKeyboardVisible()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static o(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    new-instance v0, Lzendesk/belvedere/o$a;

    invoke-direct {v0, p0}, Lzendesk/belvedere/o$a;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getInputTrap()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/o;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method public getKeyboardHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lzendesk/belvedere/o;->h:I

    return v0
.end method

.method public i(Lzendesk/belvedere/o$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/o;->j:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method setKeyboardHeightListener(Lzendesk/belvedere/o$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/o;->k:Lzendesk/belvedere/o$d;

    return-void
.end method
