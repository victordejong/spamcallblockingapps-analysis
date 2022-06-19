.class public final Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "<init>",
        "()V",
        "truecaller_googlePlayRelease"
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
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v1, 0x14000000

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "com.truecaller.request_set_as_call_screening_app"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0a0c63

    .line 4
    invoke-static {p0}, Lcom/truecaller/tcpermissions/RoleRequesterActivity;->pa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :sswitch_1
    const-string v0, "com.truecaller.request_set_as_default_phone_app"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0a0c64

    .line 7
    invoke-static {p0}, Lcom/truecaller/tcpermissions/RoleRequesterActivity;->qa(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 8
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :sswitch_2
    const-string v0, "com.truecaller.never_ask_again_ignore_battery_optimizations"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    new-instance p1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;

    invoke-direct {p1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f0a0c61

    .line 12
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :sswitch_3
    const-string v0, "com.truecaller.request_ignore_battery_optimizations"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0a0c5b

    .line 14
    sget-object v0, Lcom/truecaller/notifications/support/NotificationTrampolineActivity;->j:Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;

    const-string v2, "com.truecaller.intent.action.BATTERY_OPTIMIZATIONS"

    invoke-virtual {v0, p0, v2}, Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 15
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :sswitch_4
    const-string v0, "com.truecaller.request_allow_draw_over_other_apps"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p1, 0x7f0a0c59

    .line 17
    sget-object v0, Lcom/truecaller/notifications/support/NotificationTrampolineActivity;->j:Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;

    const-string v2, "com.truecaller.intent.action.ALLOW_DRAW_OVER_APPS"

    invoke-virtual {v0, p0, v2}, Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 18
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_0
    const-string p1, "when (action) {\n        \u2026ction\")\n                }"

    .line 19
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_0
    :goto_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Unknown action "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/calling/notifications/CallingNotificationsBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 23
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "Intent(context, CallingN\u2026UTABLE)\n                }"

    .line 24
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d73f1c1 -> :sswitch_4
        -0x5e04bd41 -> :sswitch_3
        -0x432da3d9 -> :sswitch_2
        -0x2af7e846 -> :sswitch_1
        -0xb3cd931 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.TrueApp"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/TrueApp;

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    const-string v1, "(context.applicationCont\u2026 as TrueApp).objectsGraph"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7f0a0e56

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p1, "com.truecaller.request_set_as_call_screening_app"

    .line 3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object p1

    invoke-interface {p1}, Le/a/h5/m;->e()V

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "com.truecaller.request_set_as_default_phone_app"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0}, Le/a/j2;->x5()Le/a/h5/m;

    move-result-object p1

    invoke-interface {p1}, Le/a/h5/m;->c()V

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "com.truecaller.never_ask_again_ignore_battery_optimizations"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v0}, Le/a/j2;->G5()Ln3/k/a/x;

    move-result-object p1

    invoke-virtual {p1, v3}, Ln3/k/a/x;->b(I)V

    .line 7
    invoke-interface {v0}, Le/a/j2;->x4()Le/a/z4/d;

    move-result-object p1

    const-string p2, "never_ask_again_disable_ignore_battery_optimizations"

    invoke-interface {p1, p2, v4}, Le/a/z4/d;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :sswitch_3
    const-string v2, "com.truecaller.request_ignore_battery_optimizations"

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0}, Le/a/j2;->G5()Ln3/k/a/x;

    move-result-object p2

    invoke-virtual {p2, v3}, Ln3/k/a/x;->b(I)V

    const-string p2, "$this$requestDisableBatteryOptimizations"

    .line 10
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-static {p1, v4}, Le/a/p5/s0/g;->b1(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :sswitch_4
    const-string v0, "com.truecaller.request_allow_draw_over_other_apps"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    :try_start_1
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 16
    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    const p2, 0x7f120457

    .line 17
    invoke-static {p1, p2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :catch_1
    :goto_1
    return-void

    .line 18
    :cond_1
    :goto_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unknown action "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " in onReceive"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d73f1c1 -> :sswitch_4
        -0x5e04bd41 -> :sswitch_3
        -0x432da3d9 -> :sswitch_2
        -0x2af7e846 -> :sswitch_1
        -0xb3cd931 -> :sswitch_0
    .end sparse-switch
.end method
