.class public Le/n/d/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/UrlHandler$ResultActions;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/n/d/o;

.field public final synthetic c:Lcom/mopub/nativeads/NativeClickHandler;


# direct methods
.method public constructor <init>(Lcom/mopub/nativeads/NativeClickHandler;Landroid/view/View;Le/n/d/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/d/j;->c:Lcom/mopub/nativeads/NativeClickHandler;

    iput-object p2, p0, Le/n/d/j;->a:Landroid/view/View;

    iput-object p3, p0, Le/n/d/j;->b:Le/n/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public urlHandlingFailed(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/n/d/j;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/n/d/j;->b:Le/n/d/o;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/n/d/j;->c:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p1, Lcom/mopub/nativeads/NativeClickHandler;->c:Z

    return-void
.end method

.method public urlHandlingSucceeded(Ljava/lang/String;Lcom/mopub/common/UrlAction;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/n/d/j;->a:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/n/d/j;->b:Le/n/d/o;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/n/d/j;->c:Lcom/mopub/nativeads/NativeClickHandler;

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p1, Lcom/mopub/nativeads/NativeClickHandler;->c:Z

    return-void
.end method
