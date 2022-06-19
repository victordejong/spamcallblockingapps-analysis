.class public final Le/a/i/c/a/w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appnext/suggestedappswider/AppnextSuggestedAppsWiderViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/w;->setSuggestedAppsAd(Le/a/i/d0/h0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/g;

.field public final synthetic b:Le/a/i/c/a/w;


# direct methods
.method public constructor <init>(Ls1/g;Ls1/a/l;Le/a/i/c/a/w;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/w$a;->a:Ls1/g;

    iput-object p3, p0, Le/a/i/c/a/w$a;->b:Le/a/i/c/a/w;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/i/c/a/w$a;->b:Le/a/i/c/a/w;

    invoke-virtual {p1}, Le/a/i/c/a/w;->getSuggestedAppsAd()Le/a/i/d0/h0/f;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/i/d0/h0/f;->e()V

    :cond_0
    return-void
.end method

.method public onAdImpressionReceived(Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewError(Lcom/appnext/core/AppnextError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onViewLoadedSuccessfully()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/c/a/w$a;->b:Le/a/i/c/a/w;

    invoke-virtual {v0}, Le/a/i/c/a/w;->getSuggestedAppsAd()Le/a/i/d0/h0/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/i/d0/h0/f;->recordImpression()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/i/c/a/w$a;->b:Le/a/i/c/a/w;

    iget-object v1, p0, Le/a/i/c/a/w$a;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method
