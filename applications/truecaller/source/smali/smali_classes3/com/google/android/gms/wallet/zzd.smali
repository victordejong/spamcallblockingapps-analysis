.class public final Lcom/google/android/gms/wallet/zzd;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public a:I

.field public b:Le/m/a/f/s/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/f/s/c<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "+",
            "Lcom/google/android/gms/wallet/AutoResolvableResult;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->c:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->c:Z

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    if-eqz p1, :cond_4

    iget v2, p0, Lcom/google/android/gms/wallet/zzd;->a:I

    .line 3
    sget v3, Lcom/google/android/gms/wallet/AutoResolveHelper;->b:I

    .line 4
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    const-string v4, "AutoResolveHelper"

    if-eqz v3, :cond_0

    const/4 p1, 0x3

    .line 5
    invoke-static {v4, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v3

    .line 7
    instance-of v5, v3, Lcom/google/android/gms/common/api/ResolvableApiException;

    const/4 v6, 0x6

    if-eqz v5, :cond_1

    .line 8
    check-cast v3, Lcom/google/android/gms/common/api/ResolvableApiException;

    .line 9
    :try_start_0
    iget-object p1, v3, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 10
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/common/api/Status;->r2(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    goto :goto_1

    .line 12
    :cond_1
    new-instance v5, Landroid/content/Intent;

    .line 13
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/wallet/AutoResolvableResult;

    invoke-interface {p1, v5}, Lcom/google/android/gms/wallet/AutoResolvableResult;->d(Landroid/content/Intent;)V

    const/4 v0, -0x1

    goto :goto_0

    .line 16
    :cond_2
    instance-of p1, v3, Lcom/google/android/gms/common/api/ApiException;

    const-string v7, "com.google.android.gms.common.api.AutoResolveHelper.status"

    if-eqz p1, :cond_3

    .line 17
    check-cast v3, Lcom/google/android/gms/common/api/ApiException;

    .line 18
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 19
    iget-object v4, v3, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 20
    iget v4, v4, Lcom/google/android/gms/common/api/Status;->b:I

    .line 21
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {p1, v4, v3, v6}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 22
    invoke-virtual {v5, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 23
    :cond_3
    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    const-string v4, "Unexpected non API exception when trying to deliver the task result to an activity!"

    invoke-direct {p1, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 25
    invoke-virtual {v5, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 26
    :goto_0
    invoke-static {v1, v2, v0, v5}, Lcom/google/android/gms/wallet/AutoResolveHelper;->b(Landroid/app/Activity;IILandroid/content/Intent;)V

    :goto_1
    return-void

    .line 27
    :cond_4
    iget p1, p0, Lcom/google/android/gms/wallet/zzd;->a:I

    new-instance v0, Landroid/content/Intent;

    .line 28
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 29
    invoke-static {v1, p1, v2, v0}, Lcom/google/android/gms/wallet/AutoResolveHelper;->b(Landroid/app/Activity;IILandroid/content/Intent;)V

    :cond_5
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "requestCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wallet/zzd;->a:I

    .line 3
    sget-wide v0, Lcom/google/android/gms/wallet/AutoResolveHelper;->a:J

    .line 4
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "initializationElapsedRealtime"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wallet/zzd;->b:Le/m/a/f/s/c;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "resolveCallId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Le/m/a/f/s/c;->d:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/f/s/c;

    iput-object v0, p0, Lcom/google/android/gms/wallet/zzd;->b:Le/m/a/f/s/c;

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "delivered"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->c:Z

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/zzd;->b:Le/m/a/f/s/c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Le/m/a/f/s/c;->a:Lcom/google/android/gms/wallet/zzd;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Le/m/a/f/s/c;->a:Lcom/google/android/gms/wallet/zzd;

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/wallet/zzd;->b:Le/m/a/f/s/c;

    if-eqz v0, :cond_0

    .line 2
    iput-object p0, v0, Le/m/a/f/s/c;->a:Lcom/google/android/gms/wallet/zzd;

    .line 3
    invoke-virtual {v0}, Le/m/a/f/s/c;->a()V

    return-void

    :cond_0
    const/4 v0, 0x5

    const-string v1, "AutoResolveHelper"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wallet/zzd;->a(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/google/android/gms/wallet/zzd;->c:Z

    const-string v1, "delivered"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/wallet/zzd;->b:Le/m/a/f/s/c;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p1, Le/m/a/f/s/c;->a:Lcom/google/android/gms/wallet/zzd;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Le/m/a/f/s/c;->a:Lcom/google/android/gms/wallet/zzd;

    :cond_0
    return-void
.end method
