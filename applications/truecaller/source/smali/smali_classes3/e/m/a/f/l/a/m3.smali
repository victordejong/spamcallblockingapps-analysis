.class public final Le/m/a/f/l/a/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/l/a/c4;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Le/m/a/f/l/a/c4;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/m3;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Le/m/a/f/l/a/m3;->a:Le/m/a/f/l/a/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/m3;->b:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->r()Lcom/google/android/gms/measurement/internal/zzhw;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/m3;->a:Le/m/a/f/l/a/c4;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzhw;->t(Lcom/google/android/gms/measurement/internal/zzgr;)V

    return-void
.end method
