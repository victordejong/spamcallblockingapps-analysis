.class final Lcom/google/android/gms/common/api/internal/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final f:Lcom/google/android/gms/common/api/internal/i2;

.field final synthetic g:Lcom/google/android/gms/common/api/internal/j2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/j2;Lcom/google/android/gms/common/api/internal/i2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/l2;->f:Lcom/google/android/gms/common/api/internal/i2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    iget-boolean v0, v0, Lcom/google/android/gms/common/api/internal/j2;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l2;->f:Lcom/google/android/gms/common/api/internal/i2;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/i2;->b()Lcom/google/android/gms/common/b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->B1()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f:Lcom/google/android/gms/common/api/internal/h;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->A1()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/l2;->f:Lcom/google/android/gms/common/api/internal/i2;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/common/api/internal/i2;->a()I

    move-result v3

    const/4 v4, 0x0

    .line 8
    invoke-static {v1, v0, v3, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->b(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 9
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/common/api/internal/h;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/j2;->j:Lcom/google/android/gms/common/e;

    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->y1()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/e;->m(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/j2;->j:Lcom/google/android/gms/common/e;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    iget-object v4, v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->f:Lcom/google/android/gms/common/api/internal/h;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->y1()I

    move-result v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/common/e;->B(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/h;IILandroid/content/DialogInterface$OnCancelListener;)Z

    return-void

    .line 15
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/b;->y1()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/e;->u(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/j2;->j:Lcom/google/android/gms/common/e;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/common/api/internal/k2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/k2;-><init>(Lcom/google/android/gms/common/api/internal/l2;Landroid/app/Dialog;)V

    .line 20
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/common/e;->w(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/c1;)Lcom/google/android/gms/common/api/internal/d1;

    return-void

    .line 21
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/l2;->g:Lcom/google/android/gms/common/api/internal/j2;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/l2;->f:Lcom/google/android/gms/common/api/internal/i2;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/i2;->a()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/j2;->n(Lcom/google/android/gms/common/b;I)V

    return-void
.end method
