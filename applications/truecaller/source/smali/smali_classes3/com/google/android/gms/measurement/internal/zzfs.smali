.class public final synthetic Lcom/google/android/gms/measurement/internal/zzfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzgj;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzfs;->a:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzfs;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzfs;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzfs;->a:Lcom/google/android/gms/measurement/internal/zzgj;

    iget-object v11, p0, Lcom/google/android/gms/measurement/internal/zzfs;->b:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/zzfs;->c:Landroid/os/Bundle;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 3
    invoke-virtual {v0}, Le/m/a/f/l/a/v0;->d()V

    invoke-virtual {v0}, Le/m/a/f/l/a/q3;->e()V

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzap;

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string v3, ""

    const-string v5, "dep"

    move-object v1, v12

    move-object v4, v11

    .line 4
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzfr;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v1, v0, Le/m/a/f/l/a/p3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkp;->g:Lcom/google/android/gms/measurement/internal/zzkr;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 6
    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzkr;->w(Lcom/google/android/gms/measurement/internal/zzap;)Lcom/google/android/gms/internal/measurement/zzfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzih;->zzbq()[B

    move-result-object v1

    iget-object v2, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v2

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 9
    iget-object v3, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzfr;->m:Lcom/google/android/gms/measurement/internal/zzec;

    .line 11
    invoke-virtual {v3, v11}, Lcom/google/android/gms/measurement/internal/zzec;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    array-length v4, v1

    .line 12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Saving default event parameters, appId, data size"

    .line 13
    invoke-virtual {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/content/ContentValues;

    .line 14
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "app_id"

    .line 15
    invoke-virtual {v2, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "parameters"

    .line 16
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 17
    :try_start_0
    invoke-virtual {v0}, Le/m/a/f/l/a/d;->w()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "default_event_params"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 18
    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v1, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Failed to insert default event parameters (got -1). appId"

    .line 21
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 24
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    .line 25
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzeh;->p(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error storing default event parameters. appId"

    .line 26
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
