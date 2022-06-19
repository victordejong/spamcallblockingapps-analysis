.class public final Le/a/c/a/j/e/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/e/e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ls1/k<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.filters.view.FilterBottomSheetDialog$enableFilterChanges$1$1"
    f = "FilterBottomSheetDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/a/j/e/e;


# direct methods
.method public constructor <init>(Le/a/c/a/j/e/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/e/e$a;->f:Le/a/c/a/j/e/e;

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

    new-instance v0, Le/a/c/a/j/e/e$a;

    iget-object v1, p0, Le/a/c/a/j/e/e$a;->f:Le/a/c/a/j/e/e;

    invoke-direct {v0, v1, p2}, Le/a/c/a/j/e/e$a;-><init>(Le/a/c/a/j/e/e;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/a/j/e/e$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/c/a/j/e/e$a;->f:Le/a/c/a/j/e/e;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ls1/k;

    .line 4
    iget-object p2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 6
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 8
    iget-object v2, v1, Le/a/c/a/j/e/e;->f:Le/a/c/a/j/e/a;

    .line 9
    sget-object v3, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 10
    invoke-virtual {v2}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v2

    .line 11
    iget-object v2, v2, Le/a/c/a/g/h;->d:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "binding.clearButton"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 12
    iget-object p2, v1, Le/a/c/a/j/e/e;->f:Le/a/c/a/j/e/a;

    .line 13
    invoke-virtual {p2}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object p2

    .line 14
    iget-object p2, p2, Le/a/c/a/g/h;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.applyButton"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/j/e/e$a;->e:Ljava/lang/Object;

    check-cast p1, Ls1/k;

    .line 2
    iget-object v0, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 4
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 6
    iget-object v1, p0, Le/a/c/a/j/e/e$a;->f:Le/a/c/a/j/e/e;

    iget-object v1, v1, Le/a/c/a/j/e/e;->f:Le/a/c/a/j/e/a;

    .line 7
    sget-object v2, Le/a/c/a/j/e/a;->j:[Ls1/a/l;

    .line 8
    invoke-virtual {v1}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v1

    .line 9
    iget-object v1, v1, Le/a/c/a/g/h;->d:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "binding.clearButton"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, Le/a/c/a/j/e/e$a;->f:Le/a/c/a/j/e/e;

    iget-object v0, v0, Le/a/c/a/j/e/e;->f:Le/a/c/a/j/e/a;

    .line 11
    invoke-virtual {v0}, Le/a/c/a/j/e/a;->SA()Le/a/c/a/g/h;

    move-result-object v0

    .line 12
    iget-object v0, v0, Le/a/c/a/g/h;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.applyButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
