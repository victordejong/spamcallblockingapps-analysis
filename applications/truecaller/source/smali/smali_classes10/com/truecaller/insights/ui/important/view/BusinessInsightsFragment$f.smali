.class public final Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/widget/NestedScrollView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$f;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/core/widget/NestedScrollView;IIII)V
    .locals 0

    if-le p3, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object p2, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$f;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p2

    instance-of p3, p2, Le/a/b0/a/w/c$a;

    if-nez p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Le/a/b0/a/w/c$a;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Le/a/b0/a/w/c$a;->v7(Z)V

    :cond_2
    return-void
.end method
