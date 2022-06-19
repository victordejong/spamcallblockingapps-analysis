.class public Le/h/a/c/q0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;
.implements Le/h/a/c/q0/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/q0/b0$h;,
        Le/h/a/c/q0/b0$i;
    }
.end annotation


# static fields
.field public static k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/clevertap/android/sdk/inapp/CTInAppNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/h/a/c/f;

.field public final b:Le/h/a/c/k;

.field public final c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final d:Landroid/content/Context;

.field public final e:Le/h/a/c/v;

.field public final f:Le/h/a/c/w;

.field public g:Le/h/a/c/q0/b0$h;

.field public h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/h/a/c/g0;

.field public final j:Le/h/a/c/y0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/h/a/c/q0/b0;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/y0/e;Le/h/a/c/v;Le/h/a/c/k;Le/h/a/c/f;Le/h/a/c/w;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/h/a/c/q0/b0;->h:Ljava/util/HashSet;

    .line 3
    iput-object p1, p0, Le/h/a/c/q0/b0;->d:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object p1

    iput-object p1, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    .line 6
    iput-object p3, p0, Le/h/a/c/q0/b0;->j:Le/h/a/c/y0/e;

    .line 7
    iput-object p4, p0, Le/h/a/c/q0/b0;->e:Le/h/a/c/v;

    .line 8
    iput-object p5, p0, Le/h/a/c/q0/b0;->b:Le/h/a/c/k;

    .line 9
    iput-object p6, p0, Le/h/a/c/q0/b0;->a:Le/h/a/c/f;

    .line 10
    iput-object p7, p0, Le/h/a/c/q0/b0;->f:Le/h/a/c/w;

    .line 11
    sget-object p1, Le/h/a/c/q0/b0$h;->c:Le/h/a/c/q0/b0$h;

    iput-object p1, p0, Le/h/a/c/q0/b0;->g:Le/h/a/c/q0/b0$h;

    return-void
.end method

