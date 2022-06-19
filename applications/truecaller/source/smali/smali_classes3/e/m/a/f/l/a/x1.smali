.class public final Le/m/a/f/l/a/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzcf;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzau;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzcf;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/x1;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Le/m/a/f/l/a/x1;->a:Lcom/google/android/gms/internal/measurement/zzcf;

    iput-object p3, p0, Le/m/a/f/l/a/x1;->b:Lcom/google/android/gms/measurement/internal/zzau;

    iput-object p4, p0, Le/m/a/f/l/a/x1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/x1;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/x1;->a:Lcom/google/android/gms/internal/measurement/zzcf;

    iget-object v2, p0, Le/m/a/f/l/a/x1;->b:Lcom/google/android/gms/measurement/internal/zzau;

    iget-object v3, p0, Le/m/a/f/l/a/x1;->c:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 3
    invoke-virtual {v0}, Le/m/a/f/l/a/w;->e()V

    iget-object v4, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v4

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v5, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->b:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 7
    iget-object v4, v4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 8
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzfr;->a:Landroid/content/Context;

    const v6, 0xbdfcb8

    .line 9
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->e(Landroid/content/Context;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 10
    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 12
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v3, "Not bundling data. Service unavailable or out of date"

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->w()Lcom/google/android/gms/measurement/internal/zzkw;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkw;->A(Lcom/google/android/gms/internal/measurement/zzcf;[B)V

    goto :goto_0

    :cond_0
    new-instance v4, Le/m/a/f/l/a/o2;

    invoke-direct {v4, v0, v2, v3, v1}, Le/m/a/f/l/a/o2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzau;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/zzcf;)V

    .line 16
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
