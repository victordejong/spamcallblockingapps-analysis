.class public final Le/m/a/f/l/a/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzab;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Lcom/google/android/gms/measurement/internal/zzab;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/f0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Le/m/a/f/l/a/f0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/f0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, p0, Le/m/a/f/l/a/f0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null reference"

    if-nez v0, :cond_1

    iget-object v0, p0, Le/m/a/f/l/a/f0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 6
    iget-object v2, p0, Le/m/a/f/l/a/f0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 9
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->v(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->j(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Le/m/a/f/l/a/f0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 14
    iget-object v2, p0, Le/m/a/f/l/a/f0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzab;->a:Ljava/lang/String;

    .line 17
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->v(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->n(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_2
    return-void
.end method
