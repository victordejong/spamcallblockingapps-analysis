.class public final Ld0;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ld0;->a:I

    iput-object p2, p0, Ld0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Ld0;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    throw v1

    .line 1
    :pswitch_0
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_BACKUP:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_PRIVACY:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 3
    :pswitch_2
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_BLOCK:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 4
    :pswitch_3
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v0, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_MESSAGING:Lcom/truecaller/ui/settings/SettingsCategory;

    iget-object v2, p0, Ld0;->b:Ljava/lang/Object;

    check-cast v2, Le/a/e/b/m/a;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v1, "analytics_context"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {p1, v0, v1}, Le/a/e/b/m/c;->Gc(Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;)V

    return-void

    .line 5
    :pswitch_4
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_APPEARANCE:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 6
    :pswitch_5
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_RINGTONE:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 7
    :pswitch_6
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_CALLERID:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 8
    :pswitch_7
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_LANGUAGE:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 9
    :pswitch_8
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_GENERAL:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 10
    :pswitch_9
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_DATA_STORAGE:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    .line 11
    :pswitch_a
    iget-object p1, p0, Ld0;->b:Ljava/lang/Object;

    check-cast p1, Le/a/e/b/m/a;

    invoke-virtual {p1}, Le/a/e/b/m/a;->OA()Le/a/e/b/m/c;

    move-result-object p1

    sget-object v2, Lcom/truecaller/ui/settings/SettingsCategory;->SETTINGS_ABOUT:Lcom/truecaller/ui/settings/SettingsCategory;

    invoke-static {p1, v2, v1, v0, v1}, Le/a/e/a2;->P(Le/a/e/b/m/c;Lcom/truecaller/ui/settings/SettingsCategory;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

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
