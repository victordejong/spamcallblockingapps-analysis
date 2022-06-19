.class public final Le/a/l/p2/e2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/z0;


# instance fields
.field public final a:Le/a/l/a/b0;

.field public final b:Le/a/l/a/y;


# direct methods
.method public constructor <init>(Le/a/l/a/b0;Le/a/l/a/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumShortcutHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e2/f;->a:Le/a/l/a/b0;

    iput-object p2, p0, Le/a/l/p2/e2/f;->b:Le/a/l/a/y;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/y0;)V
    .locals 11

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "update"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/l/p2/y0;->e:Le/a/l/p2/x;

    .line 2
    iget-boolean p1, p1, Le/a/l/p2/x;->j:Z

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v2, "shortcut-premium"

    const/16 v3, 0x19

    if-nez p1, :cond_5

    .line 3
    iget-object p1, p0, Le/a/l/p2/e2/f;->b:Le/a/l/a/y;

    invoke-virtual {p1}, Le/a/l/a/y;->b()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/l/p2/e2/f;->a:Le/a/l/a/b0;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v3, :cond_6

    .line 6
    invoke-virtual {p1}, Le/a/l/a/b0;->a()Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    const-string v3, "shortcutManager().dynamicShortcuts"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    const-string v5, "it"

    .line 9
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    xor-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Le/a/l/a/b0;->a()Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Le/a/l/a/b0;->a()Landroid/content/pm/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ShortcutManager;->getManifestShortcuts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Le/a/l/a/b0;->a()Landroid/content/pm/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v0

    if-ge v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    :goto_2
    if-eqz v1, :cond_6

    .line 11
    iget-object v0, p1, Le/a/l/a/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 12
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p1, Le/a/l/a/b0;->a:Landroid/content/Context;

    const-class v4, Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 13
    iget-object v4, p1, Le/a/l/a/b0;->b:Le/a/l/a2;

    iget-object v5, p1, Le/a/l/a/b0;->a:Landroid/content/Context;

    sget-object v6, Lcom/truecaller/premium/PremiumLaunchContext;->SHORTCUT:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Le/a/c/p/a;->J(Le/a/l/a2;Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;ILjava/lang/Object;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Le/a/l/a/b0;->a()Landroid/content/pm/ShortcutManager;

    move-result-object v1

    .line 15
    new-instance v3, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v4, p1, Le/a/l/a/b0;->a:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 16
    iget-object v2, p1, Le/a/l/a/b0;->a:Landroid/content/Context;

    const v4, 0x7f12050b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 17
    iget-object p1, p1, Le/a/l/a/b0;->a:Landroid/content/Context;

    const v3, 0x7f0805ba

    invoke-static {p1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    const-string v2, "taskStackBuilder"

    .line 18
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/TaskStackBuilder;->getIntents()[Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setIntents([Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 20
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    goto :goto_4

    .line 22
    :cond_5
    :goto_3
    iget-object p1, p0, Le/a/l/p2/e2/f;->a:Le/a/l/a/b0;

    .line 23
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v3, :cond_6

    .line 24
    invoke-virtual {p1}, Le/a/l/a/b0;->a()Landroid/content/pm/ShortcutManager;

    move-result-object p1

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    :cond_6
    :goto_4
    return-void
.end method
