.class public final synthetic Le/a/c/a/n/e/b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;)V
    .locals 7

    const-class v3, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;

    const/4 v1, 0x1

    const-string v4, "setupEmptyState"

    const-string v5, "setupEmptyState(Z)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;

    .line 3
    sget v1, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->e:I

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/e;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "binding.emptyState"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    const-string v1, "binding.remindersContainer"

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/e;->e:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/reminders/view/RemindersActivity;->pa()Le/a/c/a/g/e;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/e;->e:Landroid/widget/FrameLayout;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 7
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
