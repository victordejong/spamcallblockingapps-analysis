.class public final synthetic Lcom/google/android/gms/measurement/internal/zzjn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzjr;

.field public final synthetic b:I

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzeh;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjr;ILcom/google/android/gms/measurement/internal/zzeh;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->a:Lcom/google/android/gms/measurement/internal/zzjr;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->b:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjn;->c:Lcom/google/android/gms/measurement/internal/zzeh;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjn;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjn;->a:Lcom/google/android/gms/measurement/internal/zzjr;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzjn;->b:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzjn;->c:Lcom/google/android/gms/measurement/internal/zzeh;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzjn;->d:Landroid/content/Intent;

    .line 1
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzjr;->a:Landroid/content/Context;

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-interface {v4, v1}, Lcom/google/android/gms/measurement/internal/zzjq;->zzc(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "Local AppMeasurementService processed last upload request. StartId"

    .line 4
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjr;->c()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Completed wakeful intent."

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzjr;->a:Landroid/content/Context;

    .line 8
    check-cast v0, Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-interface {v0, v3}, Lcom/google/android/gms/measurement/internal/zzjq;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
