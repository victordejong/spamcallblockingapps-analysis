.class public Lcom/clevertap/android/sdk/InAppNotificationActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clevertap/android/sdk/InAppNotificationActivity;->pa()Le/h/a/c/q0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/clevertap/android/sdk/InAppNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/InAppNotificationActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;->a:Lcom/clevertap/android/sdk/InAppNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;->a:Lcom/clevertap/android/sdk/InAppNotificationActivity;

    .line 3
    iget-object p2, p2, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 4
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    const-string v0, "wzrk_id"

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;->a:Lcom/clevertap/android/sdk/InAppNotificationActivity;

    .line 7
    iget-object p2, p2, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 8
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 10
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->h:Ljava/lang/String;

    const-string v1, "wzrk_c2a"

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;->a:Lcom/clevertap/android/sdk/InAppNotificationActivity;

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ua()Le/h/a/c/q0/c0;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    iget-object p2, p2, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-interface {v2, p2, p1, v1}, Le/h/a/c/q0/c0;->P7(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;Ljava/util/HashMap;)V

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;->a:Lcom/clevertap/android/sdk/InAppNotificationActivity;

    .line 16
    iget-object p2, p2, Lcom/clevertap/android/sdk/InAppNotificationActivity;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 17
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 19
    iget-object p2, p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 20
    iget-object v0, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;->a:Lcom/clevertap/android/sdk/InAppNotificationActivity;

    invoke-virtual {v0, p2, p1}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ta(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 21
    :cond_1
    iget-object p2, p0, Lcom/clevertap/android/sdk/InAppNotificationActivity$a;->a:Lcom/clevertap/android/sdk/InAppNotificationActivity;

    invoke-virtual {p2, p1}, Lcom/clevertap/android/sdk/InAppNotificationActivity;->ra(Landroid/os/Bundle;)V

    return-void
.end method
