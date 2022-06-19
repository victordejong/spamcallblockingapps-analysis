.class public Lcom/hiya/stingray/manager/c4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/c4$a;,
        Lcom/hiya/stingray/manager/c4$c;,
        Lcom/hiya/stingray/manager/c4$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/ui/login/o;

.field private final c:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/c4;->b:Lcom/hiya/stingray/ui/login/o;

    iput-object p3, p0, Lcom/hiya/stingray/manager/c4;->c:Lcom/hiya/stingray/manager/o2;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "11.0.1-8647"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f1103a1

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "context.getString(R.stri\u2026BuildConfig.VERSION_NAME)"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/hiya/stingray/t/a1;

    .line 2
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f05000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 3
    new-instance v4, Lcom/hiya/stingray/t/a1;

    sget-object v7, Lcom/hiya/stingray/manager/c4$a;->MY_PHONE_NUMBER:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v8, v0, Lcom/hiya/stingray/manager/c4;->c:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v8}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v9, 0x7f11039c

    goto :goto_0

    :cond_0
    iget-object v8, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v9, 0x7f110397

    :goto_0
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "if (deviceUserInfoManage\u2026gs_menu_add_phone_number)"

    invoke-static {v8, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v9, v0, Lcom/hiya/stingray/manager/c4;->c:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v9}, Lcom/hiya/stingray/manager/o2;->s()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v6, v0, Lcom/hiya/stingray/manager/c4;->c:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/o2;->r()Ljava/lang/String;

    move-result-object v6

    :cond_1
    move-object v9, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1f0

    const/16 v17, 0x0

    move-object v6, v4

    move-object v10, v1

    .line 6
    invoke-direct/range {v6 .. v17}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    :cond_2
    aput-object v6, v3, v5

    .line 7
    new-instance v4, Lcom/hiya/stingray/t/a1;

    sget-object v5, Lcom/hiya/stingray/manager/c4$a;->TERMS:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 8
    iget-object v5, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f1103a0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, "context.getString(R.stri\u2026ttings_menu_terms_of_use)"

    invoke-static {v8, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1b4

    const/16 v17, 0x0

    const-string v13, "view_terms"

    move-object v6, v4

    move-object v10, v1

    .line 9
    invoke-direct/range {v6 .. v17}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    aput-object v4, v3, v2

    const/4 v2, 0x2

    .line 10
    new-instance v4, Lcom/hiya/stingray/t/a1;

    sget-object v5, Lcom/hiya/stingray/manager/c4$a;->PRIVACY:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 11
    iget-object v5, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f11039d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, "context.getString(R.string.settings_menu_privacy)"

    invoke-static {v8, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "view_privacy"

    move-object v6, v4

    .line 12
    invoke-direct/range {v6 .. v17}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    aput-object v4, v3, v2

    const/4 v2, 0x3

    .line 13
    new-instance v4, Lcom/hiya/stingray/t/a1;

    sget-object v5, Lcom/hiya/stingray/manager/c4$a;->PRIVACY_AND_DATA:Lcom/hiya/stingray/manager/c4$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 14
    iget-object v5, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f11032e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v5, "context.getString(R.stri\u2026_privacy_data_collection)"

    invoke-static {v8, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "view_privacy_and_data"

    move-object v6, v4

    .line 15
    invoke-direct/range {v6 .. v17}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    aput-object v4, v3, v2

    .line 16
    invoke-static {v3}, Lkotlin/s/k;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public b()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v2, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const v3, 0x7f1103b1

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v4, Lcom/hiya/stingray/manager/c4$b;->PHONE_NUMBER:Lcom/hiya/stingray/manager/c4$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f1103b2

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "context.getString(R.stri\u2026ngs_pd_your_phone_number)"

    invoke-static {v6, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v7, 0x7f1103b3

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 6
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v14, 0x20

    const/4 v15, 0x0

    const-string v11, "send_phone_number"

    const-string v12, "allow_send_phone_number"

    const-string v13, "PN"

    move-object v4, v2

    .line 7
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    new-instance v2, Lcom/hiya/stingray/t/a1;

    .line 9
    sget-object v4, Lcom/hiya/stingray/manager/c4$b;->PHONE_EVENTS:Lcom/hiya/stingray/manager/c4$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    .line 10
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v5, 0x7f1103ac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "context.getString(R.stri\u2026.settings_pd_phone_calls)"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v5, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f1103ad

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 12
    iget-object v5, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v26, 0x20

    const/16 v27, 0x0

    const-string v23, "send_phone_events"

    const-string v24, "allow_send_phone_events"

    const-string v25, "PE"

    move-object/from16 v16, v2

    move-object/from16 v18, v4

    .line 13
    invoke-direct/range {v16 .. v27}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v4, Lcom/hiya/stingray/manager/c4$b;->BLOCK_EVENTS:Lcom/hiya/stingray/manager/c4$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 15
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v5, 0x7f1103aa

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "context.getString(R.stri\u2026ngs_pd_numbers_you_block)"

    invoke-static {v7, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v5, 0x7f1103ab

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 17
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v15, 0x20

    const/16 v16, 0x0

    const-string v12, "send_block_events"

    const-string v13, "allow_send_block_events"

    const-string v14, "BE"

    move-object v5, v2

    .line 18
    invoke-direct/range {v5 .. v16}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v2, v0, Lcom/hiya/stingray/manager/c4;->b:Lcom/hiya/stingray/ui/login/o;

    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    sget-object v5, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v4, Lcom/hiya/stingray/manager/c4$b;->IS_CONTACT:Lcom/hiya/stingray/manager/c4$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 21
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f1103a4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "context.getString(R.stri\u2026settings_pd_address_book)"

    invoke-static {v6, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v7, 0x7f1103a5

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 23
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v14, 0x20

    const/4 v15, 0x0

    const-string v11, "send_is_contact"

    const-string v12, "allow_send_is_contact"

    const-string v13, "IC"

    move-object v4, v2

    .line 24
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    iget-object v2, v0, Lcom/hiya/stingray/manager/c4;->b:Lcom/hiya/stingray/ui/login/o;

    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    sget-object v5, Lcom/hiya/stingray/util/n;->c:[Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 26
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v4, Lcom/hiya/stingray/manager/c4$b;->TEXT_EVENTS:Lcom/hiya/stingray/manager/c4$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 27
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f1103ae

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "context.getString(R.stri\u2026ettings_pd_text_messages)"

    invoke-static {v6, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v7, 0x7f1103af

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 29
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v14, 0x20

    const/4 v15, 0x0

    const-string v11, "send_text_events"

    const-string v12, "allow_send_text_events"

    const-string v13, "TE"

    move-object v4, v2

    .line 30
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/hiya/stingray/t/a1;

    const/4 v3, 0x0

    .line 31
    new-instance v16, Lcom/hiya/stingray/t/a1;

    sget-object v4, Lcom/hiya/stingray/manager/c4$b;->APP_PERMISSIONS:Lcom/hiya/stingray/manager/c4$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 32
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f1103a6

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "context.getString(R.stri\u2026tings_pd_app_permissions)"

    invoke-static {v6, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v7, 0x7f1103a7

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 34
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v15, 0x7f1103a8

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1b0

    const/16 v17, 0x0

    const-string v11, "app_permissions"

    move-object/from16 v4, v16

    move-object/from16 v15, v17

    .line 35
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    aput-object v16, v2, v3

    const/4 v3, 0x1

    .line 36
    new-instance v16, Lcom/hiya/stingray/t/a1;

    sget-object v4, Lcom/hiya/stingray/manager/c4$b;->MANAGE_DATA:Lcom/hiya/stingray/manager/c4$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 37
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v6, 0x7f1103a9

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v4, "context.getString(R.stri\u2026ttings_pd_manage_my_data)"

    invoke-static {v6, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 38
    iget-object v4, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v8, 0x7f1103a8

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v14, 0x1b4

    const/4 v15, 0x0

    const-string v11, "manage_data"

    move-object/from16 v4, v16

    .line 39
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    aput-object v16, v2, v3

    .line 40
    invoke-static {v2}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public c()Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/a1;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/hiya/stingray/t/a1;

    .line 1
    new-instance v14, Lcom/hiya/stingray/t/a1;

    sget-object v2, Lcom/hiya/stingray/manager/c4$c;->HELP:Lcom/hiya/stingray/manager/c4$c;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 2
    iget-object v2, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v4, 0x7f110370

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v2, "context.getString(R.string.settings_help)"

    invoke-static {v4, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "help"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1bc

    const/4 v13, 0x0

    move-object v2, v14

    .line 3
    invoke-direct/range {v2 .. v13}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    const/4 v2, 0x0

    aput-object v14, v1, v2

    .line 4
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v3, Lcom/hiya/stingray/manager/c4$c;->RATE:Lcom/hiya/stingray/manager/c4$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v16

    .line 5
    iget-object v3, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v4, 0x7f110374

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.settings_help_rate)"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "rate_app"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1bc

    const/16 v26, 0x0

    move-object v15, v2

    move-object/from16 v17, v3

    .line 6
    invoke-direct/range {v15 .. v26}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 7
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v3, Lcom/hiya/stingray/manager/c4$c;->SHARE:Lcom/hiya/stingray/manager/c4$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v3, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v4, 0x7f110375

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "context.getString(R.string.settings_help_share)"

    invoke-static {v6, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v11, "share_app"

    const/4 v12, 0x0

    const/16 v14, 0x1bc

    const/4 v15, 0x0

    move-object v4, v2

    .line 9
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 10
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v3, Lcom/hiya/stingray/manager/c4$c;->WEBSITE:Lcom/hiya/stingray/manager/c4$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v3, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v4, 0x7f110379

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "context.getString(R.string.settings_help_visit)"

    invoke-static {v6, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "hiya_site"

    move-object v4, v2

    .line 12
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 13
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v3, Lcom/hiya/stingray/manager/c4$c;->FACEBOOK:Lcom/hiya/stingray/manager/c4$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 14
    iget-object v3, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v4, 0x7f110373

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "context.getString(R.string.settings_help_facebook)"

    invoke-static {v6, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "hiya_facebook"

    move-object v4, v2

    .line 15
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 16
    new-instance v2, Lcom/hiya/stingray/t/a1;

    sget-object v3, Lcom/hiya/stingray/manager/c4$c;->TWITTER:Lcom/hiya/stingray/manager/c4$c;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 17
    iget-object v3, v0, Lcom/hiya/stingray/manager/c4;->a:Landroid/content/Context;

    const v4, 0x7f110377

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v3, "context.getString(R.string.settings_help_twitter)"

    invoke-static {v6, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "hiya_twitter"

    move-object v4, v2

    .line 18
    invoke-direct/range {v4 .. v15}, Lcom/hiya/stingray/t/a1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/w/c/g;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 19
    invoke-static {v1}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
