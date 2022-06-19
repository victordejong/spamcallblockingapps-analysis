.class public final Le/a/t/a/a/k;
.super Le/m/a/g/e/d;
.source "SourceFile"


# instance fields
.field public final o:Landroid/os/Handler;

.field public p:Le/a/t/a/a/q;

.field public final q:Ls1/g;

.field public final r:Ls1/g;

.field public final s:Ls1/g;

.field public final t:Ls1/g;

.field public u:Z

.field public final v:Le/a/t/a/a/k$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Le/a/t/a/a/k;->o:Landroid/os/Handler;

    .line 3
    sget v0, Lcom/truecaller/android/truemoji/R$id;->etSearch:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/t/a/a/k;->q:Ls1/g;

    .line 4
    sget v0, Lcom/truecaller/android/truemoji/R$id;->gifView:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/t/a/a/k;->r:Ls1/g;

    .line 5
    sget v0, Lcom/truecaller/android/truemoji/R$id;->imgClose:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/t/a/a/k;->s:Ls1/g;

    .line 6
    sget v1, Lcom/truecaller/android/truemoji/R$id;->rvGif:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/t/a/a/k;->t:Ls1/g;

    .line 7
    new-instance v2, Le/a/t/a/a/k$f;

    invoke-direct {v2, p0}, Le/a/t/a/a/k$f;-><init>(Le/a/t/a/a/k;)V

    iput-object v2, p0, Le/a/t/a/a/k;->v:Le/a/t/a/a/k$f;

    .line 8
    move-object v3, p1

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Le/a/e/a2;->p(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const-string v4, "$this$getActionBarHeight"

    .line 9
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10102eb

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    iget v4, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "resources"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 12
    invoke-static {p1}, Le/a/p5/s0/g;->f0(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 13
    invoke-static {p1, v7}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v4

    sget v5, Lcom/truecaller/android/truemoji/R$layout;->view_gif_search:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const-string v5, "view"

    .line 14
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Le/a/t/a/a/k$c;

    invoke-direct {v6, v4, v3}, Le/a/t/a/a/k$c;-><init>(Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 15
    invoke-virtual {p0, v4}, Le/m/a/g/e/d;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type android.view.View"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-static {v4}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v4

    const-string v5, "BottomSheetBehavior.from(view.parent as View)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v4, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(I)V

    .line 18
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 19
    new-instance v3, Le/a/t/a/a/k$d;

    invoke-direct {v3, p0}, Le/a/t/a/a/k$d;-><init>(Le/a/t/a/a/k;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    new-instance v0, Le/a/t/a/a/k$g;

    invoke-direct {v0, p0}, Le/a/t/a/a/k$g;-><init>(Le/a/t/a/a/k;)V

    .line 21
    invoke-virtual {p0}, Le/a/t/a/a/k;->g()Landroid/widget/EditText;

    move-result-object v3

    .line 22
    sget v4, Lcom/truecaller/android/truemoji/R$attr;->tcx_textPrimary:I

    invoke-static {p1, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 23
    sget v4, Lcom/truecaller/android/truemoji/R$attr;->tcx_textSecondary:I

    invoke-static {p1, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 24
    new-instance v4, Le/a/t/a/a/k$a;

    invoke-direct {v4, p0, p1, v0}, Le/a/t/a/a/k$a;-><init>(Le/a/t/a/a/k;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 25
    new-instance v4, Le/a/t/a/a/k$b;

    invoke-direct {v4, v3, p0, p1, v0}, Le/a/t/a/a/k$b;-><init>(Landroid/widget/EditText;Le/a/t/a/a/k;Landroid/content/Context;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 26
    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 28
    invoke-virtual {p0}, Le/a/t/a/a/k;->h()Lcom/truecaller/android/truemoji/gifs/GifView;

    move-result-object p1

    new-instance v0, Le/a/t/a/a/k$e;

    invoke-direct {v0, p0}, Le/a/t/a/a/k$e;-><init>(Le/a/t/a/a/k;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/android/truemoji/gifs/GifView;->setonNoInternetClicked(Ls1/z/b/a;)V

    return-void
.end method


# virtual methods
.method public final g()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Le/a/t/a/a/k;->q:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public final h()Lcom/truecaller/android/truemoji/gifs/GifView;
    .locals 1

    iget-object v0, p0, Le/a/t/a/a/k;->r:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/truemoji/gifs/GifView;

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Le/a/t/a/a/k;->p:Le/a/t/a/a/q;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/t/a/a/q;->u1()V

    return-void

    :cond_0
    const-string v0, "searchListener"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/t/a/a/k;->g()Landroid/widget/EditText;

    move-result-object p1

    const-string v0, "etSearch"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Le/a/p5/s0/f;->Y(Landroid/view/View;ZJI)V

    :cond_0
    return-void
.end method
