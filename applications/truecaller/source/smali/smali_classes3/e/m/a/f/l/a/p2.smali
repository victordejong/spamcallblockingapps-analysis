.class public final Le/m/a/f/l/a/p2;
.super Le/m/a/f/l/a/f;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Le/m/a/f/l/a/x0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/p2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-direct {p0, p2}, Le/m/a/f/l/a/f;-><init>(Le/m/a/f/l/a/x0;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/p2;->e:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Tasks have been queued for a long time"

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void
.end method
