.class public Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a0;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/h/b/a/a;

.field public final b:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/android/gms/tasks/CancellationTokenSource;


# direct methods
.method public constructor <init>(Le/m/h/b/a/a;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Lcom/google/android/gms/internal/mlkit_language_id/zzcv;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->a:Le/m/h/b/a/a;

    .line 3
    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->b:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    .line 4
    iput-object p4, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->c:Ljava/util/concurrent/Executor;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->e:Lcom/google/android/gms/tasks/CancellationTokenSource;

    return-void
.end method


# virtual methods
.method public final b(JZLcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;Lcom/google/android/gms/internal/mlkit_language_id/zzai;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, v0, p1

    .line 2
    new-instance v0, Le/m/h/b/a/g;

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move v6, p3

    move-object/from16 v7, p6

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Le/m/h/b/a/g;-><init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;JZLcom/google/android/gms/internal/mlkit_language_id/zzai;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzd;Lcom/google/android/gms/internal/mlkit_language_id/zzy$zzau$zzc;)V

    move-object v1, p0

    .line 3
    iget-object v2, v1, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->b:Lcom/google/android/gms/internal/mlkit_language_id/zzcv;

    sget-object v3, Lcom/google/android/gms/internal/mlkit_language_id/zzaj;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzaj;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/mlkit_language_id/zzcv;->zza(Lcom/google/android/gms/internal/mlkit_language_id/zzcv$zza;Lcom/google/android/gms/internal/mlkit_language_id/zzaj;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->e:Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/CancellationTokenSource;->a()V

    .line 4
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Le/m/h/a/d/j;->e(Ljava/util/concurrent/Executor;)V

    return-void
.end method
