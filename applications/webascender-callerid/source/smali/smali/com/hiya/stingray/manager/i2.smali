.class public final Lcom/hiya/stingray/manager/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/i2$a;,
        Lcom/hiya/stingray/manager/i2$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/manager/v3;

.field private final b:Lcom/hiya/stingray/util/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/util/b0;)V
    .locals 1

    const-string v0, "promoPremiumManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sticky"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/i2;->a:Lcom/hiya/stingray/manager/v3;

    iput-object p2, p0, Lcom/hiya/stingray/manager/i2;->b:Lcom/hiya/stingray/util/b0;

    return-void
.end method

.method private final a(Landroid/content/Intent;)V
    .locals 18

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DIAL"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "intent.data!!.toString()"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const-string v4, "tel:"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5, v3, v1}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "tel://"

    const-string v8, ""

    invoke-static/range {v6 .. v11}, Lkotlin/c0/m;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    const-string v13, "tel:"

    const-string v14, ""

    invoke-static/range {v12 .. v17}, Lkotlin/c0/m;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashActivity"

    .line 3
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected phone number in action dial ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v2, p0

    .line 4
    iget-object v1, v2, Lcom/hiya/stingray/manager/i2;->b:Lcom/hiya/stingray/util/b0;

    new-instance v3, Lcom/hiya/stingray/manager/i2$b;

    sget-object v4, Lcom/hiya/stingray/manager/i2$a;->KEYPAD:Lcom/hiya/stingray/manager/i2$a;

    sget-object v5, Lcom/hiya/stingray/manager/i2$b$a;->PHONE_NUMBER:Lcom/hiya/stingray/manager/i2$b$a;

    invoke-static {v5, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object/from16 v2, p0

    .line 5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_2
    move-object/from16 v2, p0

    .line 6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_3
    move-object/from16 v2, p0

    :goto_0
    return-void
.end method

.method private final b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/hiya/stingray/manager/i2;->a(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const v2, 0x7f1100d1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_9

    const-string v0, "intent.data!!"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1100d0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const-string p1, "SplashActivity"

    .line 6
    invoke-static {p1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected navigation link ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const-string v3, "uri.pathSegments"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/s/k;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/s/k;->J(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "uri.pathSegments.first()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "Locale.ROOT"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p2, Lcom/hiya/stingray/manager/i2$a;->PREMIUM_INFO:Lcom/hiya/stingray/manager/i2$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/hiya/stingray/manager/i2;->b:Lcom/hiya/stingray/util/b0;

    new-instance v0, Lcom/hiya/stingray/manager/i2$b;

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;ILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_4
    sget-object p2, Lcom/hiya/stingray/manager/i2$a;->UPSELL:Lcom/hiya/stingray/manager/i2$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/hiya/stingray/manager/i2;->b:Lcom/hiya/stingray/util/b0;

    new-instance v0, Lcom/hiya/stingray/manager/i2$b;

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;ILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_5
    sget-object p2, Lcom/hiya/stingray/manager/i2$a;->UPSELL_PROMO:Lcom/hiya/stingray/manager/i2$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/hiya/stingray/manager/i2;->b:Lcom/hiya/stingray/util/b0;

    new-instance v0, Lcom/hiya/stingray/manager/i2$b;

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;ILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 11
    :cond_6
    sget-object p2, Lcom/hiya/stingray/manager/i2$a;->KEYPAD:Lcom/hiya/stingray/manager/i2$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/hiya/stingray/manager/i2;->b:Lcom/hiya/stingray/util/b0;

    new-instance v0, Lcom/hiya/stingray/manager/i2$b;

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;ILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_7
    sget-object p2, Lcom/hiya/stingray/manager/i2$a;->NEWSLETTER:Lcom/hiya/stingray/manager/i2$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/hiya/stingray/manager/i2;->b:Lcom/hiya/stingray/util/b0;

    new-instance v0, Lcom/hiya/stingray/manager/i2$b;

    invoke-direct {v0, p2, v1, v2, v1}, Lcom/hiya/stingray/manager/i2$b;-><init>(Lcom/hiya/stingray/manager/i2$a;Ljava/util/Map;ILkotlin/w/c/g;)V

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/util/b0;->c(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    return-void

    .line 13
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_a
    :goto_2
    return-void
.end method

.method private final c(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "open_link"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "DeepLinkingManagerLog"

    .line 2
    invoke-static {v2}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Detected open link action ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "open_link_title"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, v1, p2}, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->g1(Ljava/lang/String;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 4
    const-class v0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;

    .line 5
    invoke-static {p1, p2, v0}, Lcom/hiya/stingray/ui/common/SinglePanelFragmentActivity;->O(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p2

    .line 6
    invoke-static {p1}, Landroidx/core/app/p;->i(Landroid/content/Context;)Landroidx/core/app/p;

    move-result-object v0

    .line 7
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/hiya/stingray/ui/LauncherActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroidx/core/app/p;->d(Landroid/content/Intent;)Landroidx/core/app/p;

    .line 8
    invoke-virtual {v0, p2}, Landroidx/core/app/p;->c(Landroid/content/Intent;)Landroidx/core/app/p;

    .line 9
    invoke-virtual {v0}, Landroidx/core/app/p;->m()V

    :cond_1
    return v1
.end method


# virtual methods
.method public final d(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/i2;->a:Lcom/hiya/stingray/manager/v3;

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/manager/v3;->c(Landroid/content/Intent;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/i2;->c(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/i2;->b(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
