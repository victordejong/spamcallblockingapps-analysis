.class public final Lcom/clevertap/android/sdk/InAppNotificationActivity;
.super Ln3/r/a/l;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/q0/c0;


# static fields
.field public static d:Z = false


# instance fields
.field public a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/h/a/c/q0/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/r/a/l;-><init>()V

    return-void
.end method


# virtual methods
.method public P7(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;Ljava/util/HashMap;)V
    .locals 0
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
    invoke-virtual {p0, p2, p3}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->qa(Landroid/os/Bundle;Ljava/util/HashMap;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public m8(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ra(Landroid/os/Bundle;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->finish()V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ra(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "inApp"

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 5
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    iput-object v4, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    const-string v4, "configBundle"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "config"

    if-eqz v3, :cond_1

    .line 7
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object v3, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {p0, v3}, Le/h/a/c/p;->k(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/p;

    move-result-object v3

    .line 9
    iget-object v3, v3, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 10
    iget-object v3, v3, Le/h/a/c/x;->h:Le/h/a/c/q0/b0;

    .line 11
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->c:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    iget-object v3, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    if-nez v3, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->finish()V

    return-void

    .line 14
    :cond_2
    iget-boolean v5, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->t:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 15
    iget-boolean v7, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->s:Z

    if-nez v7, :cond_3

    if-ne v1, v2, :cond_3

    .line 16
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->finish()V

    .line 17
    invoke-virtual {p0, v6}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ra(Landroid/os/Bundle;)V

    return-void

    :cond_3
    const/4 v2, 0x1

    if-nez v5, :cond_4

    .line 18
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->s:Z

    if-eqz v3, :cond_4

    if-ne v1, v2, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->finish()V

    .line 20
    invoke-virtual {p0, v6}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ra(Landroid/os/Bundle;)V

    return-void

    :cond_4
    if-nez p1, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->pa()Le/h/a/c/q0/b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    iget-object v3, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    iget-object v0, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 27
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/high16 v0, 0x10b0000

    const v3, 0x10b0001

    .line 28
    invoke-virtual {v1, v0, v3}, Ln3/r/a/f0;->n(II)Ln3/r/a/f0;

    const v0, 0x1020002

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 30
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v5, ":CT_INAPP_CONTENT_FRAGMENT"

    .line 31
    invoke-static {v3, v4, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v1, v0, p1, v3, v2}, Ln3/r/a/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 33
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    goto :goto_0

    .line 34
    :cond_5
    sget-boolean p1, Lcom/clevertap/android/sdk/InAppNotificationActivity;->d:Z

    if-eqz p1, :cond_6

    .line 35
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->pa()Le/h/a/c/q0/b;

    :cond_6
    :goto_0
    return-void

    .line 36
    :cond_7
    :try_start_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :catchall_0
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->finish()V

    return-void
.end method

.method public final pa()Le/h/a/c/q0/b;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 4
    :pswitch_0
    iget-object v1, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InAppNotificationActivity: Unhandled InApp Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_1

    .line 5
    :pswitch_1
    new-instance v2, Le/h/a/c/q0/t;

    invoke-direct {v2}, Le/h/a/c/q0/t;-><init>()V

    goto/16 :goto_2

    .line 6
    :pswitch_2
    new-instance v2, Le/h/a/c/q0/x;

    invoke-direct {v2}, Le/h/a/c/q0/x;-><init>()V

    goto/16 :goto_2

    .line 7
    :pswitch_3
    new-instance v2, Le/h/a/c/q0/q;

    invoke-direct {v2}, Le/h/a/c/q0/q;-><init>()V

    goto/16 :goto_2

    .line 8
    :pswitch_4
    iget-object v0, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 9
    iget-object v0, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v3, 0x103023a

    invoke-direct {v0, p0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 13
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 15
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 17
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 19
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->h:Ljava/lang/String;

    .line 20
    new-instance v4, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;

    invoke-direct {v4, p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;-><init>(Lcom/clevertap/android/sdk/InAppNotificationActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 22
    iget-object v3, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 23
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, -0x2

    .line 25
    iget-object v5, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 26
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 28
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->h:Ljava/lang/String;

    .line 29
    new-instance v6, Lcom/clevertap/android/sdk/InAppNotificationActivity$b;

    invoke-direct {v6, p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity$b;-><init>(Lcom/clevertap/android/sdk/InAppNotificationActivity;)V

    .line 30
    invoke-virtual {v0, v3, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 31
    :cond_0
    iget-object v3, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 32
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_2

    const/4 v3, -0x3

    .line 34
    iget-object v5, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 35
    iget-object v5, v5, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 37
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->h:Ljava/lang/String;

    .line 38
    new-instance v5, Lcom/clevertap/android/sdk/InAppNotificationActivity$c;

    invoke-direct {v5, p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity$c;-><init>(Lcom/clevertap/android/sdk/InAppNotificationActivity;)V

    .line 39
    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 40
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 41
    sput-boolean v1, Lcom/clevertap/android/sdk/InAppNotificationActivity;->d:Z

    .line 42
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ua()Le/h/a/c/q0/c0;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 43
    iget-object v1, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-interface {v0, v1, v2}, Le/h/a/c/q0/c0;->y9(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V

    goto :goto_2

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 46
    :pswitch_5
    new-instance v2, Le/h/a/c/q0/s;

    invoke-direct {v2}, Le/h/a/c/q0/s;-><init>()V

    goto :goto_2

    .line 47
    :pswitch_6
    new-instance v2, Le/h/a/c/q0/v;

    invoke-direct {v2}, Le/h/a/c/q0/v;-><init>()V

    goto :goto_2

    .line 48
    :pswitch_7
    new-instance v2, Le/h/a/c/q0/p;

    invoke-direct {v2}, Le/h/a/c/q0/p;-><init>()V

    goto :goto_2

    .line 49
    :pswitch_8
    new-instance v2, Le/h/a/c/q0/m;

    invoke-direct {v2}, Le/h/a/c/q0/m;-><init>()V

    goto :goto_2

    .line 50
    :pswitch_9
    new-instance v2, Le/h/a/c/q0/o;

    invoke-direct {v2}, Le/h/a/c/q0/o;-><init>()V

    goto :goto_2

    .line 51
    :pswitch_a
    new-instance v2, Le/h/a/c/q0/k;

    invoke-direct {v2}, Le/h/a/c/q0/k;-><init>()V

    goto :goto_2

    .line 52
    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public qa(Landroid/os/Bundle;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ua()Le/h/a/c/q0/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-interface {v0, v1, p1, p2}, Le/h/a/c/q0/c0;->P7(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public ra(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->d:Z

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->finish()V

    .line 4
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ua()Le/h/a/c/q0/c0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-interface {v0, v1, v2, p1}, Le/h/a/c/q0/c0;->m8(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public sa(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ua()Le/h/a/c/q0/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-interface {v0, v1, p1}, Le/h/a/c/q0/c0;->y9(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setTheme(I)V
    .locals 0

    const p1, 0x1030010

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method

.method public ta(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, ""

    .line 1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "\n"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "\r"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :catchall_0
    invoke-virtual {p0, p2}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ra(Landroid/os/Bundle;)V

    return-void
.end method

.method public ua()Le/h/a/c/q0/c0;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/q0/c0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "InAppActivityListener is null for notification: "

    .line 4
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 5
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public y9(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->sa(Landroid/os/Bundle;)V

    return-void
.end method
