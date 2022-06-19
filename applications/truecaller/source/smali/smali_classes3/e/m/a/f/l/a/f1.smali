.class public final Le/m/a/f/l/a/f1;
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

    iput-object p1, p0, Le/m/a/f/l/a/f1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-wide p2, p0, Le/m/a/f/l/a/f1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/f1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-wide v1, p0, Le/m/a/f/l/a/f1;->a:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzhw;->n(JZ)V

    iget-object v0, p0, Le/m/a/f/l/a/f1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->u()Lcom/google/android/gms/measurement/internal/zzjk;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->u(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
