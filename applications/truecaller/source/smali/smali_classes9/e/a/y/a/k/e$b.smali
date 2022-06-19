.class public final Le/a/y/a/k/e$b;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/y/a/k/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/a/y/a/k/e;


# direct methods
.method public constructor <init>(Le/a/y/a/k/e;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/y/a/k/e$b;->a:Le/a/y/a/k/e;

    const-wide/16 v0, 0x64

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 2
    iget-object p1, p1, Le/a/y/a/k/e;->e:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    long-to-int p2, p2

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    const-string p1, "progressBar"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public onFinish()V
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/y/a/k/e$b;->a:Le/a/y/a/k/e;

    .line 2
    sget-object v1, Le/a/y/a/k/e;->n:Le/a/y/a/k/e$a;

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "context ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v8, v0, Le/a/y/a/k/e;->j:Landroid/widget/TextView;

    const/4 v9, 0x0

    if-eqz v8, :cond_f

    iget-object v2, v0, Le/a/y/a/k/e;->b:Le/a/y/b/g0;

    const-string v10, "resourceProvider"

    if-eqz v2, :cond_e

    .line 5
    sget v3, Lcom/truecaller/flashsdk/R$string;->try_again:I

    const/4 v11, 0x0

    new-array v4, v11, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object v4, v0, Le/a/y/a/k/e;->k:Landroid/widget/TextView;

    const-string v12, "buttonCall"

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    .line 7
    iget-object v5, v0, Le/a/y/a/k/e;->c:Le/a/y/b/a;

    const-string v13, "colorProvider"

    if-eqz v5, :cond_c

    sget v6, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {v5, v6}, Le/a/y/b/a;->a(I)I

    move-result v5

    .line 8
    sget v6, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_24:I

    move-object v7, v1

    .line 9
    invoke-interface/range {v2 .. v7}, Le/a/y/b/g0;->e(Ljava/lang/String;IIILandroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v8, v0, Le/a/y/a/k/e;->k:Landroid/widget/TextView;

    if-eqz v8, :cond_b

    iget-object v2, v0, Le/a/y/a/k/e;->b:Le/a/y/b/g0;

    if-eqz v2, :cond_a

    .line 11
    sget v3, Lcom/truecaller/flashsdk/R$string;->call:I

    new-array v4, v11, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, v0, Le/a/y/a/k/e;->k:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    .line 13
    iget-object v5, v0, Le/a/y/a/k/e;->c:Le/a/y/b/a;

    if-eqz v5, :cond_8

    sget v6, Lcom/truecaller/flashsdk/R$attr;->theme_flash_round_button_enabled_icon_color:I

    invoke-interface {v5, v6}, Le/a/y/b/a;->b(I)I

    move-result v5

    .line 14
    sget v6, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_call_24dp:I

    move-object v7, v1

    .line 15
    invoke-interface/range {v2 .. v7}, Le/a/y/b/g0;->e(Ljava/lang/String;IIILandroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, v0, Le/a/y/a/k/e;->d:Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_7

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 17
    iget-object v2, v0, Le/a/y/a/k/e;->i:Landroid/view/View;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v2, v0, Le/a/y/a/k/e;->e:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 19
    iget-object v2, v0, Le/a/y/a/k/e;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    sget v3, Lcom/truecaller/flashsdk/R$string;->flash_missed:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v2, v0, Le/a/y/a/k/e;->g:Landroid/widget/ImageView;

    const-string v3, "centralIcon"

    if-eqz v2, :cond_3

    sget v4, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_flash_missed_outgoing_white_24dp:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_10

    const-string v4, "arguments ?: return"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "isFirstFlashKey"

    .line 22
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 23
    iget-object v4, v0, Le/a/y/a/k/e;->m:Le/a/y/a/l/c;

    if-eqz v4, :cond_0

    .line 24
    iget-object v4, v4, Le/a/y/a/l/c;->a:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_0

    .line 25
    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    .line 26
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/flashsdk/R$dimen;->control_quadspace:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const-string v5, "flashSentToKey"

    .line 27
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    const-string v6, " "

    invoke-static {v2, v6, v9, v5}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v9

    .line 28
    :goto_0
    new-instance v6, Le/a/y/a/l/c;

    .line 29
    sget v7, Lcom/truecaller/flashsdk/R$string;->post_flash_popup_2:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v11

    const/4 v8, 0x1

    aput-object v2, v5, v8

    invoke-virtual {v0, v7, v5}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "getString(R.string.post_flash_popup_2, name, name)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v5, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_tooltip_center_bottom:I

    .line 31
    invoke-direct {v6, v1, v2, v5}, Le/a/y/a/l/c;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v6, v0, Le/a/y/a/k/e;->m:Le/a/y/a/l/c;

    .line 32
    iget-object v0, v0, Le/a/y/a/k/e;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v6, v0, v4}, Le/a/y/a/l/c;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 33
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_4
    const-string v0, "statusText"

    .line 34
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_5
    const-string v0, "progressBar"

    .line 35
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_6
    const-string v0, "buttonContainer"

    .line 36
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_7
    const-string v0, "tipsPager"

    .line 37
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 38
    :cond_8
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 39
    :cond_9
    invoke-static {v12}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 40
    :cond_a
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_b
    invoke-static {v12}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 41
    :cond_c
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 42
    :cond_d
    invoke-static {v12}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    .line 43
    :cond_e
    invoke-static {v10}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_f
    const-string v0, "buttonSendFlash"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v9

    :cond_10
    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/k/e$b;->a:Le/a/y/a/k/e;

    .line 2
    iget-object v0, v0, Le/a/y/a/k/e;->e:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    long-to-int p1, p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void

    :cond_0
    const-string p1, "progressBar"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
