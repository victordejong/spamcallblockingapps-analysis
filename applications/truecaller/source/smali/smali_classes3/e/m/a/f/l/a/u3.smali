.class public final Le/m/a/f/l/a/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzp;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzkp;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;Lcom/google/android/gms/measurement/internal/zzp;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/u3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iput-object p2, p0, Le/m/a/f/l/a/u3;->a:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/u3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v1, p0, Le/m/a/f/l/a/u3;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzp;->a:Ljava/lang/String;

    const-string v2, "null reference"

    .line 2
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->H(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzag;->c:Lcom/google/android/gms/measurement/internal/zzag;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/m/a/f/l/a/u3;->a:Lcom/google/android/gms/measurement/internal/zzp;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzp;->v:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->e(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/m/a/f/l/a/u3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v1, p0, Le/m/a/f/l/a/u3;->a:Lcom/google/android/gms/measurement/internal/zzp;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkp;->F(Lcom/google/android/gms/measurement/internal/zzp;)Le/m/a/f/l/a/l0;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Le/m/a/f/l/a/l0;->M()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Le/m/a/f/l/a/u3;->b:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->n:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v1, "Analytics storage consent denied. Returning null app instance id"

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
