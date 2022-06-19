.class public abstract Le/h/a/c/q0/d;
.super Le/h/a/c/q0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/q0/d$a;
    }
.end annotation


# instance fields
.field public h:Le/h/a/c/q0/a0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public dB()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 3
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getId()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x28

    .line 4
    invoke-virtual {p0, v1}, Le/h/a/c/q0/a;->TA(I)I

    move-result v1

    div-int/2addr v1, v2

    neg-int v1, v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method public final eB()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v0}, Le/h/a/c/q0/a0;->a()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 3
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->i:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    iget-object v0, v0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 6
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 8
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 9
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->p:Ljava/lang/String;

    const-string v4, "<style>body{width:"

    const-string v5, "px; height: "

    const-string v6, "px; margin: 0; padding:0;}</style>"

    .line 10
    invoke-static {v4, v0, v5, v1, v6}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<head>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    iget-object v0, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 13
    iget-object v5, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v8, "text/html"

    const-string v9, "utf-8"

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 15
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->i:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    new-instance v2, Landroid/webkit/WebViewClient;

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 17
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/h/a/c/q0/a;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/c/q0/d;->eB()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    :try_start_0
    sget p3, Lcom/clevertap/android/sdk/R$layout;->inapp_html_full:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcom/clevertap/android/sdk/R$id;->inapp_html_full_relative_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 3
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 4
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5
    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 6
    iget-char v2, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->C:C

    const/16 v3, 0x62

    if-eq v2, v3, :cond_4

    const/16 v3, 0x63

    if-eq v2, v3, :cond_3

    const/16 v1, 0x6c

    if-eq v2, v1, :cond_2

    const/16 v1, 0x72

    if-eq v2, v1, :cond_1

    const/16 v1, 0x74

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 7
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    .line 8
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    .line 9
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_4
    const/16 v1, 0xc

    .line 11
    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    :goto_0
    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 13
    new-instance v1, Le/h/a/c/q0/a0;

    iget-object v3, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 14
    iget v4, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->P:I

    .line 15
    iget v5, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->m:I

    .line 16
    iget v6, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    .line 17
    iget v7, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    move-object v2, v1

    .line 18
    invoke-direct/range {v2 .. v7}, Le/h/a/c/q0/a0;-><init>(Landroid/content/Context;IIII)V

    iput-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    .line 19
    new-instance v1, Le/h/a/c/q0/d$a;

    invoke-direct {v1, p0}, Le/h/a/c/q0/d$a;-><init>(Le/h/a/c/q0/d;)V

    .line 20
    iget-object v2, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 21
    iget-object v1, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 22
    iget-boolean v1, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->v:Z

    if-eqz v1, :cond_5

    .line 23
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 24
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 25
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 26
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 27
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 28
    iget-object v1, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    new-instance v2, Le/h/a/c/n;

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    iget-object v4, p0, Le/h/a/c/q0/a;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v3, v4}, Le/h/a/c/p;->k(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/p;

    move-result-object v3

    invoke-direct {v2, v3}, Le/h/a/c/n;-><init>(Le/h/a/c/p;)V

    const-string v3, "CleverTap"

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :cond_5
    iget-object v1, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 32
    iget-boolean v1, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->j:Z

    if-eqz v1, :cond_6

    .line 33
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 34
    :cond_6
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 35
    :goto_1
    iget-object v0, p0, Le/h/a/c/q0/d;->h:Le/h/a/c/q0/a0;

    invoke-virtual {p2, v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object p3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 37
    iget-boolean p3, p3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->D:Z

    if-eqz p3, :cond_7

    .line 38
    new-instance p3, Lcom/clevertap/android/sdk/customviews/CloseImageView;

    iget-object v0, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    invoke-direct {p3, v0}, Lcom/clevertap/android/sdk/customviews/CloseImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Le/h/a/c/q0/a;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    .line 39
    invoke-virtual {p0}, Le/h/a/c/q0/d;->dB()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p3

    .line 40
    iget-object v0, p0, Le/h/a/c/q0/a;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    new-instance v1, Le/h/a/c/q0/c;

    invoke-direct {v1, p0}, Le/h/a/c/q0/c;-><init>(Le/h/a/c/q0/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Le/h/a/c/q0/a;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {p2, v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 42
    :catchall_0
    iget-object p1, p0, Le/h/a/c/q0/a;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/q0/a;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 43
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :cond_7
    :goto_2
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/h/a/c/q0/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/c/q0/d;->eB()V

    return-void
.end method
