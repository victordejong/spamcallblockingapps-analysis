.class final Lcom/hiya/stingray/ui/setting/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/d;->i1()Lcom/hiya/stingray/manager/a4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    const v0, 0x7f11027a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    const v0, 0x7f110279

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "when (selectManager.isSe\u2026non_select)\n            }"

    .line 4
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Landroidx/appcompat/app/b$a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    const p1, 0x7f110267

    .line 7
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/b$a;->p(I)Landroidx/appcompat/app/b$a;

    const p1, 0x7f1102db

    .line 8
    new-instance v1, Lcom/hiya/stingray/ui/setting/d$a$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/d$a$a;-><init>(Lcom/hiya/stingray/ui/setting/d$a;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/b$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    const p1, 0x7f1100a3

    .line 9
    new-instance v1, Lcom/hiya/stingray/ui/setting/d$a$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/setting/d$a$b;-><init>(Lcom/hiya/stingray/ui/setting/d$a;)V

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/b$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 10
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    const-string v0, "AlertDialog.Builder(cont\u2026                .create()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 12
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d$a;->f:Lcom/hiya/stingray/ui/setting/d;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/d;->h1()Lcom/hiya/stingray/ui/setting/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/b;->b()V

    return-void

    .line 13
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
