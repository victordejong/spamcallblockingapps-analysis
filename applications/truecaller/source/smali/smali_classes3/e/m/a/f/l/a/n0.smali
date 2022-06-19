.class public final Le/m/a/f/l/a/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/n0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Le/m/a/f/l/a/n0;->a:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/n0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, p0, Le/m/a/f/l/a/n0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    iget-object v1, p0, Le/m/a/f/l/a/n0;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    .line 9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    .line 11
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v4

    .line 13
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 14
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v6, "Setting consent, package, consent"

    .line 15
    invoke-virtual {v4, v6, v5, v2}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v4, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->o(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)V

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->g(Lcom/google/android/gms/measurement/internal/zzah;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->l(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_0
    return-void
.end method
