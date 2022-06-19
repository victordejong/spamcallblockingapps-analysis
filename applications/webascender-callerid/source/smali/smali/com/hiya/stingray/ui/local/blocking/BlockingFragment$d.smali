.class final Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->o1()Lcom/hiya/stingray/ui/login/o;

    move-result-object p1

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    .line 2
    sget-object v4, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    const/16 v5, 0x1778

    .line 3
    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/hiya/stingray/ui/login/o;->g(Landroid/app/Activity;Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m1()Lcom/hiya/stingray/ui/customblock/h;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/hiya/stingray/ui/customblock/h;->i(Z)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->l1()Lcom/hiya/stingray/ui/customblock/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/ui/customblock/f;->l(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->m1()Lcom/hiya/stingray/ui/customblock/h;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/hiya/stingray/ui/customblock/h;->i(Z)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->f:Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment;->l1()Lcom/hiya/stingray/ui/customblock/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/ui/customblock/f;->l(Z)V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/blocking/BlockingFragment$d;->a(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
