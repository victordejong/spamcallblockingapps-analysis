.class public Le/a/q4/l0;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/referral/ReferralManager;
.implements Le/a/q4/m0;
.implements Le/a/q4/s0;


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:Le/a/e/a/c3;

.field public b:Ln3/b/a/g;

.field public c:Le/a/q4/o0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static OA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Le/a/q4/l0;

    invoke-direct {v0}, Le/a/q4/l0;-><init>()V

    .line 2
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p0, 0x0

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, p0, v0, p1, v2}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Ln3/r/a/a;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static PA(Ln3/r/a/l;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0, p1}, Le/a/q4/l0;->OA(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/truecaller/referral/ReferralManager;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Ef(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 2
    invoke-virtual {v0, p1}, Le/a/q4/o0;->Ij(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Z

    move-result p1

    return p1
.end method

.method public Hv(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 2
    iget-object v0, v0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v1, "referralCode"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v1}, Le/a/q4/o0;->Lj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, v1, Lcom/truecaller/referral/ReferralUrl;->c:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 6
    invoke-static {v0, v1, p1}, Le/a/q4/r0;->OA(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Le/a/q4/r0;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Is(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v0, p1}, Le/a/q4/o0;->Is(Landroid/net/Uri;)V

    return-void
.end method

.method public Iv(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v1, v0}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    if-nez p4, :cond_1

    .line 5
    invoke-static {p1, p2, p3}, Le/a/q4/r0;->OA(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Le/a/q4/r0;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1, p2, p3, p4}, Le/a/q4/r0;->PA(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)Le/a/q4/r0;

    move-result-object p1

    .line 7
    :goto_0
    const-class p2, Le/a/q4/r0;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 9
    invoke-virtual {v1, p3, p1, p2, p4}, Ln3/r/a/f0;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v1}, Ln3/r/a/f0;->g()I

    :cond_2
    :goto_1
    return-void
.end method

.method public Kx()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v0}, Le/a/q4/o0;->Kx()V

    return-void
.end method

.method public Ky(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v0, p1}, Le/a/q4/o0;->Ky(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public Mf(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/q4/m0;

    sget-object v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PUSH_NOTIFICATION:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-interface {v0, p1, v1}, Le/a/q4/m0;->V9(Ljava/lang/String;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method

.method public Pv()V
    .locals 0

    return-void
.end method

.method public final QA(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-static {p1, p3, p4, p5}, Le/a/q4/v;->OA(Ljava/lang/String;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)Le/a/q4/v;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static/range {p1 .. p6}, Le/a/q4/v;->PA(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)Le/a/q4/v;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    .line 4
    new-instance p3, Ln3/r/a/a;

    invoke-direct {p3, p2}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 p2, 0x0

    const/4 p4, 0x1

    const-string p5, "BulkSmsDialog"

    .line 5
    invoke-virtual {p3, p2, p1, p5, p4}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p3, p1}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    .line 7
    invoke-virtual {p3}, Ln3/r/a/f0;->g()I

    return-void
.end method

.method public V9(Ljava/lang/String;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V
    .locals 4

    .line 1
    new-instance v0, Ln3/b/a/g$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0134

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0bb1

    .line 3
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v1, p1, Landroidx/appcompat/app/AlertController$b;->u:Landroid/view/View;

    const/4 v1, 0x0

    .line 6
    iput v1, p1, Landroidx/appcompat/app/AlertController$b;->t:I

    .line 7
    new-instance p1, Le/a/q4/h;

    invoke-direct {p1, p0, p2}, Le/a/q4/h;-><init>(Le/a/q4/l0;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    const p2, 0x7f120e8d

    invoke-virtual {v0, p2, p1}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 8
    sget-object p1, Le/a/q4/i;->a:Le/a/q4/i;

    const p2, 0x7f120a97

    invoke-virtual {v0, p2, p1}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 9
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q4/l0;->b:Ln3/b/a/g;

    return-void
.end method

.method public Vu(Ljava/lang/String;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v6}, Le/a/q4/l0;->QA(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)V

    return-void
.end method

.method public bridge synthetic Wk()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    return-object v0
.end method

.method public X6(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v2, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->PROMO_POPUP:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iput-object v2, v0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 3
    sget-object v3, Le/a/q4/o0$b;->a:Le/a/q4/o0$b;

    iput-object v3, v0, Le/a/q4/o0;->r:Le/a/q4/o0$b;

    .line 4
    iget-object v0, v0, Le/a/q4/o0;->d:Le/a/w/b/b;

    const-string v3, "referralCode"

    invoke-interface {v0, v3}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v3, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v3}, Le/a/q4/o0;->Lj()Lcom/truecaller/referral/ReferralUrl;

    move-result-object v3

    .line 6
    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "App Chooser"

    .line 7
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-static {v0, v3, v2}, Le/a/q4/r0;->OA(Ljava/lang/String;Lcom/truecaller/referral/ReferralUrl;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)Le/a/q4/r0;

    move-result-object p1

    return-object p1

    :cond_2
    const p1, 0x7f120e8f

    .line 9
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120e88

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08050a

    .line 11
    new-instance v11, Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    const v5, 0x7f0d025a

    const/4 v4, 0x2

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v7, v4

    const/4 p1, 0x1

    aput-object v0, v7, p1

    new-array v8, p1, [I

    const v0, 0x7f0a096b

    aput v0, v8, v4

    new-array v9, p1, [I

    aput v3, v9, v4

    const/4 v10, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/truecaller/referral/BulkSmsView$PromoLayout;-><init>(I[I[Ljava/lang/String;[I[I[I)V

    .line 12
    iget-object p1, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {p1}, Le/a/q4/o0;->Mj()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v11, v2, v1}, Le/a/q4/v;->OA(Ljava/lang/String;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)Le/a/q4/v;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v1

    :array_0
    .array-data 4
        0x7f0a1245
        0x7f0a10de
    .end array-data
.end method

.method public Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v0, p1}, Le/a/q4/o0;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method

.method public Xg()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->a:Le/a/e/a/c3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/q4/l0;->a:Le/a/e/a/c3;

    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Le/a/w/b/b;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    iget-object v5, v0, Le/a/q4/o0;->d:Le/a/w/b/b;

    invoke-interface {v5, v4}, Le/a/b0/g/b;->remove(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dg(Lcom/truecaller/data/entity/Contact;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v0, p1}, Le/a/q4/o0;->dg(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    return p1
.end method

.method public fc(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Le/a/e/a/c3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Le/a/e/a/c3;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Le/a/q4/l0;->a:Le/a/e/a/c3;

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public j8()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v0}, Le/a/q4/o0;->j8()V

    return-void
.end method

.method public oe(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 2
    iput-object p1, v0, Le/a/q4/o0;->b:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->DEEP_LINK:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    invoke-virtual {v0, p1}, Le/a/q4/o0;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Le/a/q4/n0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Le/a/q4/n0;-><init>(I)V

    .line 5
    const-class v2, Le/a/q4/n0;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    const-class v2, Le/a/j2;

    invoke-static {v0, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v2, Le/a/q4/b0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Le/a/q4/b0;-><init>(Le/a/q4/n0;Le/a/j2;Le/a/q4/b0$a;)V

    .line 8
    iget-object v0, v2, Le/a/q4/b0;->l:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Le/a/q4/o0;

    iput-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 11
    :cond_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "referral_launch_context"

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    iput-object v1, v0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    :cond_2
    const-string v1, "single_contact"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iput-object p1, v0, Le/a/q4/o0;->t:Lcom/truecaller/data/entity/Contact;

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 17
    iput-object p0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    invoke-virtual {v0}, Le/a/q4/o0;->c()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 3
    iget-object v1, v0, Le/a/q4/o0;->t:Lcom/truecaller/data/entity/Contact;

    const-string v2, "single_contact"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, v0, Le/a/q4/o0;->s:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    const-string v1, "referral_launch_context"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public oo()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->b:Ln3/b/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/b/a/p;->dismiss()V

    :cond_0
    return-void
.end method

.method public pn(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Le/a/q4/l0;->QA(Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;Z)V

    return-void
.end method

.method public sx(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q4/l0;->c:Le/a/q4/o0;

    .line 2
    iput-object p2, v0, Le/a/q4/o0;->t:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-virtual {v0, p1}, Le/a/q4/o0;->Xa(Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V

    return-void
.end method
