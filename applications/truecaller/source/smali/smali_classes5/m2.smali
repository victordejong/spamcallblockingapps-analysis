.class public final Lm2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Z

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;ZZ)V
    .locals 0

    iput p1, p0, Lm2;->b:I

    iput-object p2, p0, Lm2;->c:Ljava/lang/Object;

    iput-object p3, p0, Lm2;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lm2;->e:Z

    iput-boolean p5, p0, Lm2;->f:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lm2;->b:I

    const-string v2, "binding.categoryTags"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    .line 1
    iget-object v1, p0, Lm2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/j/e/a;

    .line 2
    sget-object v3, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v1

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i(Z)V

    .line 5
    iget-object v1, p0, Lm2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/j/e/a;

    .line 6
    invoke-virtual {v1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v1

    .line 7
    iget-object v1, v1, Le/a/c/a/g/h;->f:Le/a/c/a/g/c1;

    iget-object v1, v1, Le/a/c/a/g/c1;->a:Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 8
    iget-object v1, p0, Lm2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/j/e/a;

    .line 9
    invoke-virtual {v1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v3

    .line 10
    iget-object v3, v3, Le/a/c/a/g/h;->c:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Le/a/c/a/j/e/a;->QA(Le/a/c/a/j/e/a;Landroid/view/View;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 11
    throw v0

    .line 12
    :cond_1
    iget-object v1, p0, Lm2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/j/e/a;

    .line 13
    sget-object v4, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 14
    invoke-virtual {v1}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v3}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->i(Z)V

    .line 16
    iget-object v1, p0, Lm2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/j/e/a;

    .line 17
    invoke-virtual {v1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v1

    .line 18
    iget-object v1, v1, Le/a/c/a/g/h;->f:Le/a/c/a/g/c1;

    iget-object v1, v1, Le/a/c/a/g/c1;->a:Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 19
    iget-object v1, p0, Lm2;->c:Ljava/lang/Object;

    check-cast v1, Le/a/c/a/j/e/a;

    .line 20
    invoke-virtual {v1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v3

    .line 21
    iget-object v3, v3, Le/a/c/a/g/h;->c:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Le/a/c/a/j/e/a;->QA(Le/a/c/a/j/e/a;Landroid/view/View;)V

    return-object v0
.end method
