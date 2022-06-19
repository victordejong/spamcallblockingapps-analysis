.class final Lcom/hiya/client/callerid/ui/incallui/e$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Lcom/hiya/client/callerid/ui/d$f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$j;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/d$f;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e$j;->b(Lcom/hiya/client/callerid/ui/d$f;)V

    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/d$f;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$j;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->j:I

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    const-string v2, "bottomActions"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/d$f;->a()Lcom/hiya/client/callerid/ui/d$e;

    move-result-object v3

    sget-object v4, Lcom/hiya/client/callerid/ui/d$e;->DISABLED:Lcom/hiya/client/callerid/ui/d$e;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/d$f;->a()Lcom/hiya/client/callerid/ui/d$e;

    move-result-object v3

    sget-object v4, Lcom/hiya/client/callerid/ui/d$e;->ACTION_SHEET:Lcom/hiya/client/callerid/ui/d$e;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 3
    :goto_1
    invoke-static {v0, v3}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$j;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v3, Lcom/hiya/client/callerid/ui/p;->k:I

    invoke-virtual {v0, v3}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "bottomActionsWithReportButton"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/d$f;->a()Lcom/hiya/client/callerid/ui/d$e;

    move-result-object v3

    sget-object v4, Lcom/hiya/client/callerid/ui/d$e;->BUTTON:Lcom/hiya/client/callerid/ui/d$e;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 6
    :goto_2
    invoke-static {v0, v3}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 7
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$j;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v3, Lcom/hiya/client/callerid/ui/p;->i0:I

    invoke-virtual {v0, v3}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v3, "reportActionSheet"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/d$f;->a()Lcom/hiya/client/callerid/ui/d$e;

    move-result-object v3

    sget-object v4, Lcom/hiya/client/callerid/ui/d$e;->ACTION_SHEET:Lcom/hiya/client/callerid/ui/d$e;

    if-ne v3, v4, :cond_3

    const/4 v5, 0x1

    .line 9
    :cond_3
    invoke-static {v0, v5}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 10
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$j;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/hiya/client/callerid/ui/p;->N:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "bottomActions.endCall"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/d$f;->a()Lcom/hiya/client/callerid/ui/d$e;

    move-result-object p1

    if-ne p1, v4, :cond_4

    const-string p1, " "

    goto :goto_3

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$j;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    .line 12
    sget v1, Lcom/hiya/client/callerid/ui/s;->u:I

    .line 13
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
