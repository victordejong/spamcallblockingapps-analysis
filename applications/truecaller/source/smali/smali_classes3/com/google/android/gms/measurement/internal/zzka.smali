.class public final Lcom/google/android/gms/measurement/internal/zzka;
.super Le/m/a/f/l/a/w;
.source "SourceFile"


# instance fields
.field public c:Landroid/os/Handler;

.field public final d:Le/m/a/f/l/a/l3;

.field public final e:Le/m/a/f/l/a/k3;

.field public final f:Le/m/a/f/l/a/i3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/l/a/w;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;)V

    new-instance p1, Le/m/a/f/l/a/l3;

    invoke-direct {p1, p0}, Le/m/a/f/l/a/l3;-><init>(Lcom/google/android/gms/measurement/internal/zzka;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzka;->d:Le/m/a/f/l/a/l3;

    new-instance p1, Le/m/a/f/l/a/k3;

    .line 2
    invoke-direct {p1, p0}, Le/m/a/f/l/a/k3;-><init>(Lcom/google/android/gms/measurement/internal/zzka;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzka;->e:Le/m/a/f/l/a/k3;

    new-instance p1, Le/m/a/f/l/a/i3;

    invoke-direct {p1, p0}, Le/m/a/f/l/a/i3;-><init>(Lcom/google/android/gms/measurement/internal/zzka;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzka;->f:Le/m/a/f/l/a/i3;

    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/m/a/f/l/a/m;->d()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzka;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzby;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzby;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzka;->c:Landroid/os/Handler;

    :cond_0
    return-void
.end method
