.class final Lcom/hiya/stingray/ui/login/verification/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/hiya/stingray/ui/login/verification/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/login/verification/j;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/j;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/login/verification/a$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/login/verification/j$b;->b(Lcom/hiya/stingray/ui/login/verification/a$a;)V

    return-void
.end method

.method public final b(Lcom/hiya/stingray/ui/login/verification/a$a;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {v0, p1}, Lcom/hiya/stingray/ui/login/verification/j;->m1(Lcom/hiya/stingray/ui/login/verification/j;Lcom/hiya/stingray/ui/login/verification/a$a;)V

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/login/verification/k;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "editText"

    const v1, 0x7f090126

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    new-instance p1, Landroidx/appcompat/app/b$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p1, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {p1}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 4
    :pswitch_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    sget-object v3, Lcom/hiya/stingray/ui/login/verification/g;->q:Lcom/hiya/stingray/ui/login/verification/g$a;

    invoke-virtual {v3}, Lcom/hiya/stingray/ui/login/verification/g$a;->a()Lcom/hiya/stingray/ui/login/verification/g;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p1, v2}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    sget v2, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/hiya/stingray/util/e0;->i(Landroid/app/Activity;Landroid/view/View;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 10
    :pswitch_2
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/n;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 12
    sget-object v3, Lcom/hiya/stingray/ui/login/verification/c;->p:Lcom/hiya/stingray/ui/login/verification/c$a;

    invoke-virtual {v3}, Lcom/hiya/stingray/ui/login/verification/c$a;->a()Lcom/hiya/stingray/ui/login/verification/c;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1, v2}, Landroidx/fragment/app/y;->g(Ljava/lang/String;)Landroidx/fragment/app/y;

    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/y;->i()I

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    sget v2, Lcom/hiya/stingray/o;->O0:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/login/verification/j;->f1(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/hiya/stingray/util/e0;->i(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 16
    :pswitch_3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, -0x1

    .line 17
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string v0, "activity!!.apply {\n     \u2026h()\n                    }"

    .line 19
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 20
    :pswitch_4
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->o1(Lcom/hiya/stingray/ui/login/verification/j;)V

    goto :goto_1

    .line 21
    :pswitch_5
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->l1(Lcom/hiya/stingray/ui/login/verification/j;)V

    goto :goto_1

    .line 22
    :pswitch_6
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->n1(Lcom/hiya/stingray/ui/login/verification/j;)V

    goto :goto_1

    .line 23
    :pswitch_7
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->k1(Lcom/hiya/stingray/ui/login/verification/j;)V

    goto :goto_1

    .line 24
    :goto_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/j$b;->a:Lcom/hiya/stingray/ui/login/verification/j;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/j;->o1(Lcom/hiya/stingray/ui/login/verification/j;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
