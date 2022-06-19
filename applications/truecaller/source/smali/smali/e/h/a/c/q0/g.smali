.class public abstract Le/h/a/c/q0/g;
.super Le/h/a/c/q0/f;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/q0/g$b;,
        Le/h/a/c/q0/g$c;
    }
.end annotation


# instance fields
.field public final h:Landroid/view/GestureDetector;

.field public i:Le/h/a/c/q0/a0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/h/a/c/q0/f;-><init>()V

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Le/h/a/c/q0/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/h/a/c/q0/g$b;-><init>(Le/h/a/c/q0/g;Le/h/a/c/q0/g$a;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Le/h/a/c/q0/g;->h:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public abstract UA(Landroid/view/View;)Landroid/view/ViewGroup;
.end method

.method public abstract VA(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final WA()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    invoke-virtual {v0}, Le/h/a/c/q0/a0;->a()V

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    iget-object v0, v0, Le/h/a/c/q0/a0;->a:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 3
    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 4
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

    .line 5
    iget-object v3, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 6
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->p:Ljava/lang/String;

    const-string v4, "<style>body{width:"

    const-string v5, "px; height: "

    const-string v6, "px; margin: 0; padding:0;}</style>"

    .line 7
    invoke-static {v4, v0, v5, v1, v6}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<head>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v0, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 10
    iget-object v5, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    const/4 v6, 0x0

    const-string v8, "text/html"

    const-string v9, "utf-8"

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/c/q0/g;->WA()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/h/a/c/q0/g;->VA(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Le/h/a/c/q0/g;->UA(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p2

    .line 3
    new-instance p3, Le/h/a/c/q0/a0;

    iget-object v1, p0, Le/h/a/c/q0/a;->c:Landroid/content/Context;

    iget-object v0, p0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 4
    iget v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->P:I

    .line 5
    iget v3, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->m:I

    .line 6
    iget v4, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    .line 7
    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    move-object v0, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Le/h/a/c/q0/a0;-><init>(Landroid/content/Context;IIII)V

    iput-object p3, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    .line 9
    new-instance p3, Le/h/a/c/q0/g$c;

    invoke-direct {p3, p0}, Le/h/a/c/q0/g$c;-><init>(Le/h/a/c/q0/g;)V

    .line 10
    iget-object v0, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 11
    iget-object p3, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    invoke-virtual {p3, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object p3, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    invoke-virtual {p3, p0}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-eqz p2, :cond_0

    .line 13
    iget-object p3, p0, Le/h/a/c/q0/g;->i:Le/h/a/c/q0/a0;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 14
    :catchall_0
    iget-object p1, p0, Le/h/a/c/q0/a;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {p1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iget-object p2, p0, Le/h/a/c/q0/a;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/h/a/c/q0/g;->h:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/h/a/c/q0/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/c/q0/g;->WA()V

    return-void
.end method
