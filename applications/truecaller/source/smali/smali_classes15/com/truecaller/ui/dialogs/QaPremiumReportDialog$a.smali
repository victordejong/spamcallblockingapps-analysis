.class public final Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ui.dialogs.QaPremiumReportDialog$onViewCreated$1"
    f = "QaPremiumReportDialog.kt"
    l = {
        0x34,
        0x38
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;

    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;-><init>(Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;

    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;-><init>(Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->e:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->e:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    .line 5
    iget-object p1, p1, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$Type;

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v4, "reportView"

    const-string v5, "headerView"

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_3

    goto/16 :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    .line 8
    iget-object p1, p1, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 9
    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Products"

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    .line 11
    iget-object p1, p1, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->h:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 12
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    .line 13
    iget-object v3, v3, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->f:Le/a/l/a/g0;

    if-eqz v3, :cond_5

    .line 14
    iput-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->e:Ljava/lang/Object;

    iput v2, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->f:I

    check-cast v3, Le/a/l/a/h0;

    invoke-virtual {v3, p0}, Le/a/l/a/h0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const-string p1, "productsReporter"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    .line 17
    iget-object p1, p1, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 18
    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Premium Report"

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    .line 20
    iget-object p1, p1, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->h:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 21
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->g:Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;

    .line 22
    iget-object v2, v2, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog;->e:Le/a/l/a/z;

    if-eqz v2, :cond_8

    .line 23
    iput-object p1, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->e:Ljava/lang/Object;

    iput v3, p0, Lcom/truecaller/ui/dialogs/QaPremiumReportDialog$a;->f:I

    invoke-virtual {v2, p0}, Le/a/l/a/z;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_7

    return-object v0

    :cond_7
    move-object v0, p1

    move-object p1, v1

    :goto_1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_8
    const-string p1, "premiumReporter"

    .line 25
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string p1, "type"

    .line 26
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
