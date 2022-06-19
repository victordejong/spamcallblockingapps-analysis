.class public final Le/m/a/f/l/a/n2;
.super Le/m/a/f/l/a/f;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Le/m/a/f/l/a/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/n2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-direct {p0, p2}, Le/m/a/f/l/a/f;-><init>(Le/m/a/f/l/a/x0;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/n2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->j()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Inactivity, disconnecting from the service"

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->t()V

    return-void
.end method
