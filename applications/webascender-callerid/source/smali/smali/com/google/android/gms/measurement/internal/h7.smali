.class final Lcom/google/android/gms/measurement/internal/h7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Lcom/google/android/gms/internal/measurement/vc;

.field final synthetic g:Lcom/google/android/gms/measurement/internal/t;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/vc;Lcom/google/android/gms/measurement/internal/t;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h7;->i:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/h7;->f:Lcom/google/android/gms/internal/measurement/vc;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/h7;->g:Lcom/google/android/gms/measurement/internal/t;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/h7;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h7;->i:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->R()Lcom/google/android/gms/measurement/internal/j8;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h7;->f:Lcom/google/android/gms/internal/measurement/vc;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h7;->g:Lcom/google/android/gms/measurement/internal/t;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/h7;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/j8;->u(Lcom/google/android/gms/internal/measurement/vc;Lcom/google/android/gms/measurement/internal/t;Ljava/lang/String;)V

    return-void
.end method
