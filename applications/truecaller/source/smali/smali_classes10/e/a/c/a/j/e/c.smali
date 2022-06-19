.class public final Le/a/c/a/j/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/g;


# instance fields
.field public final synthetic a:Le/a/c/a/j/e/a;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/j/e/c;->a:Le/a/c/a/j/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Iq()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/j/e/c;->a:Le/a/c/a/j/e/a;

    invoke-static {v0}, Le/a/c/p/a;->p0(Le/m/a/g/e/e;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-nez v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Le/a/c/a/j/e/c;->a:Le/a/c/a/j/e/a;

    .line 6
    sget-object v1, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 7
    invoke-virtual {v0}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    const-string v1, "click"

    const-string v2, "keyboard_view"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public Ys()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/j/e/c;->a:Le/a/c/a/j/e/a;

    .line 2
    sget-object v1, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 3
    invoke-virtual {v0}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v0

    const-string v1, "binding"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Le/a/c/a/g/h;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    new-instance v1, Le/a/c/a/j/e/c$a;

    invoke-direct {v1, p0}, Le/a/c/a/j/e/c$a;-><init>(Le/a/c/a/j/e/c;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
