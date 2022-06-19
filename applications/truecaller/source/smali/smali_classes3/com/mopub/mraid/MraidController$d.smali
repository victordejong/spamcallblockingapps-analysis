.class public Lcom/mopub/mraid/MraidController$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mraid/MraidController;->q(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/mopub/mraid/MraidController;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/MraidController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    iput-object p2, p0, Lcom/mopub/mraid/MraidController$d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/mopub/mraid/MraidController$d;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 5
    iget-object v1, v1, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 6
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7
    iget-object v3, v1, Le/n/c/f;->b:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    iget-object v0, v1, Le/n/c/f;->b:Landroid/graphics/Rect;

    iget-object v2, v1, Le/n/c/f;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Le/n/c/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 9
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 10
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidController;->f()Landroid/view/ViewGroup;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 12
    iget-object v2, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 13
    iget-object v2, v2, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 14
    aget v3, v0, v4

    const/4 v5, 0x1

    aget v6, v0, v5

    .line 15
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 17
    iget-object v8, v2, Le/n/c/f;->d:Landroid/graphics/Rect;

    add-int/2addr v7, v3

    add-int/2addr v1, v6

    invoke-virtual {v8, v3, v6, v7, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 18
    iget-object v1, v2, Le/n/c/f;->d:Landroid/graphics/Rect;

    iget-object v3, v2, Le/n/c/f;->e:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Le/n/c/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 19
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 20
    iget-object v1, v1, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 22
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 23
    iget-object v2, v1, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 24
    aget v3, v0, v4

    aget v6, v0, v5

    .line 25
    iget-object v1, v1, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    .line 26
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v7, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 27
    iget-object v7, v7, Lcom/mopub/mobileads/MoPubWebViewController;->c:Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    .line 29
    iget-object v8, v2, Le/n/c/f;->h:Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v7, v6

    invoke-virtual {v8, v3, v6, v1, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    iget-object v1, v2, Le/n/c/f;->h:Landroid/graphics/Rect;

    iget-object v3, v2, Le/n/c/f;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Le/n/c/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 31
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$d;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 32
    iget-object v1, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 33
    iget-object v1, v1, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 34
    aget v2, v0, v4

    aget v0, v0, v5

    iget-object v3, p0, Lcom/mopub/mraid/MraidController$d;->a:Landroid/view/View;

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/mopub/mraid/MraidController$d;->a:Landroid/view/View;

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 37
    iget-object v5, v1, Le/n/c/f;->f:Landroid/graphics/Rect;

    add-int/2addr v3, v2

    add-int/2addr v4, v0

    invoke-virtual {v5, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 38
    iget-object v0, v1, Le/n/c/f;->f:Landroid/graphics/Rect;

    iget-object v2, v1, Le/n/c/f;->g:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Le/n/c/f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 39
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 40
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->q:Lcom/mopub/mraid/MraidBridge;

    .line 41
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 42
    invoke-virtual {v1, v0}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Le/n/c/f;)V

    .line 43
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 44
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 45
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidBridge;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->c:Lcom/mopub/mraid/MraidController;

    .line 47
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 48
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->m:Le/n/c/f;

    .line 49
    invoke-virtual {v1, v0}, Lcom/mopub/mraid/MraidBridge;->notifyScreenMetrics(Le/n/c/f;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$d;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 51
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
