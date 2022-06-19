.class public final Le/a/b0/a/a/f;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field public final a:Landroid/webkit/WebView;

.field public final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    :cond_1
    sget p1, Lcom/truecaller/common/R$layout;->dialog_overlay_deeplink_web:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 5
    sget p1, Lcom/truecaller/common/R$id;->parent_view:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v2, "findViewById(R.id.parent_view)"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/b0/a/a/f;->b:Landroid/view/View;

    .line 6
    sget v2, Lcom/truecaller/common/R$id;->close_layout:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 7
    new-instance v3, Le/a/b0/a/a/f$a;

    invoke-direct {v3, p0}, Le/a/b0/a/a/f$a;-><init>(Le/a/b0/a/a/f;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v2, Lcom/truecaller/common/R$id;->progress_bar:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 9
    sget v3, Lcom/truecaller/common/R$id;->web_view:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v3, "parentView.findViewById(R.id.web_view)"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Le/a/b0/a/a/f;->a:Landroid/webkit/WebView;

    .line 10
    new-instance v3, Le/a/b0/q/l;

    const-string v4, "progressBar"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-direct {v3, v2, v1, v4}, Le/a/b0/q/l;-><init>(Landroid/view/View;ZI)V

    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "webView.settings"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 12
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/b0/a/a/f;->b:Landroid/view/View;

    sget v1, Lcom/truecaller/common/R$id;->constraint_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    new-instance v1, Ln3/i/c/d;

    invoke-direct {v1}, Ln3/i/c/d;-><init>()V

    .line 3
    invoke-virtual {v1, v0}, Ln3/i/c/d;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "constraintLayout.getChildAt(0)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Ln3/i/c/d;->j(I)Ln3/i/c/d$a;

    move-result-object v2

    iget-object v2, v2, Ln3/i/c/d$a;->d:Ln3/i/c/d$b;

    const-string v3, "2:3"

    iput-object v3, v2, Ln3/i/c/d$b;->w:Ljava/lang/String;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v0, v2}, Ln3/i/c/d;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Ln3/i/c/d;)V

    .line 8
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
