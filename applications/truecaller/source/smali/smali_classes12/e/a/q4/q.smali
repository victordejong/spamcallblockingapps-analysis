.class public final synthetic Le/a/q4/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/r0;

.field public final synthetic b:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/r0;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/q;->a:Le/a/q4/r0;

    iput-object p2, p0, Le/a/q4/q;->b:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Le/a/q4/q;->a:Le/a/q4/r0;

    iget-object v2, v0, Le/a/q4/q;->b:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    .line 1
    iget-object v3, v1, Le/a/q4/r0;->c:Lcom/truecaller/referral/ReferralUrl;

    sget-object v4, Lcom/truecaller/referral/ReferralUrl$b;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 2
    iput-object v4, v3, Lcom/truecaller/referral/ReferralUrl;->a:Lcom/truecaller/referral/ReferralUrl$b;

    .line 3
    invoke-virtual {v3}, Lcom/truecaller/referral/ReferralUrl;->a()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120e8f

    .line 4
    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120e88

    .line 5
    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f08050a

    .line 6
    new-instance v14, Lcom/truecaller/referral/BulkSmsView$PromoLayout;

    const v8, 0x7f0d025a

    const/4 v15, 0x2

    new-array v9, v15, [I

    fill-array-data v9, :array_0

    new-array v10, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v10, v16

    const/4 v4, 0x1

    aput-object v5, v10, v4

    new-array v11, v4, [I

    const v5, 0x7f0a096b

    aput v5, v11, v16

    new-array v12, v4, [I

    aput v6, v12, v16

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/truecaller/referral/BulkSmsView$PromoLayout;-><init>(I[I[Ljava/lang/String;[I[I[I)V

    const v5, 0x7f120e8b

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v3, v6, v16

    .line 7
    iget-object v3, v1, Le/a/q4/r0;->g:Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-virtual {v1, v5, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Le/a/q4/r0;->f:Ljava/lang/String;

    invoke-static {v3, v14, v2, v4}, Le/a/q4/v;->OA(Ljava/lang/String;Lcom/truecaller/referral/BulkSmsView$PromoLayout;Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;Ljava/lang/String;)Le/a/q4/v;

    move-result-object v3

    .line 8
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-class v5, Le/a/q4/v;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;->BOTTOM_BAR:Lcom/truecaller/referral/ReferralManager$ReferralLaunchContext;

    if-eq v2, v3, :cond_0

    .line 10
    invoke-virtual {v1}, Ln3/r/a/k;->dismiss()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a1245
        0x7f0a10de
    .end array-data
.end method
