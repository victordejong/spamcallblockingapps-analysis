.class public final Le/m/a/f/l/a/s3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/f/l/a/p;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/s3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iput-object p2, p0, Le/m/a/f/l/a/s3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 8

    .line 1
    iget-object p1, p0, Le/m/a/f/l/a/s3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->c()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, p5, [B

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkp;->x:Ljava/util/List;

    const-string v1, "null reference"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    iput-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkp;->x:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_6

    move p2, v3

    :cond_1
    if-nez p3, :cond_6

    :try_start_1
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 6
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzjm;->j:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 7
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzjm;->k:Lcom/google/android/gms/measurement/internal/zzes;

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p3

    .line 10
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Successful upload. Got network response. code, size"

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, v4, p2, p4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 13
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->K()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object p4, p1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 15
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 16
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 17
    invoke-virtual {p4}, Le/m/a/f/l/a/v0;->d()V

    .line 18
    invoke-virtual {p4}, Le/m/a/f/l/a/q3;->e()V

    .line 19
    invoke-virtual {p4}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 20
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 21
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-exception v0

    .line 23
    :try_start_5
    iget-object p4, p4, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 24
    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p4

    .line 25
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v4, "Failed to delete a bundle in a queue table"

    .line 26
    invoke-virtual {p4, v4, v0}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_1
    move-exception p4

    .line 28
    :try_start_6
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzkp;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 29
    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 30
    :cond_3
    throw p4

    .line 31
    :cond_4
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 32
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 33
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->i()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 34
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 35
    invoke-virtual {p2}, Le/m/a/f/l/a/d;->L()V

    iput-object v1, p1, Lcom/google/android/gms/measurement/internal/zzkp;->y:Ljava/util/List;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->b:Lcom/google/android/gms/measurement/internal/zzen;

    .line 36
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzen;->h()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->B()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->q()V

    goto :goto_1

    :cond_5
    const-wide/16 p2, -0x1

    .line 39
    iput-wide p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->z:J

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V

    .line 41
    :goto_1
    iput-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 42
    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 43
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 44
    invoke-virtual {p3}, Le/m/a/f/l/a/d;->L()V

    .line 45
    throw p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_2
    move-exception p2

    .line 46
    :try_start_8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p3

    .line 47
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p4, "Database error while trying to delete uploaded bundles"

    .line 48
    invoke-virtual {p3, p4, p2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p2

    .line 51
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string p3, "Disable upload, time"

    .line 52
    iget-wide v0, p1, Lcom/google/android/gms/measurement/internal/zzkp;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 53
    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object p4

    .line 54
    iget-object p4, p4, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2, p3}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 56
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/zzjm;->k:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    const/16 p3, 0x1f7

    if-eq p2, p3, :cond_7

    const/16 p3, 0x1ad

    if-ne p2, p3, :cond_8

    :cond_7
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->i:Lcom/google/android/gms/measurement/internal/zzjm;

    .line 57
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzjm;->i:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->zzav()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->c()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    :cond_8
    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    .line 58
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 59
    invoke-virtual {p2, v0}, Le/m/a/f/l/a/d;->M(Ljava/util/List;)V

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->z()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 61
    :goto_2
    iput-boolean p5, p1, Lcom/google/android/gms/measurement/internal/zzkp;->t:Z

    .line 62
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->x()V

    return-void

    :catchall_1
    move-exception p2

    .line 63
    iput-boolean p5, p1, Lcom/google/android/gms/measurement/internal/zzkp;->t:Z

    .line 64
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzkp;->x()V

    .line 65
    throw p2
.end method
