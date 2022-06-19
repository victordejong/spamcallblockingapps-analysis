.class public final Le/a/b0/a/q$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/q;->a(Landroid/content/Context;Ln3/v/b0;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.ui.WebViewContainerHelperImpl$displayWebViewInContainer$2"
    f = "WebViewContainerHelper.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b0/a/q;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/content/Context;

.field public final synthetic i:Lcom/truecaller/common/ui/constant/WebViewContainerType;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/b0/a/q;Ljava/lang/String;Landroid/content/Context;Lcom/truecaller/common/ui/constant/WebViewContainerType;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/q$a;->f:Le/a/b0/a/q;

    iput-object p2, p0, Le/a/b0/a/q$a;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/b0/a/q$a;->h:Landroid/content/Context;

    iput-object p4, p0, Le/a/b0/a/q$a;->i:Lcom/truecaller/common/ui/constant/WebViewContainerType;

    iput-object p5, p0, Le/a/b0/a/q$a;->j:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b0/a/q$a;

    iget-object v1, p0, Le/a/b0/a/q$a;->f:Le/a/b0/a/q;

    iget-object v2, p0, Le/a/b0/a/q$a;->g:Ljava/lang/String;

    iget-object v3, p0, Le/a/b0/a/q$a;->h:Landroid/content/Context;

    iget-object v4, p0, Le/a/b0/a/q$a;->i:Lcom/truecaller/common/ui/constant/WebViewContainerType;

    iget-object v5, p0, Le/a/b0/a/q$a;->j:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/b0/a/q$a;-><init>(Le/a/b0/a/q;Ljava/lang/String;Landroid/content/Context;Lcom/truecaller/common/ui/constant/WebViewContainerType;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/b0/a/q$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/b0/a/q$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b0/a/q$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b0/a/q$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/b0/a/q$a;->f:Le/a/b0/a/q;

    iget-object v1, p0, Le/a/b0/a/q$a;->g:Ljava/lang/String;

    iput v2, p0, Le/a/b0/a/q$a;->e:I

    invoke-virtual {p1, v1, p0}, Le/a/b0/a/q;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 6
    iget-object v0, p0, Le/a/b0/a/q$a;->f:Le/a/b0/a/q;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Le/a/b0/a/q$a;->f:Le/a/b0/a/q;

    iget-object v4, p0, Le/a/b0/a/q$a;->h:Landroid/content/Context;

    iget-object v5, p0, Le/a/b0/a/q$a;->i:Lcom/truecaller/common/ui/constant/WebViewContainerType;

    iget-object v6, p0, Le/a/b0/a/q$a;->j:Ljava/lang/String;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x2

    const-string v8, "url"

    if-eqz v3, :cond_9

    if-eq v3, v2, :cond_7

    if-ne v3, v7, :cond_6

    .line 9
    new-instance v3, Le/a/b0/a/a/f;

    invoke-direct {v3, v4}, Le/a/b0/a/a/f;-><init>(Landroid/content/Context;)V

    if-eqz v6, :cond_4

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    const-string p1, "content"

    .line 11
    invoke-static {v6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, v3, Le/a/b0/a/a/f;->a:Landroid/webkit/WebView;

    const-string v2, "text/html"

    const-string v4, "utf-8"

    invoke-virtual {p1, v6, v2, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Le/a/b0/a/a/f;->a()V

    goto/16 :goto_2

    .line 14
    :cond_5
    invoke-static {p1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, v3, Le/a/b0/a/a/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Le/a/b0/a/a/f;->a()V

    goto/16 :goto_2

    .line 17
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 18
    :cond_7
    new-instance v3, Le/a/b0/a/a/f;

    invoke-direct {v3, v4}, Le/a/b0/a/a/f;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {p1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v2, v3, Le/a/b0/a/a/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v4, -0x1

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 21
    iget-object v2, v3, Le/a/b0/a/a/f;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v4, v4}, Landroid/view/Window;->setLayout(II)V

    .line 23
    :cond_8
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_2

    .line 24
    :cond_9
    new-instance v3, Le/a/b0/a/f0/a;

    invoke-direct {v3, v4}, Le/a/b0/a/f0/a;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {p1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget v4, Lcom/truecaller/common/R$layout;->view_bottom_sheet_deeplink_web:I

    invoke-virtual {v3, v4}, Le/m/a/g/e/d;->setContentView(I)V

    .line 27
    sget v4, Lcom/truecaller/common/R$id;->parent_view:I

    invoke-virtual {v3, v4}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    const-string v6, "findViewById<View>(R.id.parent_view) ?: return"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget v6, Lcom/truecaller/common/R$id;->progress_bar:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 29
    sget v8, Lcom/truecaller/common/R$id;->web_view:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    const-string v9, "webView"

    .line 30
    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Le/a/b0/q/l;

    const-string v10, "progressBar"

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v6, v5, v7}, Le/a/b0/q/l;-><init>(Landroid/view/View;ZI)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 31
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    const-string v6, "webView.settings"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 32
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 33
    invoke-virtual {v8, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->H(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    const-string v2, "BottomSheetBehavior.from\u2026arentView.parent as View)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v4, 0x3fd999999999999aL    # 0.4

    .line 35
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v6, "Resources.getSystem()"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v6, v2

    mul-double/2addr v6, v4

    double-to-int v2, v6

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L(I)V

    .line 36
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 37
    :cond_a
    :goto_2
    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    iput-object v1, v0, Le/a/b0/a/q;->a:Ljava/lang/ref/WeakReference;

    .line 39
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
