.class public final Le/m/a/f/l/a/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;J)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/c1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-wide p2, p0, Le/m/a/f/l/a/c1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/c1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->p()Le/m/a/f/l/a/u;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/m/a/f/l/a/u;->k:Lcom/google/android/gms/measurement/internal/zzes;

    iget-wide v1, p0, Le/m/a/f/l/a/c1;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzes;->b(J)V

    iget-object v0, p0, Le/m/a/f/l/a/c1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->m:Lcom/google/android/gms/measurement/internal/zzef;

    .line 5
    iget-wide v1, p0, Le/m/a/f/l/a/c1;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Session timeout duration set"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
