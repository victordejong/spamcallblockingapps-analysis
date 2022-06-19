.class public final Le/m/a/f/l/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzab;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/e0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Le/m/a/f/l/a/e0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    iput-object p3, p0, Le/m/a/f/l/a/e0;->b:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/e0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, p0, Le/m/a/f/l/a/e0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzab;->c:Lcom/google/android/gms/measurement/internal/zzks;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzks;->o2()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/e0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 6
    iget-object v1, p0, Le/m/a/f/l/a/e0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v2, p0, Le/m/a/f/l/a/e0;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->j(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/e0;->c:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 9
    iget-object v1, p0, Le/m/a/f/l/a/e0;->a:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v2, p0, Le/m/a/f/l/a/e0;->b:Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->n(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
