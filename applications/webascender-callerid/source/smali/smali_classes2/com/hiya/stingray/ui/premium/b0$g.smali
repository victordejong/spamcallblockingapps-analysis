.class final Lcom/hiya/stingray/ui/premium/b0$g;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/b0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Lkotlin/w/b/a<",
        "+",
        "Lkotlin/r;",
        ">;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/premium/b0;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/b0$g;->f:Lcom/hiya/stingray/ui/premium/b0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/w/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroidx/appcompat/app/b$a;

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/b0$g;->f:Lcom/hiya/stingray/ui/premium/b0;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const-string v1, "Debug"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->q(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    const-string v1, "Subscribe immediately without Play Store?"

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b$a;->h(Ljava/lang/CharSequence;)Landroidx/appcompat/app/b$a;

    .line 4
    new-instance v1, Lcom/hiya/stingray/ui/premium/b0$g$a;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/ui/premium/b0$g$a;-><init>(Lkotlin/w/b/a;)V

    const-string p1, "Subscribe"

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/b$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 5
    sget-object p1, Lcom/hiya/stingray/ui/premium/b0$g$b;->f:Lcom/hiya/stingray/ui/premium/b0$g$b;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/app/b$a;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/b$a;

    .line 6
    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/w/b/a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/b0$g;->a(Lkotlin/w/b/a;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
