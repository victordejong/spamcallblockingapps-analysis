.class public final Le/a/c/a/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/a/c;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/c/a/c/a/c;->b:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/c/a/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Le/a/c/a/c/a/c;->b:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 3
    sget-object v1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->m:[Ls1/a/l;

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->RA()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Le/a/c/a/c/a/c;->b:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 6
    iget-object v1, v1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->k:Lcom/google/android/material/appbar/AppBarLayout$c;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    :cond_0
    return-void
.end method
