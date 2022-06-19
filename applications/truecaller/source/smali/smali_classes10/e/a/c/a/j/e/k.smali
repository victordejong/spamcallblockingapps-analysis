.class public final Le/a/c/a/j/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/g/h;

.field public final synthetic b:Le/a/c/a/j/e/a;


# direct methods
.method public constructor <init>(Le/a/c/a/g/h;Le/a/c/a/j/e/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/k;->a:Le/a/c/a/g/h;

    iput-object p2, p0, Le/a/c/a/j/e/k;->b:Le/a/c/a/j/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/c/a/j/e/k;->a:Le/a/c/a/g/h;

    iget-object p1, p1, Le/a/c/a/g/h;->c:Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {p1}, Lcom/google/android/material/chip/ChipGroup;->d()V

    .line 2
    iget-object p1, p0, Le/a/c/a/j/e/k;->b:Le/a/c/a/j/e/a;

    invoke-virtual {p1}, Le/a/c/a/j/e/a;->UA()Le/a/c/a/j/c/f;

    move-result-object p1

    .line 3
    iget-object v0, p1, Le/a/c/a/j/c/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    invoke-virtual {p1}, Ln3/b0/a/p;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(II)V

    .line 5
    iget-object p1, p0, Le/a/c/a/j/e/k;->b:Le/a/c/a/j/e/a;

    .line 6
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p1

    .line 7
    iget-object v0, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-virtual {v0}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->a()V

    const-string v0, "clear_filter"

    .line 8
    invoke-virtual {p1, v0}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->d(Ljava/lang/String;)V

    return-void
.end method
