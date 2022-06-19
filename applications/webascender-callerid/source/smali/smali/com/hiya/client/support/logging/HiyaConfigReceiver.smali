.class public Lcom/hiya/client/support/logging/HiyaConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    .line 2
    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {v0}, Lg/g/b/e/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "168941b0ef859739a2571aca432677b7c540f0959d54ac4e2233ecc98fc25f0c"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string p2, "enable_staging_env"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    sget-object p2, Lcom/hiya/client/support/logging/f;->STG:Lcom/hiya/client/support/logging/f;

    invoke-virtual {p1, p2}, Lcom/hiya/client/support/logging/a;->d(Lcom/hiya/client/support/logging/f;)V

    goto :goto_3

    :sswitch_1
    const-string p2, "disable_debug_logging"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {p1, v3}, Lcom/hiya/client/support/logging/a;->b(Z)V

    goto :goto_3

    :sswitch_2
    const-string p2, "enable_production_env"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    sget-object p2, Lcom/hiya/client/support/logging/f;->PROD:Lcom/hiya/client/support/logging/f;

    invoke-virtual {p1, p2}, Lcom/hiya/client/support/logging/a;->d(Lcom/hiya/client/support/logging/f;)V

    goto :goto_3

    :sswitch_3
    const-string p2, "enable_debug_logging"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/hiya/client/support/logging/a;->c:Lcom/hiya/client/support/logging/a;

    invoke-virtual {p1, v2}, Lcom/hiya/client/support/logging/a;->b(Z)V

    :cond_5
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x51596449 -> :sswitch_3
        0x16cdd6a3 -> :sswitch_2
        0x3d41c45c -> :sswitch_1
        0x5484922d -> :sswitch_0
    .end sparse-switch
.end method
