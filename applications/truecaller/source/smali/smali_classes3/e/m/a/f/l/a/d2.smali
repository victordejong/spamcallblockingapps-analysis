.class public final Le/m/a/f/l/a/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzid;

.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzik;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzik;Lcom/google/android/gms/measurement/internal/zzid;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/d2;->c:Lcom/google/android/gms/measurement/internal/zzik;

    iput-object p2, p0, Le/m/a/f/l/a/d2;->a:Lcom/google/android/gms/measurement/internal/zzid;

    iput-wide p3, p0, Le/m/a/f/l/a/d2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/d2;->c:Lcom/google/android/gms/measurement/internal/zzik;

    iget-object v1, p0, Le/m/a/f/l/a/d2;->a:Lcom/google/android/gms/measurement/internal/zzid;

    iget-wide v2, p0, Le/m/a/f/l/a/d2;->b:J

    const/4 v4, 0x0

    .line 2
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzik;->j(Lcom/google/android/gms/measurement/internal/zzid;ZJ)V

    .line 3
    iget-object v0, p0, Le/m/a/f/l/a/d2;->c:Lcom/google/android/gms/measurement/internal/zzik;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzik;->e:Lcom/google/android/gms/measurement/internal/zzid;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Le/m/a/f/l/a/m;->d()V

    .line 6
    invoke-virtual {v0}, Le/m/a/f/l/a/w;->e()V

    new-instance v2, Le/m/a/f/l/a/l2;

    invoke-direct {v2, v0, v1}, Le/m/a/f/l/a/l2;-><init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzid;)V

    .line 7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzjk;->p(Ljava/lang/Runnable;)V

    return-void
.end method
