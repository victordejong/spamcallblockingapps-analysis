.class final Lcom/google/android/gms/measurement/internal/k3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:I

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/Object;

.field final synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/lang/Object;

.field final synthetic k:Lcom/google/android/gms/measurement/internal/n3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/n3;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/k3;->f:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/k3;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/k3;->h:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/k3;->i:Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/k3;->j:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r4;->A()Lcom/google/android/gms/measurement/internal/c4;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m5;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/n3;->C(Lcom/google/android/gms/measurement/internal/n3;)C

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r4;->f()Lcom/google/android/gms/measurement/internal/ka;

    const/16 v2, 0x43

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/n3;->D(Lcom/google/android/gms/measurement/internal/n3;C)C

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r4;->f()Lcom/google/android/gms/measurement/internal/ka;

    const/16 v2, 0x63

    .line 9
    invoke-static {v1, v2}, Lcom/google/android/gms/measurement/internal/n3;->D(Lcom/google/android/gms/measurement/internal/n3;C)C

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/n3;->E(Lcom/google/android/gms/measurement/internal/n3;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r4;->z()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/f;->p()J

    const-wide/32 v2, 0x9858

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/n3;->F(Lcom/google/android/gms/measurement/internal/n3;J)J

    :cond_2
    iget v1, p0, Lcom/google/android/gms/measurement/internal/k3;->f:I

    const-string v2, "01VDIWEA?"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/n3;->C(Lcom/google/android/gms/measurement/internal/n3;)C

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/n3;->E(Lcom/google/android/gms/measurement/internal/n3;)J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/k3;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/k3;->h:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/k3;->i:Ljava/lang/Object;

    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/k3;->j:Ljava/lang/Object;

    .line 14
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/gms/measurement/internal/n3;->A(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x18

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->g:Ljava/lang/String;

    const/4 v2, 0x0

    .line 16
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c4;->d:Lcom/google/android/gms/measurement/internal/a4;

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a4;->a(Ljava/lang/String;J)V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x6

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k3;->k:Lcom/google/android/gms/measurement/internal/n3;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/n3;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-static {v0, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
