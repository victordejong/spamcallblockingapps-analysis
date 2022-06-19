.class public Le/n/b/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/mopub/mobileads/BaseHtmlWebView;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/BaseHtmlWebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/h0;->a:Lcom/mopub/mobileads/BaseHtmlWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/n/b/h0;->a:Lcom/mopub/mobileads/BaseHtmlWebView;

    .line 2
    iget-object p1, p1, Lcom/mopub/mobileads/BaseHtmlWebView;->k:Lcom/mopub/mobileads/ViewGestureDetector;

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
