.class public final Le/m/a/f/l/a/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/zzkp;

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/m/a/f/l/a/t;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    iget-object v0, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v0, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-boolean v0, p0, Le/m/a/f/l/a/t;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Unregistering connectivity change receiver"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le/m/a/f/l/a/t;->b:Z

    iput-boolean v0, p0, Le/m/a/f/l/a/t;->c:Z

    iget-object v0, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 11
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Failed to unregister the network broadcast receiver"

    .line 14
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "NetworkBroadcastReceiver received action"

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 7
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzen;->h()Z

    move-result p1

    iget-boolean p2, p0, Le/m/a/f/l/a/t;->c:Z

    if-eq p2, p1, :cond_0

    iput-boolean p1, p0, Le/m/a/f/l/a/t;->c:Z

    iget-object p2, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p2

    new-instance v0, Le/m/a/f/l/a/s;

    invoke-direct {v0, p0, p1}, Le/m/a/f/l/a/s;-><init>(Le/m/a/f/l/a/t;Z)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Le/m/a/f/l/a/t;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "NetworkBroadcastReceiver received unknown action"

    .line 13
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
