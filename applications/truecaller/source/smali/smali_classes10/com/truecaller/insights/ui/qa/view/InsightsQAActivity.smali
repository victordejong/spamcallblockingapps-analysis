.class public final Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "<init>",
        "()V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    .line 1
    const-class v0, Le/a/b0/m/b/a;

    const-class v1, Le/a/c/l/a/b;

    const-class v2, Le/a/c/h/k/a;

    const-class v3, Le/a/c/l/a/a;

    invoke-static/range {p0 .. p0}, Le/a/c/p/a;->E2(Landroid/app/Activity;)V

    .line 2
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "qaPageToOpen"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extras_param"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_5

    .line 5
    sget-object v6, Le/a/c/a/m/a/a$a;->a:Le/a/c/a/m/a/a;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_2

    .line 6
    invoke-static/range {p0 .. p0}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v13

    const-string v6, "EntryPointAccessors.from\u2026htsComponent::class.java)"

    .line 7
    invoke-static {v3, v6}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Le/a/c/l/a/a;

    .line 8
    new-instance v9, Le/a/c/a/c/e/a;

    invoke-direct {v9}, Le/a/c/a/c/e/a;-><init>()V

    const-string v6, "EntryPointAccessors.from\u2026onsComponent::class.java)"

    .line 9
    invoke-static {v2, v6}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v14, v6

    check-cast v14, Le/a/c/h/k/a;

    const-string v6, "EntryPointAccessors.from\u2026PayComponent::class.java)"

    .line 10
    invoke-static {v1, v6}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Le/a/c/l/a/b;

    const-string v6, "EntryPointAccessors.from\u2026ntsComponent::class.java)"

    .line 11
    invoke-static {v0, v6}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/b0/m/b/a;

    .line 12
    new-instance v10, Le/a/c/a/m/a/c;

    invoke-direct {v10}, Le/a/c/a/m/a/c;-><init>()V

    .line 13
    new-instance v11, Le/a/c/a/c/e/d;

    invoke-direct {v11}, Le/a/c/a/c/e/d;-><init>()V

    .line 14
    invoke-static {v12, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    const-class v3, Le/a/b0/c;

    invoke-static {v13, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    invoke-static {v14, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    invoke-static {v15, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    invoke-static {v6, v0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 19
    new-instance v0, Le/a/c/a/m/a/b;

    const/16 v17, 0x0

    move-object v8, v0

    move-object/from16 v16, v6

    invoke-direct/range {v8 .. v17}, Le/a/c/a/m/a/b;-><init>(Le/a/c/a/c/e/a;Le/a/c/a/m/a/c;Le/a/c/a/c/e/d;Le/a/c/l/a/a;Le/a/b0/c;Le/a/c/h/k/a;Le/a/c/l/a/b;Le/a/b0/m/b/a;Le/a/c/a/m/a/b$a;)V

    const-string v1, "DaggerBusinessInsightsQA\u2026                 .build()"

    .line 20
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<set-?>"

    .line 21
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sput-object v0, Le/a/c/a/m/a/a$a;->a:Le/a/c/a/m/a/a;

    .line 23
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v0, "InsightsUpdatesClassifierTest"

    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/i;

    invoke-direct {v0}, Le/a/c/a/m/c/i;-><init>()V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "InsightsSmsFeatureFilterTester"

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/z;

    invoke-direct {v0}, Le/a/c/a/m/c/z;-><init>()V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "InsightsMalanaSeed"

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/o;

    invoke-direct {v0}, Le/a/c/a/m/c/o;-><init>()V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "TotalSmartCardsShownDialog"

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/c0;

    invoke-direct {v0}, Le/a/c/a/m/c/c0;-><init>()V

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "InsightRowFFTester"

    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/x;

    invoke-direct {v0}, Le/a/c/a/m/c/x;-><init>()V

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "InsightsUpdatesClassifierSeedFetch"

    .line 29
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/f;

    invoke-direct {v0}, Le/a/c/a/m/c/f;-><init>()V

    goto :goto_1

    :sswitch_6
    const-string v0, "InsightsReminders"

    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/w;

    invoke-direct {v0}, Le/a/c/a/m/c/w;-><init>()V

    goto :goto_1

    :sswitch_7
    const-string v0, "InsightsAddressFiltersFragment"

    .line 31
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Le/a/c/a/m/c/u;->f:Le/a/c/a/m/c/u$b;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 33
    new-instance v0, Le/a/c/a/m/c/u;

    invoke-direct {v0}, Le/a/c/a/m/c/u;-><init>()V

    .line 34
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "address"

    .line 35
    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 37
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Address is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    const-string v0, "InsightsCategorizerSeedFetch"

    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/e;

    invoke-direct {v0}, Le/a/c/a/m/c/e;-><init>()V

    goto :goto_1

    :sswitch_9
    const-string v0, "InsightsBrandSearchTester"

    .line 39
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/a;

    invoke-direct {v0}, Le/a/c/a/m/c/a;-><init>()V

    goto :goto_1

    :sswitch_a
    const-string v0, "FtsFragment"

    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Le/a/c/a/m/c/b;

    invoke-direct {v0}, Le/a/c/a/m/c/b;-><init>()V

    :goto_1
    move-object/from16 v2, p0

    goto :goto_3

    :cond_4
    :goto_2
    const-string v0, "Please provide a valid QA_PAGE_TO_OPEN option to open the required page"

    move-object/from16 v2, p0

    .line 41
    invoke-static {v2, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 42
    invoke-virtual/range {p0 .. p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 43
    new-instance v4, Ln3/r/a/a;

    invoke-direct {v4, v3}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const v3, 0x1020002

    .line 44
    invoke-virtual {v4, v3, v0, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 45
    invoke-virtual {v4}, Ln3/r/a/a;->f()I

    goto :goto_4

    :cond_5
    move-object/from16 v2, p0

    :cond_6
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5bf4b94b -> :sswitch_a
        -0x452ed10d -> :sswitch_9
        -0x2189b795 -> :sswitch_8
        -0xf26c14e -> :sswitch_7
        -0xca4e37a -> :sswitch_6
        0x226874d9 -> :sswitch_5
        0x249d92e1 -> :sswitch_4
        0x49799d7b -> :sswitch_3
        0x5241d468 -> :sswitch_2
        0x7b227c2f -> :sswitch_1
        0x7fa1ec82 -> :sswitch_0
    .end sparse-switch
.end method
