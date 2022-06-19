.class public final Lcom/truecaller/bottombar/BottomBarView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/bottombar/BottomBarView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0001\u001aJ\u000f\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J!\u0010\r\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/bottombar/BottomBarView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/truecaller/bottombar/BottomBarButtonType;",
        "getCurrentButton",
        "()Lcom/truecaller/bottombar/BottomBarButtonType;",
        "type",
        "Le/a/b3/d;",
        "f1",
        "(Lcom/truecaller/bottombar/BottomBarButtonType;)Le/a/b3/d;",
        "view",
        "",
        "forceSelect",
        "Ls1/s;",
        "g1",
        "(Le/a/b3/d;Z)V",
        "Lcom/truecaller/bottombar/BottomBarView$a;",
        "v",
        "Lcom/truecaller/bottombar/BottomBarView$a;",
        "listener",
        "",
        "u",
        "I",
        "buttonWidth",
        "t",
        "Le/a/b3/d;",
        "selectedButton",
        "a",
        "bottom-bar-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic w:I


# instance fields
.field public t:Le/a/b3/d;

.field public final u:I

.field public v:Lcom/truecaller/bottombar/BottomBarView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/truecaller/bottombar/R$dimen;->bottom_tab_tcx_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/truecaller/bottombar/BottomBarView;->u:I

    return-void
.end method


