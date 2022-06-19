.class public final Le/h/a/b/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0007J<\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0007J \u0010\u0019\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0004H\u0007J*\u0010\u001b\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/content/PendingIntentFactory;",
        "",
        "()V",
        "launchIntent",
        "Landroid/content/Intent;",
        "getLaunchIntent",
        "()Landroid/content/Intent;",
        "setLaunchIntent",
        "(Landroid/content/Intent;)V",
        "getCtaLaunchPendingIntent",
        "Landroid/app/PendingIntent;",
        "context",
        "Landroid/content/Context;",
        "extras",
        "Landroid/os/Bundle;",
        "dl",
        "",
        "notificationId",
        "",
        "getPendingIntent",
        "isLauncher",
        "",
        "identifier",
        "renderer",
        "Lcom/clevertap/android/pushtemplates/TemplateRenderer;",
        "setDismissIntent",
        "intent",
        "setPendingIntent",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Landroid/content/Intent;


# direct methods
.method public static final a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dl"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "com.clevertap.android.sdk.pushnotification.CTNotificationIntentService"

    .line 1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {p0, v1}, Le/h/a/c/j0;->l(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v1

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-ge v2, v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const-string v2, "autoCancel"

    .line 4
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "notificationId"

    .line 5
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    new-instance p3, Landroid/content/Intent;

    const-string v1, "com.clevertap.PUSH_EVENT"

    invoke-direct {p3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object p3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 7
    invoke-static {p3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    sget-object p1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    sget-object p1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    sget-object p1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string p2, "ct_type"

    const-string p3, "com.clevertap.ACTION_BUTTON_CLICK"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0xc000000

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    long-to-int p2, p2

    .line 12
    sget-object p3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {p3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 13
    invoke-static {p0, p2, p3, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "{\n            extras.put\u2026t\n            )\n        }"

    .line 14
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p3, "wzrk_dl"

    .line 15
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {p1, p0}, Ln3/g0/y;->V(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "{\n            extras.put\u2026xtras, context)\n        }"

    .line 17
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static final b(Landroid/content/Context;ILandroid/os/Bundle;ZILe/h/a/b/d;)Landroid/app/PendingIntent;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v5, "context"

    invoke-static {v0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "extras"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1
    sput-object v5, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    const/16 v6, 0x1f

    if-eqz p3, :cond_0

    if-ge v4, v6, :cond_0

    .line 2
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/clevertap/android/pushtemplates/PTPushNotificationReceiver;

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v7, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 3
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    invoke-direct {v7, v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v7, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    :cond_1
    :goto_0
    const/high16 v7, 0x4000000

    const-string v8, "right_swipe"

    const/4 v9, 0x2

    const-string v10, "clickedStar"

    const-string v11, "config"

    const/4 v12, 0x0

    const-string v13, "wzrk_dl"

    const-string v14, "notificationId"

    const/4 v15, 0x1

    packed-switch p4, :pswitch_data_0

    const-string v4, "pt_current_position"

    const-string v6, "pt_buy_now_dl"

    packed-switch p4, :pswitch_data_1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid pendingIntentType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :pswitch_0
    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_1
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 8
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v4, "click5"

    invoke-virtual {v2, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v4, 0x5

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_2

    goto :goto_1

    .line 12
    :cond_2
    iget-object v5, v3, Le/h/a/b/d;->S:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    :goto_1
    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 15
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 16
    invoke-static {v0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 17
    :pswitch_2
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 18
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v4, "click4"

    invoke-virtual {v2, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 19
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v4, 0x4

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_3

    goto :goto_2

    .line 22
    :cond_3
    iget-object v5, v3, Le/h/a/b/d;->S:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 23
    :goto_2
    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 25
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 26
    invoke-static {v0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 27
    :pswitch_3
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 28
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v4, "click3"

    invoke-virtual {v2, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const/4 v4, 0x3

    invoke-virtual {v2, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_4

    goto :goto_3

    .line 32
    :cond_4
    iget-object v5, v3, Le/h/a/b/d;->S:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 33
    :goto_3
    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 35
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 36
    invoke-static {v0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 37
    :pswitch_4
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 38
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v4, "click2"

    invoke-virtual {v2, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_5

    goto :goto_4

    .line 42
    :cond_5
    iget-object v5, v3, Le/h/a/b/d;->S:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 43
    :goto_4
    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 45
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 46
    invoke-static {v0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 47
    :pswitch_5
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 48
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v4, "click1"

    invoke-virtual {v2, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 49
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_6

    goto :goto_5

    .line 52
    :cond_6
    iget-object v5, v3, Le/h/a/b/d;->S:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 53
    :goto_5
    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 55
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 56
    invoke-static {v0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :pswitch_6
    if-nez v3, :cond_7

    goto :goto_6

    .line 57
    :cond_7
    iget-object v5, v3, Le/h/a/b/d;->s:Ljava/lang/String;

    .line 58
    :goto_6
    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ge v4, v6, :cond_8

    .line 59
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 60
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_7

    .line 61
    :cond_8
    invoke-static {v2, v0}, Ln3/g0/y;->V(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_7
    return-object v0

    .line 62
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-static {v0, v2, v1}, Le/h/a/b/i/g;->c(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 64
    :pswitch_8
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 68
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 69
    :pswitch_9
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 72
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 73
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :pswitch_a
    if-nez v3, :cond_9

    move-object v4, v5

    goto :goto_8

    .line 74
    :cond_9
    iget-object v4, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 75
    :goto_8
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    if-nez v3, :cond_a

    move-object v4, v5

    goto :goto_9

    .line 76
    :cond_a
    iget-object v4, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 77
    :goto_9
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_b
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_c

    move-object v6, v5

    goto :goto_a

    .line 79
    :cond_c
    iget-object v6, v3, Le/h/a/b/d;->y:Ljava/lang/String;

    :goto_a
    const-string v7, "pt_input_feedback"

    .line 80
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_d

    move-object v6, v5

    goto :goto_b

    .line 82
    :cond_d
    iget-object v6, v3, Le/h/a/b/d;->z:Ljava/lang/String;

    :goto_b
    const-string v7, "pt_input_auto_open"

    .line 83
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_e

    move-object v6, v5

    goto :goto_c

    .line 85
    :cond_e
    iget-object v6, v3, Le/h/a/b/d;->S:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 86
    :goto_c
    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-nez v3, :cond_f

    move-object v3, v5

    goto :goto_d

    .line 87
    :cond_f
    iget-object v3, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    :goto_d
    if-eqz v3, :cond_10

    .line 88
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 89
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_e

    .line 90
    :cond_10
    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_e
    return-object v0

    .line 92
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/clevertap/android/pushtemplates/PushTemplateReceiver;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-static {v0, v2, v1}, Le/h/a/b/i/g;->c(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 94
    :pswitch_c
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v8, "img1"

    invoke-virtual {v4, v8, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_11

    move-object v4, v5

    goto :goto_f

    .line 97
    :cond_11
    iget-object v4, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 98
    :goto_f
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v4, "buynow"

    invoke-virtual {v1, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 100
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_12

    goto :goto_10

    .line 101
    :cond_12
    iget-object v5, v3, Le/h/a/b/d;->S:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 102
    :goto_10
    invoke-virtual {v1, v11, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 103
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    .line 105
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 106
    invoke-static {v0, v1, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :pswitch_d
    if-nez v3, :cond_13

    goto :goto_11

    .line 107
    :cond_13
    iget-object v5, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 108
    :goto_11
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 111
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :pswitch_e
    if-nez v3, :cond_14

    goto :goto_12

    .line 112
    :cond_14
    iget-object v5, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 113
    :goto_12
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    invoke-virtual {v2, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 116
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :pswitch_f
    if-nez v3, :cond_15

    goto :goto_13

    .line 117
    :cond_15
    iget-object v5, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 118
    :goto_13
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 121
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 122
    :pswitch_10
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 123
    sget-object v10, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v10}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_16

    goto :goto_14

    .line 127
    :cond_16
    iget-object v5, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 128
    :goto_14
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {v0, v8, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 130
    :pswitch_11
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 131
    sget-object v9, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 132
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_17

    goto :goto_15

    .line 135
    :cond_17
    iget-object v5, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 136
    :goto_15
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {v0, v8, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 138
    :pswitch_12
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    invoke-virtual {v8}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 139
    sget-object v9, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v9}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    sget-object v2, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    if-nez v3, :cond_18

    goto :goto_16

    .line 143
    :cond_18
    iget-object v5, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 144
    :goto_16
    invoke-static {v5}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {v0, v8, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    :pswitch_13
    if-nez v3, :cond_19

    move-object v4, v5

    goto :goto_17

    .line 146
    :cond_19
    iget-object v4, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    :goto_17
    if-eqz v4, :cond_1a

    iget-object v4, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 147
    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a

    .line 148
    iget-object v3, v3, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 149
    invoke-static {v3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    .line 151
    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_18

    .line 152
    :cond_1a
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 153
    invoke-virtual {v2, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1b
    sget-object v3, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Le/h/a/b/i/g;->d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_18
    return-object v0

    .line 155
    :pswitch_14
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 156
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v5, "close"

    invoke-virtual {v4, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    sget-object v4, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v14, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 159
    sget-object v1, Le/h/a/b/i/g;->a:Landroid/content/Intent;

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-static {v0, v3, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
        :pswitch_13
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

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method

.method public static final c(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "pt_dismiss_intent"

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    const/high16 p1, 0x12000000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    .line 5
    invoke-static {p0, v0, p2, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getBroadcast(\n          \u2026chPendingIntent\n        )"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final d(Landroid/content/Context;ILandroid/os/Bundle;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wzrk_dl"

    .line 1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "notificationId"

    .line 2
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    const-string v0, "default_dl"

    .line 3
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    if-nez p3, :cond_1

    .line 4
    invoke-static {p2, p0}, Ln3/g0/y;->V(Landroid/os/Bundle;Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getActivityIntent(extras, context)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "wzrk_acts"

    .line 6
    invoke-virtual {p3, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string p1, "wzrk_from"

    const-string p2, "CTPushNotificationReceiver"

    .line 7
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x34000000

    .line 8
    invoke-virtual {p3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_2

    const/high16 p1, 0xa000000

    .line 10
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p2, v0

    .line 11
    invoke-static {p0, p2, p3, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getBroadcast(\n          \u2026ndingIntent\n            )"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
