.class final Lcom/hiya/stingray/ui/setting/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/hiya/stingray/ui/setting/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/setting/d;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/d$d;->a:Lcom/hiya/stingray/ui/setting/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/setting/f$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/setting/d$d;->b(Lcom/hiya/stingray/ui/setting/f$a;)V

    return-void
.end method

.method public final b(Lcom/hiya/stingray/ui/setting/f$a;)V
    .locals 6

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/setting/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d$d;->a:Lcom/hiya/stingray/ui/setting/d;

    invoke-static {p1}, Lcom/hiya/stingray/ui/setting/d;->g1(Lcom/hiya/stingray/ui/setting/d;)Lcom/hiya/stingray/ui/setting/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/f;->k()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/d$d;->a:Lcom/hiya/stingray/ui/setting/d;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p1, Landroidx/appcompat/app/b$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/d$d;->a:Lcom/hiya/stingray/ui/setting/d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
