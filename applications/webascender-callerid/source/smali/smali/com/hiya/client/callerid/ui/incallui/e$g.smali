.class final Lcom/hiya/client/callerid/ui/incallui/e$g;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e$g;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 11

    const-string v0, "showDialPad"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v0, "dialPadContainer"

    const-string v1, "dialPadMute"

    const-string v2, "dialPadSpeaker"

    const-string v3, "bottomSpace"

    const-string v4, "topSpace"

    const-string v5, "callActions"

    const-string v6, "callerId"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    .line 4
    sget v10, Lcom/hiya/client/callerid/ui/m;->g:I

    .line 5
    invoke-static {v9, v10}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v9

    .line 6
    invoke-static {p1, v9}, Lcom/hiya/client/callerid/ui/incallui/e;->c1(Lcom/hiya/client/callerid/ui/incallui/e;I)V

    .line 7
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v9, Lcom/hiya/client/callerid/ui/p;->A:I

    invoke-virtual {p1, v9}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 8
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v6, Lcom/hiya/client/callerid/ui/p;->y:I

    invoke-virtual {p1, v6}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 9
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v5, Lcom/hiya/client/callerid/ui/p;->u0:I

    invoke-virtual {p1, v5}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 10
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v4, Lcom/hiya/client/callerid/ui/p;->l:I

    invoke-virtual {p1, v4}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 11
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v3, Lcom/hiya/client/callerid/ui/p;->I:I

    invoke-virtual {p1, v3}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 12
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v2, Lcom/hiya/client/callerid/ui/p;->H:I

    invoke-virtual {p1, v2}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 13
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->G:I

    invoke-virtual {p1, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    .line 15
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    .line 16
    sget v10, Lcom/hiya/client/callerid/ui/m;->d:I

    .line 17
    invoke-static {v9, v10}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result v9

    .line 18
    invoke-static {p1, v9}, Lcom/hiya/client/callerid/ui/incallui/e;->c1(Lcom/hiya/client/callerid/ui/incallui/e;I)V

    .line 19
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v9, Lcom/hiya/client/callerid/ui/p;->A:I

    invoke-virtual {p1, v9}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 20
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v6, Lcom/hiya/client/callerid/ui/p;->y:I

    invoke-virtual {p1, v6}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-static {p1, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 21
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v5, Lcom/hiya/client/callerid/ui/p;->u0:I

    invoke-virtual {p1, v5}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    invoke-static {p1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 22
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v4, Lcom/hiya/client/callerid/ui/p;->l:I

    invoke-virtual {p1, v4}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Space;

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 23
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v3, Lcom/hiya/client/callerid/ui/p;->I:I

    invoke-virtual {p1, v3}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 24
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v2, Lcom/hiya/client/callerid/ui/p;->H:I

    invoke-virtual {p1, v2}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    .line 25
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$g;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->G:I

    invoke-virtual {p1, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v7}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method
