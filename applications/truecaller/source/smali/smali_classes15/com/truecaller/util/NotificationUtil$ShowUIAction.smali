.class public Lcom/truecaller/util/NotificationUtil$ShowUIAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/x0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

.field public final c:Le/a/j2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/notifications/internal/InternalTruecallerNotification;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    const-string v0, "v"

    .line 3
    invoke-virtual {p2, v0}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;->getUiType(Ljava/lang/String;)Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->b:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->c:Le/a/j2;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->b:Lcom/truecaller/util/NotificationUtil$ShowUIAction$UiType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "search"

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/truecaller/ui/TruecallerInit;->Ya(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_LANGUAGE:Lcom/truecaller/ui/settings/SettingsCategory;

    const/4 v2, 0x1

    const-string v3, "show_lang_selector"

    invoke-static {v0, v1, v2, v3}, Lcom/truecaller/ui/settings/SettingsActivity;->va(Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_ABOUT:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {v0, v1}, Lcom/truecaller/ui/settings/SettingsActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5
    :pswitch_3
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_PRIVACY:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {v0, v1}, Lcom/truecaller/ui/settings/SettingsActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    const-class v3, Lcom/truecaller/ui/settings/callerid/CallerIdSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_GENERAL:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {v0, v1}, Lcom/truecaller/ui/settings/SettingsActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    sget-object v1, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_MAIN:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {v0, v1}, Lcom/truecaller/ui/settings/SettingsActivity;->ua(Landroid/content/Context;Lcom/truecaller/ui/settings/SettingsCategory;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :pswitch_7
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->c:Le/a/j2;

    invoke-interface {v0}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    sget-object v2, Lcom/truecaller/premium/PremiumLaunchContext;->NOTIFICATION:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, v1, v2}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    goto :goto_0

    .line 10
    :pswitch_8
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    const-class v3, Lcom/truecaller/filters/blockedevents/BlockedEventsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 11
    :pswitch_9
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    .line 12
    invoke-static {v0}, Le/a/i4/y/d;->cB(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 13
    :pswitch_a
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/truecaller/ui/TruecallerInit;->Ya(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :pswitch_b
    iget-object v0, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->c:Le/a/j2;

    invoke-interface {v1}, Le/a/j2;->X2()Le/a/m4/a;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/util/NotificationUtil$ShowUIAction;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Le/a/m4/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
