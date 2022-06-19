.class public final Lcom/google/android/gms/measurement/internal/zzey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzez;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzez;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzey;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzbq;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/measurement/zzbr;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Install Referrer Service implementation was not found"

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 6
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "Install Referrer Service connected"

    .line 7
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p2

    new-instance v0, Le/m/a/f/l/a/v;

    invoke-direct {v0, p0, p1, p0}, Le/m/a/f/l/a/v;-><init>(Lcom/google/android/gms/measurement/internal/zzey;Lcom/google/android/gms/internal/measurement/zzbr;Landroid/content/ServiceConnection;)V

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzfo;->n(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 12
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "Exception occurred while calling Install Referrer API"

    .line 13
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 16
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p2, "Install Referrer connection returned with null binder"

    .line 17
    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzey;->b:Lcom/google/android/gms/measurement/internal/zzez;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzez;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v0, "Install Referrer Service disconnected"

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void
.end method
