.class public Lcom/hiya/stingray/ui/call_screener/c;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/common/m;
.implements Lcom/hiya/stingray/ui/common/l;


# instance fields
.field private l:Ljava/lang/String;

.field private m:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

.field n:Lcom/hiya/stingray/manager/e1;

.field o:Lcom/hiya/stingray/ui/call_screener/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method public static f1(Ljava/lang/String;)Lcom/hiya/stingray/ui/call_screener/c;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/call_screener/c;

    invoke-direct {v0}, Lcom/hiya/stingray/ui/call_screener/c;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "call_screener_phone"

    .line 4
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private g1()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/call_screener/c;->u0()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public N0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/call_screener/c;->g1()V

    return-void
.end method

.method public b0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/call_screener/c;->g1()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onAttach(Landroid/content/Context;)V

    .line 2
    :try_start_0
    check-cast p1, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;

    invoke-virtual {p1, p0}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogActivity;->S(Lcom/hiya/stingray/ui/common/m;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CallScreenerDialogActivity is throwing ClassCastException"

    .line 3
    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-direct {p0}, Lcom/hiya/stingray/ui/call_screener/c;->g1()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/i;->a1()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->g0(Lcom/hiya/stingray/ui/call_screener/c;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "call_screener_phone"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/call_screener/c;->l:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t create call screener dialog activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Intent should have phone number"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/call_screener/c;->g1()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0121

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/hiya/stingray/ui/call_screener/c;->m:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

    return-object p1
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/i;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/c;->o:Lcom/hiya/stingray/ui/call_screener/a;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/ui/call_screener/a;->h(Lcom/hiya/stingray/ui/common/l;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/c;->o:Lcom/hiya/stingray/ui/call_screener/a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/call_screener/c;->m:Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;

    iget-object v2, p0, Lcom/hiya/stingray/ui/call_screener/c;->l:Ljava/lang/String;

    sget-object v3, Lcom/hiya/stingray/ui/call_screener/e;->SCREENED_CALL:Lcom/hiya/stingray/ui/call_screener/e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/ui/call_screener/a;->i(Lcom/hiya/stingray/ui/call_screener/CallScreenerDialogView;Ljava/lang/String;Lcom/hiya/stingray/ui/call_screener/e;)V

    return-void
.end method

.method public u0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/call_screener/c;->n:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "screened_call"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "dismiss"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "post_call_prompt"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method
