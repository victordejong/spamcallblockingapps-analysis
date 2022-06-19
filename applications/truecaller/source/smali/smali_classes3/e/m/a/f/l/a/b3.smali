.class public final Le/m/a/f/l/a/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzjj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjj;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/b3;->a:Lcom/google/android/gms/measurement/internal/zzjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/b3;->a:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjj;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    .line 3
    iget-object v3, p0, Le/m/a/f/l/a/b3;->a:Lcom/google/android/gms/measurement/internal/zzjj;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzjj;->c:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v3, v3, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->f:Lcom/google/android/gms/measurement/internal/zzaa;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 5
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->r(Lcom/google/android/gms/measurement/internal/zzjk;Landroid/content/ComponentName;)V

    return-void
.end method
