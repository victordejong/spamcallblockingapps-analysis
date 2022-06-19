.class public final Le/m/a/f/l/a/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/measurement/zzcf;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzcf;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/t2;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Le/m/a/f/l/a/t2;->a:Lcom/google/android/gms/internal/measurement/zzcf;

    iput-object p3, p0, Le/m/a/f/l/a/t2;->b:Ljava/lang/String;

    iput-object p4, p0, Le/m/a/f/l/a/t2;->c:Ljava/lang/String;

    iput-boolean p5, p0, Le/m/a/f/l/a/t2;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/t2;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    iget-object v7, p0, Le/m/a/f/l/a/t2;->a:Lcom/google/android/gms/internal/measurement/zzcf;

    iget-object v3, p0, Le/m/a/f/l/a/t2;->b:Ljava/lang/String;

    iget-object v4, p0, Le/m/a/f/l/a/t2;->c:Ljava/lang/String;

    iget-boolean v6, p0, Le/m/a/f/l/a/t2;->d:Z

    .line 2
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 3
    invoke-virtual {v0}, Le/m/a/f/l/a/w;->e()V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->m(Z)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v5

    new-instance v8, Le/m/a/f/l/a/f2;

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Le/m/a/f/l/a/f2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/internal/measurement/zzcf;)V

    .line 5
    invoke-virtual {v0, v8}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    return-void
.end method
