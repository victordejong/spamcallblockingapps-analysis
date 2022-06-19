.class public final Le/m/a/f/e/a/a/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Le/m/a/f/e/a/a/p0;

.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zap;Le/m/a/f/e/a/a/p0;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/a/f/e/a/a/r0;->a:Le/m/a/f/e/a/a/p0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/zap;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/m/a/f/e/a/a/r0;->a:Le/m/a/f/e/a/a/p0;

    .line 1
    iget-object v0, v0, Le/m/a/f/e/a/a/p0;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    .line 3
    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/common/ConnectionResult;->c:Landroid/app/PendingIntent;

    const-string v5, "null reference"

    .line 6
    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v5, p0, Le/m/a/f/e/a/a/r0;->a:Le/m/a/f/e/a/a/p0;

    .line 8
    iget v5, v5, Le/m/a/f/e/a/a/p0;->a:I

    .line 9
    sget v6, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 10
    invoke-direct {v6, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pending_intent"

    .line 11
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "failing_client_id"

    .line 12
    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "notify_manager"

    .line 13
    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14
    invoke-interface {v4, v6, v2}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v1, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/zap;->e:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    .line 16
    iget v5, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/4 v6, 0x0

    .line 17
    invoke-virtual {v4, v1, v5, v6}, Lcom/google/android/gms/common/GoogleApiAvailability;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zap;->e:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->a:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    .line 19
    iget v0, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    .line 20
    invoke-virtual {v2, v1, v4, v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->g(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/LifecycleFragment;ILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    .line 21
    :cond_2
    iget v1, v0, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/16 v4, 0x12

    if-ne v1, v4, :cond_3

    .line 22
    iget-object v0, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zap;->e:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v5, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    .line 24
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/widget/ProgressBar;

    const v8, 0x101007a

    .line 25
    invoke-direct {v7, v0, v6, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 27
    invoke-virtual {v7, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 28
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 30
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/zac;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v3, ""

    .line 32
    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v3, "GooglePlayServicesUpdatingDialog"

    .line 34
    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/google/android/gms/common/GoogleApiAvailability;->k(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 35
    iget-object v0, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zap;->e:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Le/m/a/f/e/a/a/q0;

    invoke-direct {v3, p0, v2}, Le/m/a/f/e/a/a/q0;-><init>(Le/m/a/f/e/a/a/r0;Landroid/app/Dialog;)V

    .line 37
    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->i(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabr;

    return-void

    :cond_3
    iget-object v1, p0, Le/m/a/f/e/a/a/r0;->b:Lcom/google/android/gms/common/api/internal/zap;

    iget-object v2, p0, Le/m/a/f/e/a/a/r0;->a:Le/m/a/f/e/a/a/p0;

    .line 38
    iget v2, v2, Le/m/a/f/e/a/a/p0;->a:I

    .line 39
    iget-object v3, v1, Lcom/google/android/gms/common/api/internal/zap;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/zap;->m(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
