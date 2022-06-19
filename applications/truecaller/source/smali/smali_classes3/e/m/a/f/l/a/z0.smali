.class public final Le/m/a/f/l/a/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Z)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-boolean p2, p0, Le/m/a/f/l/a/z0;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v0

    iget-object v1, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->b()Z

    move-result v1

    iget-object v2, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    iget-boolean v3, p0, Le/m/a/f/l/a/z0;->a:Z

    .line 3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfr;->A:Ljava/lang/Boolean;

    .line 4
    iget-boolean v2, p0, Le/m/a/f/l/a/z0;->a:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    .line 7
    iget-boolean v2, p0, Le/m/a/f/l/a/z0;->a:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Default data collection state already set to"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->c()Z

    move-result v1

    iget-object v2, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->b()Z

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->k:Lcom/google/android/gms/measurement/internal/zzef;

    .line 13
    iget-boolean v2, p0, Le/m/a/f/l/a/z0;->a:Z

    .line 14
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "Default data collection is different than actual status"

    .line 16
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzef;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Le/m/a/f/l/a/z0;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhw;->A()V

    return-void
.end method
