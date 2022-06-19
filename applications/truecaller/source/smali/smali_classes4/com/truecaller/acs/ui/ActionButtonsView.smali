.class public final Lcom/truecaller/acs/ui/ActionButtonsView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001J\u001b\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000c\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ+\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/truecaller/acs/ui/ActionButtonsView;",
        "Landroid/widget/LinearLayout;",
        "",
        "Le/a/g/a/f;",
        "actionButtons",
        "Ls1/s;",
        "setActionButtons",
        "(Ljava/util/List;)V",
        "",
        "color",
        "setActionButtonTheme",
        "(I)V",
        "setActionButtonColor",
        "actionButton",
        "text",
        "icon",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "a",
        "(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/view/LayoutInflater;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "acs_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string p2, "LayoutInflater.from(context)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/acs/ui/ActionButtonsView;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/acs/ui/ActionButtonsView;->a:Landroid/view/LayoutInflater;

    .line 2
    sget v1, Lcom/truecaller/acs/R$layout;->view_action_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    sget v1, Lcom/truecaller/acs/R$id;->image_icon:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 5
    sget v1, Lcom/truecaller/acs/R$id;->text_name:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    if-eqz v3, :cond_0

    .line 7
    sget v1, Lcom/truecaller/acs/R$id;->view_promo:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 9
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "root"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, p1, Le/a/g/a/f;->a:Lcom/truecaller/acs/ui/ActionButtonType;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 13
    new-instance v1, Lcom/truecaller/acs/ui/ActionButtonsView$a;

    invoke-direct {v1, p1, p3, p2}, Lcom/truecaller/acs/ui/ActionButtonsView$a;-><init>(Le/a/g/a/f;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string p3, "viewPromo"

    .line 15
    invoke-static {v4, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-boolean p1, p1, Le/a/g/a/f;->c:Z

    .line 17
    invoke-static {v4, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 18
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(I)V

    const-string p1, "ViewActionButtonBinding.\u2026.setText(text)\n    }.root"

    .line 19
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final setActionButtonColor(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    sget v3, Lcom/truecaller/acs/R$id;->text_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    sget v3, Lcom/truecaller/acs/R$id;->image_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById<ImageView>(R.id.image_icon)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setActionButtonTheme(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 6
    sget v3, Lcom/truecaller/acs/R$id;->text_name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    sget v3, Lcom/truecaller/acs/R$id;->image_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById<ImageView>(R.id.image_icon)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setActionButtons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/g/a/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "actionButtons"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g/a/f;

    .line 3
    iget-object v1, v0, Le/a/g/a/f;->a:Lcom/truecaller/acs/ui/ActionButtonType;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 6
    :pswitch_0
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_invite:I

    .line 7
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_invite_outline_24dp:I

    .line 8
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_1
    sget v1, Lcom/truecaller/acs/R$string;->vid_acs_more_option:I

    .line 10
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_more_vert_24dp:I

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 12
    :pswitch_2
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_refer:I

    .line 13
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_invite_24dp:I

    .line 14
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 15
    :pswitch_3
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_not_spam:I

    .line 16
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_not_spam_24dp:I

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 18
    :pswitch_4
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_unblock:I

    .line 19
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_block_24dp:I

    .line 20
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 21
    :pswitch_5
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_block:I

    .line 22
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_block_24dp:I

    .line 23
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 24
    :pswitch_6
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_save_edit_phonebook:I

    .line 25
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_action_edit_24dp:I

    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 27
    :pswitch_7
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_save_phonebook:I

    .line 28
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_add_contact_outline_24dp:I

    .line 29
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 30
    :pswitch_8
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_voip:I

    .line 31
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_action_voice_outline_24dp:I

    .line 32
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 33
    :pswitch_9
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_sms:I

    .line 34
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_action_message_outline_24dp:I

    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    goto :goto_1

    .line 36
    :pswitch_a
    sget v1, Lcom/truecaller/acs/R$string;->acs_action_button_call:I

    .line 37
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_tcx_action_call_outline_24dp:I

    .line 38
    invoke-virtual {p0, v0, v1, v2}, Lcom/truecaller/acs/ui/ActionButtonsView;->a(Le/a/g/a/f;II)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    .line 39
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
