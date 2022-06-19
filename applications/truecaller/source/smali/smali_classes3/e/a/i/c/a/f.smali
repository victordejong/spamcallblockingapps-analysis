.class public final Le/a/i/c/a/f;
.super Le/a/i/c/a/d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u00012\u00020\u0002J#\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cR.\u0010\u0016\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0019\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Le/a/i/c/a/f;",
        "Le/a/i/c/a/d;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View;",
        "v",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouch",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Z",
        "Ls1/s;",
        "b",
        "()V",
        "c",
        "Le/a/i/c/a/e;",
        "value",
        "e",
        "Le/a/i/c/a/e;",
        "getBannerAd",
        "()Le/a/i/c/a/e;",
        "setBannerAd",
        "(Le/a/i/c/a/e;)V",
        "bannerAd",
        "d",
        "Z",
        "recordImpression",
        "recordClickPixels",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public c:Z

.field public d:Z

.field public e:Le/a/i/c/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/a/i/c/a/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, p0, Le/a/i/c/a/f;->d:Z

    if-nez v1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/i/c/a/b;->recordImpression()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Le/a/i/c/a/f;->d:Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/i/c/a/b;->c()V

    :cond_0
    return-void
.end method

.method public final getBannerAd()Le/a/i/c/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    .line 2
    iget-object p1, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/i/c/a/b;->f()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Le/a/i/c/a/e;->g()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Le/a/i/c/a/e;->j()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p2, v1, p1}, Le/a/i/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    .line 9
    iget-boolean p2, p0, Le/a/i/c/a/f;->c:Z

    const/4 v0, 0x1

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Le/a/i/c/a/b;->e()V

    .line 11
    :cond_1
    iput-boolean v0, p0, Le/a/i/c/a/f;->c:Z

    :cond_2
    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final setBannerAd(Le/a/i/c/a/e;)V
    .locals 11

    .line 1
    iput-object p1, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    const-string v0, "context"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/i/c/a/e;->k()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 3
    :goto_0
    iget-object v2, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/i/c/a/e;->h()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v0

    move v7, v0

    goto :goto_1

    :cond_1
    move v7, v1

    .line 4
    :goto_1
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const-string v3, "settings"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Le/a/i/c/a/b;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v3, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v3, v9

    :goto_4
    if-eqz v3, :cond_5

    .line 9
    new-instance v10, Le/a/i/c/a/f$a;

    move-object v3, v10

    move-object v4, v0

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Le/a/i/c/a/f$a;-><init>(Landroid/webkit/WebView;Le/a/i/c/a/f;IILe/a/i/c/a/e;)V

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_5

    .line 10
    :cond_5
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    :goto_5
    iget-object p1, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Le/a/i/c/a/e;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    sget-object v2, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string p1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    invoke-static {v2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v1, "text/html"

    const-string v2, "base64"

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Le/a/i/c/a/f;->e:Le/a/i/c/a/e;

    if-eqz p1, :cond_7

    .line 16
    iget-boolean v0, p0, Le/a/i/c/a/f;->d:Z

    if-nez v0, :cond_7

    .line 17
    invoke-interface {p1}, Le/a/i/c/a/b;->recordImpression()V

    .line 18
    iput-boolean v9, p0, Le/a/i/c/a/f;->d:Z

    :cond_7
    return-void
.end method
