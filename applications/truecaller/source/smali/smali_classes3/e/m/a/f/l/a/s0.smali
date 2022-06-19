.class public final Le/m/a/f/l/a/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzgj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzgj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/s0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    iput-object p2, p0, Le/m/a/f/l/a/s0;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/s0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, p0, Le/m/a/f/l/a/s0;->b:Lcom/google/android/gms/measurement/internal/zzgj;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgj;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkp;->c:Le/m/a/f/l/a/d;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->E(Le/m/a/f/l/a/q3;)Le/m/a/f/l/a/q3;

    .line 6
    iget-object v1, p0, Le/m/a/f/l/a/s0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/a/f/l/a/d;->I(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
