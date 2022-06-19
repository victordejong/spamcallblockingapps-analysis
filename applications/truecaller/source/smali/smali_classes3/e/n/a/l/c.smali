.class public Le/n/a/l/c;
.super Lcom/mopub/common/CloseableLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/n/a/l/c$c;,
        Le/n/a/l/c$b;
    }
.end annotation


# static fields
.field public static final synthetic t:I


# instance fields
.field public final p:Landroid/webkit/WebView;

.field public q:Le/n/a/l/c$c;

.field public r:Le/n/a/l/c$b;

.field public final s:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Le/n/a/l/c$a;

    invoke-direct {p1, p0}, Le/n/a/l/c$a;-><init>(Le/n/a/l/c;)V

    iput-object p1, p0, Le/n/a/l/c;->s:Landroid/webkit/WebViewClient;

    .line 3
    invoke-virtual {p0}, Le/n/a/l/c;->c()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Le/n/a/l/c;->p:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Le/n/a/l/c$a;

    invoke-direct {p1, p0}, Le/n/a/l/c$a;-><init>(Le/n/a/l/c;)V

    iput-object p1, p0, Le/n/a/l/c;->s:Landroid/webkit/WebViewClient;

    .line 6
    invoke-virtual {p0}, Le/n/a/l/c;->c()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Le/n/a/l/c;->p:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/common/CloseableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Le/n/a/l/c$a;

    invoke-direct {p1, p0}, Le/n/a/l/c$a;-><init>(Le/n/a/l/c;)V

    iput-object p1, p0, Le/n/a/l/c;->s:Landroid/webkit/WebViewClient;

    .line 9
    invoke-virtual {p0}, Le/n/a/l/c;->c()Landroid/webkit/WebView;

    move-result-object p1

    iput-object p1, p0, Le/n/a/l/c;->p:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public final c()Landroid/webkit/WebView;
    .locals 4

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 6
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 8
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 9
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 10
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 11
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 14
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 15
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 16
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setId(I)V

    .line 17
    invoke-virtual {p0, v1}, Lcom/mopub/common/CloseableLayout;->setCloseVisible(Z)V

    .line 18
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method
