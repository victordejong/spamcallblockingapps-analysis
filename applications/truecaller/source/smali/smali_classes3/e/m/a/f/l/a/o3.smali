.class public final Le/m/a/f/l/a/o3;
.super Le/m/a/f/l/a/f;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzkd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkd;Le/m/a/f/l/a/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/o3;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-direct {p0, p2}, Le/m/a/f/l/a/f;-><init>(Le/m/a/f/l/a/x0;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/o3;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkd;->h()V

    iget-object v0, p0, Le/m/a/f/l/a/o3;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Starting upload from DelayedRunnable"

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Le/m/a/f/l/a/o3;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    iget-object v0, v0, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->q()V

    return-void
.end method
