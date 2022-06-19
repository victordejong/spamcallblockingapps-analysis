.class public final Le/a/c/a/j/e/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/insights/insightsui/CategoryModel;",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/j/e/a;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/ChipGroup;Le/a/c/a/j/e/a;Ljava/util/List;ZZ)V
    .locals 0

    iput-object p2, p0, Le/a/c/a/j/e/b;->b:Le/a/c/a/j/e/a;

    iput-object p3, p0, Le/a/c/a/j/e/b;->c:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/insights/insightsui/CategoryModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "update"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/j/e/b;->b:Le/a/c/a/j/e/a;

    .line 4
    sget-object v1, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 5
    invoke-virtual {v0}, Le/a/c/a/j/e/a;->TA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "model"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 7
    sget-object p2, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->ADD:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;->REMOVE:Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;

    .line 8
    :goto_0
    iget-object v0, v0, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->g:Lcom/truecaller/insights/ui/filters/states/SmsFilterState;

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/insights/ui/filters/states/SmsFilterState;->b(Lcom/truecaller/insights/insightsui/CategoryModel;Lcom/truecaller/insights/ui/filters/states/SmsFilterState$EditFilterMode;)V

    .line 9
    iget-object p1, p0, Le/a/c/a/j/e/b;->b:Le/a/c/a/j/e/a;

    .line 10
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object p1

    .line 11
    iget-object p1, p1, Le/a/c/a/g/h;->f:Le/a/c/a/g/c1;

    iget-object p1, p1, Le/a/c/a/g/c1;->a:Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 12
    iget-object p1, p0, Le/a/c/a/j/e/b;->b:Le/a/c/a/j/e/a;

    .line 13
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object p2

    .line 14
    iget-object p2, p2, Le/a/c/a/g/h;->c:Lcom/google/android/material/chip/ChipGroup;

    const-string v0, "binding.categoryTags"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Le/a/c/a/j/e/a;->QA(Le/a/c/a/j/e/a;Landroid/view/View;)V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
