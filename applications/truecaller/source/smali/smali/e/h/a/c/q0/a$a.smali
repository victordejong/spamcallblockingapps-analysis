.class public Le/h/a/c/q0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/q0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/q0/a;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/a$a;->a:Le/h/a/c/q0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/a$a;->a:Le/h/a/c/q0/a;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_0
    iget-object v1, v0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 4
    iget-object v1, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "wzrk_id"

    .line 7
    iget-object v3, v0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 8
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wzrk_c2a"

    .line 10
    iget-object v3, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v2, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->g:Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0}, Le/h/a/c/q0/a;->SA()Le/h/a/c/q0/c0;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 14
    iget-object v4, v0, Le/h/a/c/q0/a;->e:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-interface {v3, v4, v1, v2}, Le/h/a/c/q0/c0;->P7(Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;Ljava/util/HashMap;)V

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->a:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {v0, p1, v1}, Le/h/a/c/q0/a;->QA(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0, v1}, Le/h/a/c/q0/a;->PA(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    iget-object v1, v0, Le/h/a/c/q0/a;->b:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    const-string v2, "Error handling notification button click: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 20
    invoke-virtual {v0, p1}, Le/h/a/c/q0/a;->PA(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