.method public static b(Le/h/a/c/q0/b0;Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "inApp"

    .line 2
    invoke-static {p1}, Ln3/g0/y;->u0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Le/h/a/c/q0/b0;->c()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v2, p0, Le/h/a/c/q0/b0;->g:Le/h/a/c/q0/b0$h;

    sget-object v3, Le/h/a/c/q0/b0$h;->b:Le/h/a/c/q0/b0$h;

    if-ne v2, v3, :cond_1

    .line 5
    iget-object p1, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "InApp Notifications are set to be suspended, not showing the InApp Notification"

    .line 7
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_1
    iget-object v2, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p1, v2, p0}, Le/h/a/c/q0/b0;->d(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/q0/b0;)V

    .line 9
    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v4, "[]"

    .line 10
    invoke-static {p1, v3, v0, v4}, Ln3/g0/y;->B0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v3, 0x1

    if-ge p1, v3, :cond_2

    goto :goto_3

    .line 12
    :cond_2
    iget-object p1, p0, Le/h/a/c/q0/b0;->g:Le/h/a/c/q0/b0$h;

    sget-object v3, Le/h/a/c/q0/b0$h;->a:Le/h/a/c/q0/b0$h;

    const/4 v4, 0x0

    if-eq p1, v3, :cond_3

    .line 13
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Le/h/a/c/q0/b0;->f(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v3, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, "InApp Notifications are set to be discarded, dropping the InApp Notification"

    .line 17
    invoke-virtual {p1, v3, v5}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :goto_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 19
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_5

    if-nez v4, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 22
    invoke-static {v2, v0}, Ln3/g0/y;->W1(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 26
    :catchall_0
    iget-object p1, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object p0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    iget-object p0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :catchall_1
    :goto_3
    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/q0/b0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 2
    sget-object v0, Le/h/a/c/q0/b0;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    new-instance v0, Le/h/a/c/y0/e;

    invoke-direct {v0}, Le/h/a/c/y0/e;-><init>()V

    .line 6
    new-instance v1, Le/h/a/c/q0/b0$g;

    invoke-direct {v1, p0, v2, p1, p2}, Le/h/a/c/q0/b0$g;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/q0/b0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 2
    sget-boolean v0, Le/h/a/c/w;->t:Z

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Le/h/a/c/q0/b0;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    sget-object v0, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    if-eqz v0, :cond_1

    .line 5
    sget-object p0, Le/h/a/c/q0/b0;->l:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 7
    iget-wide v2, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->E:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    return-void

    .line 8
    :cond_2
    sput-object p1, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 9
    iget-object v0, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "Displaying In-App: "

    const-string v3, "config"

    const-string v4, "inApp"

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 11
    :pswitch_0
    new-instance v5, Le/h/a/c/q0/r;

    invoke-direct {v5}, Le/h/a/c/q0/r;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_1
    new-instance v5, Le/h/a/c/q0/u;

    invoke-direct {v5}, Le/h/a/c/q0/u;-><init>()V

    goto :goto_0

    .line 13
    :pswitch_2
    new-instance v5, Le/h/a/c/q0/l;

    invoke-direct {v5}, Le/h/a/c/q0/l;-><init>()V

    goto :goto_0

    .line 14
    :pswitch_3
    new-instance v5, Le/h/a/c/q0/n;

    invoke-direct {v5}, Le/h/a/c/q0/n;-><init>()V

    goto :goto_0

    .line 15
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clevertap/android/sdk/InAppNotificationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 17
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 18
    invoke-virtual {p0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configBundle"

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 20
    :try_start_0
    invoke-static {}, Le/h/a/c/w;->a()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 21
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    .line 22
    iget-object v6, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling InAppActivity for notification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v8, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 26
    invoke-virtual {v1, v6, v7}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v0, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Current activity reference not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    if-eqz v5, :cond_4

    .line 32
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 33
    iget-object v0, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    :try_start_1
    invoke-static {}, Le/h/a/c/w;->a()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Ln3/r/a/l;

    .line 36
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 37
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 38
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 39
    invoke-virtual {p0, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 40
    invoke-virtual {p0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v5, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/high16 p0, 0x10b0000

    const p2, 0x10b0001

    .line 42
    invoke-virtual {v0, p0, p2}, Ln3/r/a/f0;->n(II)Ln3/r/a/f0;

    const p0, 0x1020002

    .line 43
    iget-object p1, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    const/4 p2, 0x1

    .line 44
    invoke-virtual {v0, p0, v5, p1, p2}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v0}, Ln3/r/a/a;->f()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    :catchall_1
    :cond_4
    :goto_1
    return-void

    .line 47
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown InApp Type found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    sput-object v5, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public P7(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/clevertap/android/sdk/inapp/CTInAppNotification;",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0;->a:Le/h/a/c/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Le/h/a/c/f;->j(ZLcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/h/a/c/q0/b0;->b:Le/h/a/c/k;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/b0;->j:Le/h/a/c/y0/e;

    new-instance v1, Le/h/a/c/q0/b0$b;

    invoke-direct {v1, p0, p1}, Le/h/a/c/q0/b0$b;-><init>(Le/h/a/c/q0/b0;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Unable to process inapp notification "

    .line 6
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7
    iget-object p1, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Notification ready: "

    .line 12
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    iget-object v3, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Le/h/a/c/q0/b0;->e(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    return-void
.end method

.method public final c()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0;->h:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/h/a/c/q0/b0;->h:Ljava/util/HashSet;

    .line 3
    :try_start_0
    iget-object v0, p0, Le/h/a/c/q0/b0;->d:Landroid/content/Context;

    invoke-static {v0}, Le/h/a/c/h0;->b(Landroid/content/Context;)Le/h/a/c/h0;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Le/h/a/c/h0;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 8
    iget-object v5, p0, Le/h/a/c/q0/b0;->h:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :catchall_0
    :cond_0
    iget-object v0, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v2, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "In-app notifications will not be shown on "

    .line 11
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Le/h/a/c/q0/b0;->h:Ljava/util/HashSet;

    .line 12
    invoke-virtual {v4}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v0, v2, v3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    iget-object v0, p0, Le/h/a/c/q0/b0;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-static {}, Le/h/a/c/w;->a()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 16
    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public final e(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/h/a/c/q0/b0;->j:Le/h/a/c/y0/e;

    new-instance v1, Le/h/a/c/q0/b0$d;

    invoke-direct {v1, p0, p1}, Le/h/a/c/q0/b0$d;-><init>(Le/h/a/c/q0/b0;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/h/a/c/q0/b0;->e:Le/h/a/c/v;

    .line 4
    iget-object v0, v0, Le/h/a/c/v;->a:Le/h/a/c/d0;

    if-eqz v0, :cond_14

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "istc_inapp"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    goto/16 :goto_b

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Le/h/a/c/d0;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_a

    .line 7
    :cond_2
    iget-boolean v4, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->l:Z

    if-eqz v4, :cond_3

    goto/16 :goto_a

    .line 8
    :cond_3
    invoke-virtual {v0, p1}, Le/h/a/c/d0;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    iget-object v5, v0, Le/h/a/c/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    :try_start_1
    iget v5, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->y:I

    if-ltz v5, :cond_6

    goto :goto_0

    :cond_6
    const/16 v5, 0x3e8

    .line 11
    :goto_0
    iget-object v6, v0, Le/h/a/c/d0;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 12
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v5, :cond_7

    goto :goto_2

    .line 13
    :cond_7
    :try_start_2
    iget-object v4, v0, Le/h/a/c/d0;->d:Ljava/lang/String;

    const-string v5, "imc"

    invoke-virtual {v0, v5, v4}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Le/h/a/c/d0;->e(Ljava/lang/String;I)I

    move-result v4

    .line 14
    iget v5, v0, Le/h/a/c/d0;->g:I

    if-lt v5, v4, :cond_8

    goto :goto_2

    :cond_8
    :goto_1
    move v4, v3

    goto :goto_3

    :catchall_0
    :goto_2
    move v4, v2

    :goto_3
    if-nez v4, :cond_10

    .line 15
    invoke-virtual {v0, p1}, Le/h/a/c/d0;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_9

    goto :goto_4

    .line 16
    :cond_9
    iget v6, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->M:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v6, v5, :cond_a

    goto :goto_4

    .line 17
    :cond_a
    :try_start_3
    invoke-virtual {v0, v4}, Le/h/a/c/d0;->c(Ljava/lang/String;)[I

    move-result-object v4

    .line 18
    aget v4, v4, v2

    .line 19
    iget v6, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->M:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lt v4, v6, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    move v4, v3

    goto :goto_6

    :catch_0
    :goto_5
    move v4, v2

    :goto_6
    if-nez v4, :cond_10

    .line 20
    :try_start_4
    invoke-virtual {v0, p1}, Le/h/a/c/d0;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_7

    .line 21
    :cond_c
    iget-object v6, v0, Le/h/a/c/d0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v3}, Le/h/a/c/d0;->e(Ljava/lang/String;I)I

    move-result v6

    .line 22
    iget-object v7, v0, Le/h/a/c/d0;->d:Ljava/lang/String;

    const-string v8, "istmcd_inapp"

    invoke-virtual {v0, v8, v7}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Le/h/a/c/d0;->e(Ljava/lang/String;I)I

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-lt v6, v7, :cond_d

    goto :goto_8

    .line 23
    :cond_d
    :try_start_5
    iget v6, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->L:I

    if-ne v6, v5, :cond_e

    goto :goto_7

    .line 24
    :cond_e
    invoke-virtual {v0, v4}, Le/h/a/c/d0;->c(Ljava/lang/String;)[I

    move-result-object v0

    .line 25
    aget v0, v0, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lt v0, v6, :cond_f

    goto :goto_8

    :cond_f
    :goto_7
    move v0, v3

    goto :goto_9

    :catchall_1
    :goto_8
    move v0, v2

    :goto_9
    if-nez v0, :cond_10

    :goto_a
    move v0, v2

    goto :goto_c

    :catchall_2
    :cond_10
    :goto_b
    move v0, v3

    :goto_c
    if-nez v0, :cond_11

    .line 26
    iget-object v0, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "InApp has been rejected by FC, not showing "

    .line 28
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    iget-object p1, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Le/h/a/c/q0/b0;->h()V

    return-void

    .line 33
    :cond_11
    iget-object v0, p0, Le/h/a/c/q0/b0;->e:Le/h/a/c/v;

    .line 34
    iget-object v0, v0, Le/h/a/c/v;->a:Le/h/a/c/d0;

    .line 35
    iget-object v4, p0, Le/h/a/c/q0/b0;->d:Landroid/content/Context;

    .line 36
    invoke-virtual {v0, p1}, Le/h/a/c/d0;->d(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_d

    .line 37
    :cond_12
    iget v6, v0, Le/h/a/c/d0;->g:I

    add-int/2addr v6, v2

    iput v6, v0, Le/h/a/c/d0;->g:I

    .line 38
    iget-object v6, v0, Le/h/a/c/d0;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_13

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 40
    :cond_13
    iget-object v7, v0, Le/h/a/c/d0;->f:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v0, v5}, Le/h/a/c/d0;->c(Ljava/lang/String;)[I

    move-result-object v6

    .line 42
    aget v7, v6, v3

    add-int/2addr v7, v2

    aput v7, v6, v3

    .line 43
    aget v7, v6, v2

    add-int/2addr v7, v2

    aput v7, v6, v2

    .line 44
    iget-object v7, v0, Le/h/a/c/d0;->c:Landroid/content/Context;

    iget-object v8, v0, Le/h/a/c/d0;->d:Ljava/lang/String;

    const-string v9, "counts_per_inapp"

    .line 45
    invoke-virtual {v0, v9, v8}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-static {v7, v8}, Ln3/g0/y;->v0(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 47
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 48
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, v6, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v6, v2

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    :try_start_6
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 50
    :catchall_3
    iget-object v5, v0, Le/h/a/c/d0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Le/h/a/c/d0;->e(Ljava/lang/String;I)I

    move-result v3

    .line 51
    iget-object v5, v0, Le/h/a/c/d0;->d:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v1, v5}, Le/h/a/c/d0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/h/a/c/d0;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v3, v2

    invoke-static {v4, v0, v3}, Ln3/g0/y;->E1(Landroid/content/Context;Ljava/lang/String;I)V

    .line 53
    :goto_d
    iget-object v0, p0, Le/h/a/c/q0/b0;->b:Le/h/a/c/k;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Le/h/a/c/q0/b0;->d:Landroid/content/Context;

    iget-object v1, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0, p1, v1}, Le/h/a/c/q0/b0;->g(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    return-void

    .line 55
    :cond_14
    iget-object v0, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 56
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "getCoreState().getInAppFCManager() is NULL, not showing "

    .line 57
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 58
    iget-object p1, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v1, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Preparing In-App for display: "

    .line 3
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    const-string v1, "TAG_FEATURE_IN_APPS"

    invoke-virtual {v0, v1}, Le/h/a/c/y0/b;->d(Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object v0

    .line 5
    new-instance v1, Le/h/a/c/q0/b0$e;

    invoke-direct {v1, p0, p1}, Le/h/a/c/q0/b0$e;-><init>(Le/h/a/c/q0/b0;Lorg/json/JSONObject;)V

    .line 6
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v2, Le/h/a/c/y0/j;

    const-string v3, "InappController#prepareNotificationForDisplay"

    invoke-direct {v2, v0, v3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 8
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    const-string v1, "TAG_FEATURE_IN_APPS"

    invoke-virtual {v0, v1}, Le/h/a/c/y0/b;->d(Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object v0

    .line 4
    new-instance v1, Le/h/a/c/q0/b0$f;

    invoke-direct {v1, p0}, Le/h/a/c/q0/b0$f;-><init>(Le/h/a/c/q0/b0;)V

    .line 5
    iget-object v2, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v3, Le/h/a/c/y0/j;

    const-string v4, "InAppController#showInAppNotificationIfAny"

    invoke-direct {v3, v0, v4, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v1, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    const-string v1, "TAG_FEATURE_IN_APPS"

    invoke-virtual {v0, v1}, Le/h/a/c/y0/b;->d(Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object v0

    .line 4
    new-instance v1, Le/h/a/c/q0/b0$c;

    invoke-direct {v1, p0, p1}, Le/h/a/c/q0/b0$c;-><init>(Le/h/a/c/q0/b0;Landroid/content/Context;)V

    .line 5
    iget-object p1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 6
    new-instance v2, Le/h/a/c/y0/j;

    const-string v3, "InappController#showNotificationIfAvailable"

    invoke-direct {v2, v0, v3, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 7
    invoke-interface {p1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public m8(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object p3, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    .line 2
    iget-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->c:Ljava/lang/String;

    const-string v2, "image/gif"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 6
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b:Ljava/lang/String;

    .line 7
    sget v1, Le/h/a/c/z0/c;->a:I

    .line 8
    const-class v1, Le/h/a/c/z0/c;

    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v5, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;

    if-nez v5, :cond_1

    .line 10
    monitor-exit v1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v5, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    sget-object v0, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    .line 15
    :try_start_3
    sput-object v2, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;

    .line 16
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 19
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1

    :catchall_2
    move-exception p1

    .line 20
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    .line 21
    :cond_4
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b:Ljava/lang/String;

    .line 22
    sget v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->a:I

    .line 23
    const-class v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;

    monitor-enter v1

    .line 24
    :try_start_8
    sget-object v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->c:Landroid/util/LruCache;

    if-nez v5, :cond_5

    .line 25
    monitor-exit v1

    goto :goto_0

    .line 26
    :cond_5
    invoke-virtual {v5, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-enter v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 28
    :try_start_9
    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 29
    :try_start_a
    sget-object v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->c:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-gtz v0, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_7

    .line 30
    :try_start_b
    sput-object v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->c:Landroid/util/LruCache;

    .line 31
    :cond_7
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 32
    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_0

    :catchall_3
    move-exception p1

    .line 33
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p1

    :catchall_4
    move-exception p1

    .line 34
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw p1

    :catchall_5
    move-exception p1

    .line 35
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw p1

    .line 36
    :cond_8
    iget-object p3, p0, Le/h/a/c/q0/b0;->e:Le/h/a/c/v;

    .line 37
    iget-object p3, p3, Le/h/a/c/v;->a:Le/h/a/c/d0;

    if-eqz p3, :cond_a

    .line 38
    iget-object v0, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->q:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 39
    iget-object p3, p3, Le/h/a/c/d0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_9
    iget-object p3, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 41
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "InApp Dismissed: "

    .line 42
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    iget-object v2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_a
    iget-object p3, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 46
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "Not calling InApp Dismissed: "

    .line 47
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 48
    iget-object v2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " because InAppFCManager is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_3
    :try_start_10
    iget-object p3, p0, Le/h/a/c/q0/b0;->b:Le/h/a/c/k;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_4

    .line 51
    :catchall_6
    iget-object p3, p0, Le/h/a/c/q0/b0;->i:Le/h/a/c/g0;

    iget-object v0, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 52
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 53
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_4
    iget-object p3, p0, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p3}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p3

    const-string v0, "TAG_FEATURE_IN_APPS"

    invoke-virtual {p3, v0}, Le/h/a/c/y0/b;->d(Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object p3

    const-string v0, "InappController#inAppNotificationDidDismiss"

    .line 55
    new-instance v1, Le/h/a/c/q0/b0$a;

    invoke-direct {v1, p0, p1, p2}, Le/h/a/c/q0/b0$a;-><init>(Le/h/a/c/q0/b0;Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V

    .line 56
    iget-object p1, p3, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 57
    new-instance p2, Le/h/a/c/y0/j;

    invoke-direct {p2, p3, v0, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 58
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public y9(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0;->a:Le/h/a/c/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Le/h/a/c/f;->j(ZLcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V

    return-void
.end method
