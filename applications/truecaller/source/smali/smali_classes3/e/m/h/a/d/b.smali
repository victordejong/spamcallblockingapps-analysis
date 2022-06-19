.class public Le/m/h/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/h/a/d/b$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Runnable;

.field public final d:Le/m/h/a/d/a$a;

.field public final e:Lcom/google/android/gms/internal/mlkit_common/zzds;

.field public final f:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;Le/m/h/a/d/a;Lcom/google/android/gms/internal/mlkit_common/zzds;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/m/h/a/d/b;->f:Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;

    .line 3
    iput-object p4, p0, Le/m/h/a/d/b;->e:Lcom/google/android/gms/internal/mlkit_common/zzds;

    .line 4
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Le/m/h/a/d/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Le/m/h/a/d/b;->b:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Le/m/h/a/d/b;->c:Ljava/lang/Runnable;

    .line 7
    new-instance p2, Le/m/h/a/d/r;

    invoke-direct {p2, p0}, Le/m/h/a/d/r;-><init>(Le/m/h/a/d/b;)V

    invoke-virtual {p3, p1, p2}, Le/m/h/a/d/a;->a(Ljava/lang/Object;Ljava/lang/Runnable;)Le/m/h/a/d/a$a;

    move-result-object p1

    iput-object p1, p0, Le/m/h/a/d/b;->d:Le/m/h/a/d/a$a;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/h/a/d/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Le/m/h/a/d/b;->d:Le/m/h/a/d/a$a;

    check-cast v0, Le/m/h/a/d/a$b;

    .line 3
    iget-object v1, v0, Le/m/h/a/d/a$b;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/PhantomReference;->clear()V

    .line 5
    iget-object v0, v0, Le/m/h/a/d/a$b;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
