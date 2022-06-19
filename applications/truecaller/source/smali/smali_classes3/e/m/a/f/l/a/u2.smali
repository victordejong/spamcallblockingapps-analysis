.class public final Le/m/a/f/l/a/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/zzab;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzp;ZLcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzab;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/u2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iput-object p2, p0, Le/m/a/f/l/a/u2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iput-boolean p3, p0, Le/m/a/f/l/a/u2;->b:Z

    iput-object p4, p0, Le/m/a/f/l/a/u2;->c:Lcom/google/android/gms/measurement/internal/zzab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/u2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjk;->d:Lcom/google/android/gms/measurement/internal/zzdx;

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Discarding data. Failed to send conditional user property to service"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/u2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    const-string v2, "null reference"

    .line 6
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Le/m/a/f/l/a/u2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-boolean v2, p0, Le/m/a/f/l/a/u2;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, p0, Le/m/a/f/l/a/u2;->c:Lcom/google/android/gms/measurement/internal/zzab;

    .line 9
    :goto_0
    iget-object v3, p0, Le/m/a/f/l/a/u2;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjk;->h(Lcom/google/android/gms/measurement/internal/zzdx;Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;Lcom/google/android/gms/measurement/internal/zzp;)V

    iget-object v0, p0, Le/m/a/f/l/a/u2;->d:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjk;->o()V

    return-void
.end method
