.class public final Le/a/c/a/j/e/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Le/a/c/a/j/e/a;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/j;->a:Le/a/c/a/j/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Le/a/c/a/j/e/j;->a:Le/a/c/a/j/e/a;

    .line 2
    sget-object p2, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i(Z)V

    :cond_0
    return-void
.end method
