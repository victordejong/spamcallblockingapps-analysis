.class public final Le/m/a/f/l/a/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzkq;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzkq;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/r3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iput-object p2, p0, Le/m/a/f/l/a/r3;->a:Lcom/google/android/gms/measurement/internal/zzkq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/r3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzez;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzez;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->k:Lcom/google/android/gms/measurement/internal/zzez;

    .line 3
    new-instance v1, Le/m/a/f/l/a/d;

    invoke-direct {v1, v0}, Le/m/a/f/l/a/d;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 4
    invoke-virtual {v1}, Le/m/a/f/l/a/q3;->f()V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->G()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->a:Lcom/google/android/gms/measurement/internal/zzfi;

    const-string v3, "null reference"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object v2, v1, Lcom/google/android/gms/measurement/internal/zzaf;->c:Le/m/a/f/l/a/b;

    .line 8
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzjm;

    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzjm;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 10
    invoke-virtual {v1}, Le/m/a/f/l/a/q3;->f()V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    new-instance v1, Le/m/a/f/l/a/j4;

    .line 11
    invoke-direct {v1, v0}, Le/m/a/f/l/a/j4;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 12
    invoke-virtual {v1}, Le/m/a/f/l/a/q3;->f()V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->f:Le/m/a/f/l/a/j4;

    new-instance v1, Le/m/a/f/l/a/y1;

    .line 13
    invoke-direct {v1, v0}, Le/m/a/f/l/a/y1;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 14
    invoke-virtual {v1}, Le/m/a/f/l/a/q3;->f()V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->h:Le/m/a/f/l/a/y1;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzkd;

    .line 15
    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    .line 16
    invoke-virtual {v1}, Le/m/a/f/l/a/q3;->f()V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->e:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 17
    new-instance v1, Le/m/a/f/l/a/t;

    invoke-direct {v1, v0}, Le/m/a/f/l/a/t;-><init>(Lcom/google/android/gms/measurement/internal/zzkp;)V

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->d:Le/m/a/f/l/a/t;

    iget v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->q:I

    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->r:I

    if-eq v1, v2, :cond_0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 19
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 20
    iget v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->q:I

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gms/measurement/internal/zzkp;->r:I

    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Not all upload components initialized"

    .line 23
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->m:Z

    .line 24
    iget-object v0, p0, Le/m/a/f/l/a/r3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 27
    invoke-virtual {v1}, Le/m/a/f/l/a/d;->N()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjm;->j:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzes;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 29
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjm;->j:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V

    return-void
.end method
