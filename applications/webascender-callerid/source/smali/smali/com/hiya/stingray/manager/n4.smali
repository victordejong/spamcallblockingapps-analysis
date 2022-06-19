.class public Lcom/hiya/stingray/manager/n4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/n4$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/hiya/stingray/manager/u3;

.field private final b:Lcom/hiya/stingray/manager/a4;

.field private final c:Lcom/hiya/stingray/manager/q1;

.field private final d:Lcom/hiya/stingray/ui/login/o;

.field private final e:Lcom/hiya/stingray/manager/o2;

.field private final f:Lcom/hiya/stingray/manager/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "premium"

    const-string v1, "premium_android"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/k;->j([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/hiya/stingray/manager/n4;->g:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/a4;Lcom/hiya/stingray/manager/q1;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/manager/j2;)V
    .locals 1

    const-string v0, "premiumManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "selectManager"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "callScreenerManager"

    invoke-static {p4, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "permissionHandler"

    invoke-static {p5, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "userInfoManager"

    invoke-static {p6, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "defaultDialerManager"

    invoke-static {p7, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/n4;->a:Lcom/hiya/stingray/manager/u3;

    iput-object p3, p0, Lcom/hiya/stingray/manager/n4;->b:Lcom/hiya/stingray/manager/a4;

    iput-object p4, p0, Lcom/hiya/stingray/manager/n4;->c:Lcom/hiya/stingray/manager/q1;

    iput-object p5, p0, Lcom/hiya/stingray/manager/n4;->d:Lcom/hiya/stingray/ui/login/o;

    iput-object p6, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    iput-object p7, p0, Lcom/hiya/stingray/manager/n4;->f:Lcom/hiya/stingray/manager/j2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 13

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110424

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity.getString(R.string.zendesk_categoryApp)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const v2, 0x7f110425

    .line 2
    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity.getString(R.string.zendesk_categoryFAQ)"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const v4, 0x7f11042f

    .line 3
    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "activity.getString(R.str\u2026endesk_sectionAppAndroid)"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const v6, 0x7f110430

    .line 4
    invoke-virtual {p1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "activity.getString(R.str\u2026rIdInfoAndCommentRemoval)"

    invoke-static {v6, v7}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const v8, 0x7f110431

    .line 5
    invoke-virtual {p1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "activity.getString(R.string.zendesk_sectionFAQs)"

    invoke-static {v8, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 6
    sget-object v10, Lcom/hiya/stingray/manager/n4$a;->HELP:Lcom/hiya/stingray/manager/n4$a;

    invoke-virtual {p0, p1, v10}, Lcom/hiya/stingray/manager/n4;->b(Landroid/content/Context;Lcom/hiya/stingray/manager/n4$a;)Lzendesk/support/request/RequestUiConfig$Builder;

    move-result-object v10

    invoke-virtual {v10}, Lzendesk/support/request/RequestUiConfig$Builder;->config()Lzendesk/commonui/p;

    move-result-object v10

    const-string v11, "requestActivityBuilder(a\u2026ty, Source.HELP).config()"

    invoke-static {v10, v11}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lzendesk/support/guide/HelpCenterActivity;->builder()Lzendesk/support/guide/HelpCenterUiConfig$Builder;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Long;

    .line 8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v12, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v12, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v12, v7

    invoke-virtual {v11, v12}, Lzendesk/support/guide/HelpCenterUiConfig$Builder;->withArticlesForSectionIds([Ljava/lang/Long;)Lzendesk/support/guide/HelpCenterUiConfig$Builder;

    new-array v4, v7, [Ljava/lang/Long;

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v11, v4}, Lzendesk/support/guide/HelpCenterUiConfig$Builder;->withArticlesForCategoryIds([Ljava/lang/Long;)Lzendesk/support/guide/HelpCenterUiConfig$Builder;

    new-array v0, v6, [Lzendesk/commonui/p;

    aput-object v10, v0, v5

    .line 10
    invoke-virtual {v11, p1, v0}, Lzendesk/support/guide/HelpCenterUiConfig$Builder;->show(Landroid/content/Context;[Lzendesk/commonui/p;)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/hiya/stingray/manager/n4$a;)Lzendesk/support/request/RequestUiConfig$Builder;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f110427

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.string.zendesk_customForm)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const v2, 0x7f110426

    .line 2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.getString(R.string.zendesk_customField)"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lcom/hiya/stingray/manager/n4;->b:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f11042a

    goto :goto_0

    :cond_0
    const v4, 0x7f110429

    :goto_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "if (selectManager.isSele\u2026g.zendesk_custom_subject)"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v5, Lzendesk/support/CustomField;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/manager/n4;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Lzendesk/support/CustomField;-><init>(Ljava/lang/Long;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Lzendesk/support/request/RequestActivity;->builder()Lzendesk/support/request/RequestUiConfig$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v4}, Lzendesk/support/request/RequestUiConfig$Builder;->withRequestSubject(Ljava/lang/String;)Lzendesk/support/request/RequestUiConfig$Builder;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p2}, Lcom/hiya/stingray/manager/n4$a;->getTag()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object p2, p0, Lcom/hiya/stingray/manager/n4;->a:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/u3;->T()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    sget-object p2, Lcom/hiya/stingray/manager/n4;->g:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const p2, 0x7f11042d

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v4, "context.getString(R.string.zendesk_premium_tag)"

    invoke-static {p2, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/hiya/stingray/manager/n4;->b:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {p2}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    const p2, 0x7f110432

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.string.zendesk_select_tag)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {v2, v3}, Lzendesk/support/request/RequestUiConfig$Builder;->withTags(Ljava/util/List;)Lzendesk/support/request/RequestUiConfig$Builder;

    .line 16
    :cond_4
    invoke-static {v5}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p1}, Lzendesk/support/request/RequestUiConfig$Builder;->withTicketForm(JLjava/util/List;)Lzendesk/support/request/RequestUiConfig$Builder;

    const-string p1, "RequestActivity.builder(\u2026, listOf(androidDetails))"

    invoke-static {v2, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telecom"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/n4;->a:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->T()Z

    move-result v1

    const-string v2, "yes"

    const-string v3, "no"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/hiya/stingray/manager/n4;->a:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 4
    :goto_1
    iget-object v5, p0, Lcom/hiya/stingray/manager/n4;->b:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v5}, Lcom/hiya/stingray/manager/a4;->f()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v3

    .line 5
    :goto_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v7, "Not Supported"

    const/16 v8, 0x17

    if-lt v6, v8, :cond_5

    if-nez v0, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/hiya/stingray/manager/n4;->f:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/j2;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    move-object v0, v3

    goto :goto_4

    :cond_5
    :goto_3
    move-object v0, v7

    .line 7
    :goto_4
    iget-object v9, p0, Lcom/hiya/stingray/manager/n4;->c:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v9}, Lcom/hiya/stingray/manager/q1;->l()Ljava/lang/Boolean;

    move-result-object v9

    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v9, v10}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "Unknown"

    if-eqz v9, :cond_6

    move-object v9, v7

    goto :goto_5

    .line 8
    :cond_6
    iget-object v9, p0, Lcom/hiya/stingray/manager/n4;->c:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v9}, Lcom/hiya/stingray/manager/q1;->k()Z

    move-result v9

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_5

    .line 9
    :cond_7
    iget-object v9, p0, Lcom/hiya/stingray/manager/n4;->c:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v9}, Lcom/hiya/stingray/manager/q1;->k()Z

    move-result v9

    if-nez v9, :cond_8

    move-object v9, v3

    goto :goto_5

    :cond_8
    move-object v9, v10

    .line 10
    :goto_5
    sget-object v11, Lcom/hiya/stingray/manager/n4$b;->f:Lcom/hiya/stingray/manager/n4$b;

    .line 11
    const-class v12, Landroid/os/PowerManager;

    invoke-static {p1, v12}, Landroidx/core/content/a;->j(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PowerManager;

    const/4 v13, 0x1

    if-ge v6, v8, :cond_9

    move-object v2, v7

    goto :goto_6

    :cond_9
    if-lt v6, v8, :cond_a

    if-eqz v12, :cond_a

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v13, :cond_a

    goto :goto_6

    :cond_a
    if-lt v6, v8, :cond_b

    if-eqz v12, :cond_b

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object v2, v3

    goto :goto_6

    :cond_b
    move-object v2, v10

    .line 14
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "required: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v8, p0, Lcom/hiya/stingray/manager/n4;->d:Lcom/hiya/stingray/ui/login/o;

    invoke-virtual {v8, p1}, Lcom/hiya/stingray/ui/login/o;->b(Landroid/content/Context;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v11, v8}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "contacts: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v8, p0, Lcom/hiya/stingray/manager/n4;->d:Lcom/hiya/stingray/ui/login/o;

    sget-object v10, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v8, p1, v10}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v11, v8}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "read sms: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v8, p0, Lcom/hiya/stingray/manager/n4;->d:Lcom/hiya/stingray/ui/login/o;

    sget-object v10, Lcom/hiya/stingray/util/n;->c:[Ljava/lang/String;

    invoke-virtual {v8, p1, v10}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v11, v8}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "send sms: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v8, p0, Lcom/hiya/stingray/manager/n4;->d:Lcom/hiya/stingray/ui/login/o;

    const-string v10, "android.permission.SEND_SMS"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v10}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v11, v8}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "location: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v8, p0, Lcom/hiya/stingray/manager/n4;->d:Lcom/hiya/stingray/ui/login/o;

    sget-object v10, Lcom/hiya/stingray/util/n;->e:[Ljava/lang/String;

    invoke-virtual {v8, p1, v10}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v11, v8}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "ignore battery optimizations: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "block spam: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v7, p1}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "block fraud: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v7, p1}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "block private: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v7, p1}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "overlay for contacts: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v7, p1}, Lcom/hiya/stingray/manager/o2;->z(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "overlay for screened: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v7, p1}, Lcom/hiya/stingray/manager/o2;->A(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "overlay for other incoming: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v7, p1}, Lcom/hiya/stingray/manager/o2;->v(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "overlay for outgoing: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->e:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v7, p1}, Lcom/hiya/stingray/manager/o2;->x(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "fullscreen caller id: "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v7, p0, Lcom/hiya/stingray/manager/n4;->f:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v7}, Lcom/hiya/stingray/manager/j2;->a()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v11, v7}, Lkotlin/w/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f110428

    const/16 v10, 0xc

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "11.0.1-8647"

    aput-object v12, v10, v11

    const v11, 0x1adb1

    .line 30
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    const/4 v11, 0x2

    .line 31
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v11

    const/4 v6, 0x3

    .line 32
    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v11, v10, v6

    const/4 v6, 0x4

    aput-object v1, v10, v6

    const/4 v1, 0x5

    aput-object v4, v10, v1

    const/4 v1, 0x6

    aput-object v5, v10, v1

    const/4 v1, 0x7

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Locale.getDefault()"

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v1

    const/16 v1, 0x8

    aput-object v0, v10, v1

    const/16 v0, 0x9

    aput-object v9, v10, v0

    aput-object v3, v10, v2

    const/16 v0, 0xb

    aput-object v7, v10, v0

    .line 34
    invoke-virtual {p1, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026   callSettings\n        )"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
