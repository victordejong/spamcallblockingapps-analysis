.class public final Le/m/a/f/l/a/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/u0;->e:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Le/m/a/f/l/a/u0;->a:Ljava/lang/String;

    iput-object p3, p0, Le/m/a/f/l/a/u0;->b:Ljava/lang/String;

    iput-object p4, p0, Le/m/a/f/l/a/u0;->c:Ljava/lang/String;

    iput-wide p5, p0, Le/m/a/f/l/a/u0;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpb;->zzc()Z

    iget-object v0, p0, Le/m/a/f/l/a/u0;->e:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdu;->r0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/f/l/a/u0;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/a/f/l/a/u0;->e:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    iget-object v1, p0, Le/m/a/f/l/a/u0;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzkp;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V

    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v2, p0, Le/m/a/f/l/a/u0;->c:Ljava/lang/String;

    iget-wide v3, p0, Le/m/a/f/l/a/u0;->d:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Le/m/a/f/l/a/u0;->e:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 8
    iget-object v2, p0, Le/m/a/f/l/a/u0;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V

    return-void

    :cond_1
    iget-object v0, p0, Le/m/a/f/l/a/u0;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Le/m/a/f/l/a/u0;->e:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    iget-object v1, p0, Le/m/a/f/l/a/u0;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzik;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V

    return-void

    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v2, p0, Le/m/a/f/l/a/u0;->c:Ljava/lang/String;

    iget-wide v3, p0, Le/m/a/f/l/a/u0;->d:J

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzid;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Le/m/a/f/l/a/u0;->e:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 14
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 15
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkp;->l:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->t()Lcom/google/android/gms/measurement/internal/zzik;

    move-result-object v0

    iget-object v2, p0, Le/m/a/f/l/a/u0;->b:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzik;->n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzid;)V

    return-void
.end method
