.class public final Le/m/a/f/l/a/e3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzkp;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzkp;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/e3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    iput-object p2, p0, Le/m/a/f/l/a/e3;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/e3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->b()V

    iget-object v0, p0, Le/m/a/f/l/a/e3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    iget-object v1, p0, Le/m/a/f/l/a/e3;->b:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->a()Lcom/google/android/gms/measurement/internal/zzfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfo;->d()V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->p:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzkp;->p:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkp;->p:Ljava/util/List;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Le/m/a/f/l/a/e3;->a:Lcom/google/android/gms/measurement/internal/zzkp;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzkp;->q()V

    return-void
.end method
