.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/f/d/c;

.field public final synthetic b:Le/m/a/f/d/f;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/d/c;Le/m/a/f/d/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzk;->a:Le/m/a/f/d/c;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzk;->b:Le/m/a/f/d/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzk;->a:Le/m/a/f/d/c;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/zzk;->b:Le/m/a/f/d/f;

    .line 1
    iget v1, v1, Le/m/a/f/d/f;->a:I

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/f/d/f;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v0, Le/m/a/f/d/c;->e:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    new-instance v1, Lcom/google/android/gms/cloudmessaging/zzq;

    const-string v3, "Timed out waiting for response"

    const/4 v4, 0x0

    .line 6
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/cloudmessaging/zzq;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {v2, v1}, Le/m/a/f/d/f;->c(Lcom/google/android/gms/cloudmessaging/zzq;)V

    .line 8
    invoke-virtual {v0}, Le/m/a/f/d/c;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
