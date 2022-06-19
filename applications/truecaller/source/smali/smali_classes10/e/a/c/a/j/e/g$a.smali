.class public final Le/a/c/a/j/e/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/e/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/Boolean;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$populateChipData$2$1"
    f = "FilterBottomSheetDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Z

.field public final synthetic f:Le/a/c/a/j/e/g;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/g$a;->f:Le/a/c/a/j/e/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/j/e/g$a;

    iget-object v1, p0, Le/a/c/a/j/e/g$a;->f:Le/a/c/a/j/e/g;

    invoke-direct {v0, v1, p2}, Le/a/c/a/j/e/g$a;-><init>(Le/a/c/a/j/e/g;Ls1/w/d;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Le/a/c/a/j/e/g$a;->e:Z

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/j/e/g$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/j/e/g$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/j/e/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-boolean p1, p0, Le/a/c/a/j/e/g$a;->e:Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/c/a/j/e/g$a;->f:Le/a/c/a/j/e/g;

    iget-object p1, p1, Le/a/c/a/j/e/g;->f:Le/a/c/a/j/e/a;

    .line 3
    sget-object v0, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/a/c/a/g/h;->f:Le/a/c/a/g/c1;

    iget-object p1, p1, Le/a/c/a/g/c1;->a:Lcom/truecaller/insights/ui/filters/view/FilterSearchEditText;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 6
    iget-object p1, p0, Le/a/c/a/j/e/g$a;->f:Le/a/c/a/j/e/g;

    iget-object p1, p1, Le/a/c/a/j/e/g;->f:Le/a/c/a/j/e/a;

    .line 7
    invoke-virtual {p1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v0

    .line 8
    iget-object v0, v0, Le/a/c/a/g/h;->c:Lcom/google/android/material/chip/ChipGroup;

    const-string v1, "binding.categoryTags"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Le/a/c/a/j/e/a;->QA(Le/a/c/a/j/e/a;Landroid/view/View;)V

    .line 9
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