# virtual methods
.method public final f1(Lcom/truecaller/bottombar/BottomBarButtonType;)Le/a/b3/d;
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.truecaller.bottombar.BottomBarButtonView"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Le/a/b3/d;

    .line 3
    invoke-virtual {v3}, Le/a/b3/d;->getState()Le/a/b3/c;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Le/a/b3/c;->e()Lcom/truecaller/bottombar/BottomBarButtonType;

    move-result-object v2

    :cond_0
    if-ne v2, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final g1(Le/a/b3/d;Z)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Le/a/b3/d;->getState()Le/a/b3/c;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 2
    iget-object v1, p0, Lcom/truecaller/bottombar/BottomBarView;->t:Le/a/b3/d;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/a/b3/d;->getState()Le/a/b3/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/a/b3/c;->e()Lcom/truecaller/bottombar/BottomBarButtonType;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Le/a/b3/c;->e()Lcom/truecaller/bottombar/BottomBarButtonType;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/truecaller/bottombar/BottomBarView;->v:Lcom/truecaller/bottombar/BottomBarView$a;

    if-eqz p2, :cond_22

    invoke-virtual {v0}, Le/a/b3/c;->e()Lcom/truecaller/bottombar/BottomBarButtonType;

    check-cast p2, Lcom/truecaller/ui/TruecallerInit;

    .line 4
    iget-object v0, p2, Lcom/truecaller/ui/TruecallerInit;->l:Lcom/google/android/material/appbar/AppBarLayout;

    .line 5
    invoke-virtual {v0, v3, v3, v3}, Lcom/google/android/material/appbar/AppBarLayout;->d(ZZZ)V

    .line 6
    iget-object p2, p2, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    instance-of v0, p2, Le/a/e/n1;

    if-eqz v0, :cond_22

    .line 7
    check-cast p2, Le/a/e/n1;

    invoke-interface {p2}, Le/a/e/n1;->y0()V

    goto/16 :goto_c

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/truecaller/bottombar/BottomBarView;->v:Lcom/truecaller/bottombar/BottomBarView$a;

    if-eqz p2, :cond_22

    invoke-virtual {v0}, Le/a/b3/c;->e()Lcom/truecaller/bottombar/BottomBarButtonType;

    move-result-object v0

    check-cast p2, Lcom/truecaller/ui/TruecallerInit;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "messages"

    const-string v2, "invite"

    const-string v4, "assistant"

    const/4 v5, 0x6

    const-string v6, "premium"

    const-string v7, "blocking"

    const-string v8, "contacts"

    const/4 v9, 0x3

    const-string v10, "calls"

    const/4 v11, 0x4

    const/4 v12, 0x5

    if-eqz v0, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v11, :cond_5

    if-eq v0, v12, :cond_4

    if-eq v0, v5, :cond_3

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v4

    goto :goto_1

    :cond_4
    move-object v1, v6

    goto :goto_1

    :cond_5
    move-object v1, v7

    goto :goto_1

    :cond_6
    move-object v1, v8

    goto :goto_1

    :cond_7
    move-object v1, v10

    .line 10
    :goto_1
    iget-object v0, p2, Lcom/truecaller/ui/TruecallerInit;->S:Landroidx/fragment/app/FragmentManager;

    .line 11
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 12
    iput-boolean v3, v2, Ln3/r/a/f0;->p:Z

    const/4 v0, 0x0

    .line 13
    iput v0, v2, Ln3/r/a/f0;->f:I

    .line 14
    iget-object v4, p2, Lcom/truecaller/ui/TruecallerInit;->S:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v1}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 15
    invoke-virtual {p2}, Lcom/truecaller/ui/TruecallerInit;->Ha()Z

    .line 16
    invoke-virtual {p2, v0}, Lcom/truecaller/ui/TruecallerInit;->v7(Z)V

    if-nez v4, :cond_11

    const/4 v0, -0x1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v5, "assistant"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    const/4 v0, 0x6

    goto :goto_2

    :sswitch_1
    const-string v5, "calls"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 v0, 0x5

    goto :goto_2

    :sswitch_2
    const-string v5, "premium"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_3
    const-string v5, "messages"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v5, "contacts"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_2

    :cond_c
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_5
    const-string v5, "blocking"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :cond_d
    const/4 v0, 0x1

    goto :goto_2

    :sswitch_6
    const-string v5, "invite"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_2

    :cond_e
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 18
    :pswitch_0
    new-instance v4, Le/a/s/c;

    invoke-direct {v4}, Le/a/s/c;-><init>()V

    goto :goto_3

    .line 19
    :pswitch_1
    sget-object v0, Lcom/truecaller/calling/dialer/DialerMode;->INSIDE_TAB:Lcom/truecaller/calling/dialer/DialerMode;

    sget-object v4, Lcom/truecaller/callhistory/data/FilterType;->NONE:Lcom/truecaller/callhistory/data/FilterType;

    const-string v5, "mode"

    .line 20
    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "filterType"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v5, Le/a/h/b/j;

    invoke-direct {v5}, Le/a/h/b/j;-><init>()V

    .line 22
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "dialer_mode"

    .line 23
    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "filter_type"

    .line 24
    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 25
    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v4, v5

    goto :goto_3

    .line 26
    :pswitch_2
    iget-object v0, p2, Lcom/truecaller/ui/TruecallerInit;->l0:Le/a/l/c/l;

    .line 27
    iget-object v0, v0, Le/a/l/c/l;->a:Le/a/u3/g;

    .line 28
    iget-object v4, v0, Le/a/u3/g;->N:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x24

    aget-object v5, v5, v6

    invoke-virtual {v4, v0, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 30
    new-instance v4, Le/a/l/c/b;

    invoke-direct {v4}, Le/a/l/c/b;-><init>()V

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 31
    :cond_f
    invoke-virtual {p2}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07015f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 32
    sget-object v4, Lcom/truecaller/premium/PremiumLaunchContext;->BOTTOM_BAR:Lcom/truecaller/premium/PremiumLaunchContext;

    new-instance v5, Le/a/l/b$e;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v0, v7}, Le/a/l/b$e;-><init>(Ljava/lang/Integer;IZ)V

    .line 33
    sget v0, Le/a/l/b;->s:I

    const-string v0, "launchContext"

    .line 34
    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "premiumFeaturesStyle"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v7, Le/a/l/b;

    invoke-direct {v7}, Le/a/l/b;-><init>()V

    .line 36
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 37
    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "analyticsMetadata"

    const/4 v4, 0x0

    .line 38
    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "selectedPage"

    .line 39
    invoke-virtual {v8, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v8, v6, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 41
    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    move-object v0, v4

    move-object v4, v7

    goto :goto_4

    :pswitch_3
    const/4 v0, 0x0

    .line 42
    new-instance v4, Le/a/a/r0/j;

    invoke-direct {v4}, Le/a/a/r0/j;-><init>()V

    goto :goto_4

    :pswitch_4
    const/4 v0, 0x0

    .line 43
    new-instance v4, Le/a/h/f/b;

    invoke-direct {v4}, Le/a/h/f/b;-><init>()V

    goto :goto_4

    :pswitch_5
    const/4 v0, 0x0

    .line 44
    new-instance v4, Le/a/h0/a/r;

    invoke-direct {v4}, Le/a/h0/a/r;-><init>()V

    goto :goto_4

    :pswitch_6
    const/4 v0, 0x0

    .line 45
    iget-object v4, p2, Lcom/truecaller/ui/TruecallerInit;->Z:Le/a/q4/d0;

    invoke-virtual {v4}, Le/a/q4/d0;->c()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p2, Lcom/truecaller/ui/TruecallerInit;->T:Lcom/truecaller/referral/ReferralManager;

    if-eqz v4, :cond_10

    .line 46
    check-cast v4, Le/a/q4/s0;

    sget-object v5, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-interface {v4, v5}, Le/a/q4/s0;->Hv(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    :goto_4
    const v5, 0x7f0a07e6

    .line 47
    invoke-virtual {v2, v5, v4, v1, v3}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_5

    :cond_10
    const-string v0, "Referral manager : "

    .line 48
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p2, p2, Lcom/truecaller/ui/TruecallerInit;->T:Lcom/truecaller/referral/ReferralManager;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " may not be ready"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_11
    const/4 v0, 0x0

    .line 49
    :goto_5
    iget-object v5, p2, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_12

    iget-boolean v6, p2, Lcom/truecaller/ui/TruecallerInit;->C:Z

    if-eqz v6, :cond_12

    instance-of v6, v5, Le/a/e/n1;

    if-eqz v6, :cond_12

    .line 50
    check-cast v5, Le/a/e/n1;

    invoke-interface {v5, v3}, Le/a/e/n1;->bx(Z)V

    .line 51
    :cond_12
    iget-object v5, p2, Lcom/truecaller/ui/TruecallerInit;->S:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentManager;->Q()Ljava/util/List;

    move-result-object v5

    const-string v6, " is already attached to a FragmentManager."

    if-eqz v5, :cond_17

    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_13
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    if-eqz v7, :cond_13

    .line 53
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v8

    if-nez v8, :cond_13

    .line 54
    instance-of v8, v7, Ln3/r/a/k;

    if-eqz v8, :cond_14

    .line 55
    invoke-virtual {v2, v7}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    goto :goto_6

    .line 56
    :cond_14
    iget-object v8, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v8, :cond_16

    iget-object v9, v2, Ln3/r/a/a;->q:Landroidx/fragment/app/FragmentManager;

    if-ne v8, v9, :cond_15

    goto :goto_7

    .line 57
    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 58
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_16
    :goto_7
    new-instance v8, Ln3/r/a/f0$a;

    invoke-direct {v8, v11, v7}, Ln3/r/a/f0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v8}, Ln3/r/a/f0;->d(Ln3/r/a/f0$a;)V

    goto :goto_6

    .line 60
    :cond_17
    iget-object v5, p2, Lcom/truecaller/ui/TruecallerInit;->j:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {v5}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 61
    invoke-interface {v5}, Landroid/view/Menu;->close()V

    .line 62
    :cond_18
    iget-object v5, v4, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v5, :cond_1a

    iget-object v7, v2, Ln3/r/a/a;->q:Landroidx/fragment/app/FragmentManager;

    if-ne v5, v7, :cond_19

    goto :goto_8

    .line 63
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 64
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1a
    :goto_8
    new-instance v5, Ln3/r/a/f0$a;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v4}, Ln3/r/a/f0$a;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v2, v5}, Ln3/r/a/f0;->d(Ln3/r/a/f0$a;)V

    .line 66
    invoke-virtual {v2}, Ln3/r/a/a;->g()I

    .line 67
    iput-object v1, p2, Lcom/truecaller/ui/TruecallerInit;->A:Ljava/lang/String;

    .line 68
    iput-object v4, p2, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    .line 69
    invoke-virtual {p2}, Lcom/truecaller/ui/TruecallerInit;->bb()V

    .line 70
    iget-object v1, p2, Lcom/truecaller/ui/TruecallerInit;->S:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->G()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 71
    iget-object v1, p2, Lcom/truecaller/ui/TruecallerInit;->l:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1b

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v3, v2, v3}, Lcom/google/android/material/appbar/AppBarLayout;->d(ZZZ)V

    .line 73
    :cond_1b
    invoke-virtual {p2}, Lcom/truecaller/ui/TruecallerInit;->Ta()V

    .line 74
    :cond_1c
    iget-boolean v1, p2, Lcom/truecaller/ui/TruecallerInit;->C:Z

    if-eqz v1, :cond_1d

    iget-object v1, p2, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Le/a/e/n1;

    if-eqz v2, :cond_1d

    .line 75
    check-cast v1, Le/a/e/n1;

    invoke-interface {v1}, Le/a/e/n1;->j()V

    .line 76
    :cond_1d
    iget-object v1, p2, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v1}, Lcom/truecaller/ui/TruecallerInit;->fb(Landroidx/fragment/app/Fragment;)V

    .line 77
    invoke-virtual {p2}, Lcom/truecaller/ui/TruecallerInit;->hb()V

    .line 78
    iget-object v1, p2, Le/a/e/w0;->a:Landroidx/fragment/app/Fragment;

    .line 79
    instance-of v2, v1, Le/a/b0/a/o;

    if-eqz v2, :cond_1e

    check-cast v1, Le/a/b0/a/o;

    invoke-interface {v1}, Le/a/b0/a/o;->LA()Le/a/b0/a/n;

    move-result-object v1

    goto :goto_9

    :cond_1e
    move-object v1, v0

    .line 80
    :goto_9
    iget-object v2, p2, Lcom/truecaller/ui/TruecallerInit;->Q:Le/a/b0/a/n;

    .line 81
    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 82
    iput-object v1, p2, Lcom/truecaller/ui/TruecallerInit;->Q:Le/a/b0/a/n;

    if-nez v1, :cond_1f

    .line 83
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Le/a/l4/k;->k(Landroid/view/Window;)V

    goto :goto_a

    .line 84
    :cond_1f
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 85
    iget v4, v1, Le/a/b0/a/n;->a:I

    .line 86
    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 87
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 88
    iget-boolean v4, v1, Le/a/b0/a/n;->b:Z

    .line 89
    invoke-static {v2, v4}, Le/a/l4/k;->j(Landroid/view/Window;Z)V

    .line 90
    :goto_a
    iget-object p2, p2, Lcom/truecaller/ui/TruecallerInit;->v:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    if-eqz v1, :cond_20

    .line 91
    iget v0, v1, Le/a/b0/a/n;->a:I

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_20
    iput-object v0, p2, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->x:Ljava/lang/Integer;

    if-eqz v1, :cond_21

    .line 93
    iget-boolean v0, v1, Le/a/b0/a/n;->b:Z

    goto :goto_b

    :cond_21
    move v0, v3

    .line 94
    :goto_b
    iput-boolean v0, p2, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->w:Z

    .line 95
    invoke-static {p2}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p2}, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->i1()V

    .line 96
    :cond_22
    :goto_c
    iget-object p2, p0, Lcom/truecaller/bottombar/BottomBarView;->t:Le/a/b3/d;

    if-eqz p2, :cond_23

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Le/a/b3/d;->setSelected(Z)V

    .line 97
    :cond_23
    invoke-virtual {p1, v3}, Le/a/b3/d;->setSelected(Z)V

    .line 98
    iput-object p1, p0, Lcom/truecaller/bottombar/BottomBarView;->t:Le/a/b3/d;

    :cond_24
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x468dd0f7 -> :sswitch_6
        -0x279c93cb -> :sswitch_5
        -0x21d29fad -> :sswitch_4
        -0x1b8afeb4 -> :sswitch_3
        -0x12fb31a9 -> :sswitch_2
        0x5a0d1d5 -> :sswitch_1
        0x553972de -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrentButton()Lcom/truecaller/bottombar/BottomBarButtonType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bottombar/BottomBarView;->t:Le/a/b3/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/b3/d;->getState()Le/a/b3/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/b3/c;->e()Lcom/truecaller/bottombar/BottomBarButtonType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
