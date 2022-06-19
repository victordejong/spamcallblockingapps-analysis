.class final Lcom/google/android/gms/measurement/internal/x9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/internal/measurement/vc;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/vc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x9;->g:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/x9;->f:Lcom/google/android/gms/internal/measurement/vc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x9;->g:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->G()Lcom/google/android/gms/measurement/internal/t9;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/x9;->f:Lcom/google/android/gms/internal/measurement/vc;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/x9;->g:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r4;->j()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/t9;->V(Lcom/google/android/gms/internal/measurement/vc;Z)V

    return-void
.end method
