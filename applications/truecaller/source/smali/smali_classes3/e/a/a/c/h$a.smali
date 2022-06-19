.class public final Le/a/a/c/h$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/h$a;->a:I

    iput-object p2, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget p1, p0, Le/a/a/c/h$a;->a:I

    if-eqz p1, :cond_9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 1
    iget-object p1, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/h;

    .line 2
    sget-object v2, Le/a/a/c/h;->d:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/a/c/h;->OA()Le/a/m3/u0;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/m3/u0;->b:Landroid/widget/CheckBox;

    const-string v2, "binding.checkbox"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    const-string v2, "binding.radioGroup"

    const-string v3, "settings"

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/h;

    .line 6
    iget-object v4, p1, Le/a/a/c/h;->c:Le/a/a/i0;

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Le/a/a/c/h;->OA()Le/a/m3/u0;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/u0;->d:Landroid/widget/RadioGroup;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const v5, 0x7f0a0dd5

    if-ne p1, v5, :cond_0

    const-string p1, "wifi"

    goto :goto_0

    :cond_0
    const-string p1, "wifiOrMobile"

    :goto_0
    invoke-interface {v4, p1}, Le/a/a/i0;->i1(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    :goto_1
    iget-object p1, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/h;

    .line 8
    iget-object p1, p1, Le/a/a/c/h;->c:Le/a/a/i0;

    if-eqz p1, :cond_7

    .line 9
    invoke-interface {p1}, Le/a/a/i0;->h()V

    .line 10
    iget-object p1, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/h;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    .line 11
    iget-object p1, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/h;

    .line 12
    iget-object v3, p1, Le/a/a/c/h;->b:Le/a/a/c/s5;

    if-eqz v3, :cond_6

    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v4, "languageCode"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v4, "arguments?.getString(PARAM_LANGUAGE_CODE)!!"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v4, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast v4, Le/a/a/c/h;

    .line 15
    invoke-virtual {v4}, Le/a/a/c/h;->OA()Le/a/m3/u0;

    move-result-object v4

    .line 16
    iget-object v4, v4, Le/a/m3/u0;->d:Landroid/widget/RadioGroup;

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v4, 0x7f0a0dd6

    if-ne v2, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    .line 17
    :goto_3
    iget-object v2, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast v2, Le/a/a/c/h;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v1, "message"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    .line 18
    :cond_5
    invoke-interface {v3, p1, v0, v1}, Le/a/a/c/s5;->Wn(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/Message;)V

    return-void

    :cond_6
    const-string p1, "callback"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_7
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_8
    throw v1

    .line 22
    :cond_9
    iget-object p1, p0, Le/a/a/c/h$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/h;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void
.end method
