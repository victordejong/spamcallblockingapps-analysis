.class public final Le/a/b/a/a/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/a/d;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/i;->a:Le/a/b/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/b/l/l;

    .line 2
    iget-object p1, p1, Le/a/b/l/l;->b:Ljava/lang/Object;

    .line 3
    check-cast p1, Le/a/b/l/q;

    .line 4
    iget-object v0, p0, Le/a/b/a/a/a/i;->a:Le/a/b/a/a/a/d;

    .line 5
    sget-object v1, Le/a/b/a/a/a/d;->m:[Ls1/a/l;

    .line 6
    invoke-virtual {v0}, Le/a/b/a/a/a/d;->OA()Le/a/b/m/n0;

    move-result-object v0

    .line 7
    instance-of v1, p1, Le/a/b/l/q$c;

    const-string v2, "pbLoading"

    if-eqz v1, :cond_0

    iget-object p1, v0, Le/a/b/m/n0;->f:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 8
    :cond_0
    instance-of v1, p1, Le/a/b/l/q$b;

    if-eqz v1, :cond_1

    iget-object p1, v0, Le/a/b/m/n0;->f:Landroid/widget/ProgressBar;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto :goto_1

    .line 9
    :cond_1
    instance-of v1, p1, Le/a/b/l/q$a;

    if-eqz v1, :cond_4

    .line 10
    iget-object v0, v0, Le/a/b/m/n0;->f:Landroid/widget/ProgressBar;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Le/a/b/a/a/a/i;->a:Le/a/b/a/a/a/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object v0

    const-string v1, "Error: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget-object v2, p1, Le/a/b/l/q;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    check-cast p1, Le/a/b/l/q$a;

    .line 14
    iget-object p1, p1, Le/a/b/l/q$a;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v2, p0, Le/a/b/a/a/a/i;->a:Le/a/b/a/a/a/d;

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-void
.end method
