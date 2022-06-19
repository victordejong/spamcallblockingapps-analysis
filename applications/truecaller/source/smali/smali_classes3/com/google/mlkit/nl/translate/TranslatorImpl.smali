.class public Lcom/google/mlkit/nl/translate/TranslatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/h/b/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/nl/translate/TranslatorImpl$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/h/b/b/e/q$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/mlkit/nl/translate/internal/TranslateJni;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/m/h/b/b/e/n;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Le/m/h/a/d/b;

.field public final f:Lcom/google/android/gms/tasks/CancellationToken;


# direct methods
.method public constructor <init>(Le/m/h/b/b/d;Le/m/d/v/b;Lcom/google/mlkit/nl/translate/internal/TranslateJni;Le/m/h/b/b/e/n;Ljava/util/concurrent/Executor;Le/m/h/b/b/e/l;Le/m/h/a/d/b$a;Le/m/h/b/b/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->a:Le/m/d/v/b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p4, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->c:Le/m/h/b/b/e/n;

    .line 6
    iput-object p5, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->d:Ljava/util/concurrent/Executor;

    .line 7
    iget-object p2, p6, Le/m/h/a/d/n/b;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 9
    new-instance p2, Lcom/google/android/gms/tasks/CancellationTokenSource;

    invoke-direct {p2}, Lcom/google/android/gms/tasks/CancellationTokenSource;-><init>()V

    .line 10
    new-instance p8, Le/m/h/b/b/t;

    invoke-direct {p8, p2, p1, p5}, Le/m/h/b/b/t;-><init>(Lcom/google/android/gms/tasks/CancellationTokenSource;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Executor;)V

    .line 11
    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance p1, Le/m/h/a/d/b;

    const/4 p3, 0x1

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;

    move-result-object p5

    iget-object p6, p7, Le/m/h/a/d/b$a;->a:Le/m/h/a/d/a;

    iget-object p7, p7, Le/m/h/a/d/b$a;->b:Lcom/google/android/gms/internal/mlkit_common/zzds;

    move-object p3, p1

    move-object p4, p0

    invoke-direct/range {p3 .. p8}, Le/m/h/a/d/b;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/mlkit_common/zzav$zzaj$zza;Le/m/h/a/d/a;Lcom/google/android/gms/internal/mlkit_common/zzds;Ljava/lang/Runnable;)V

    .line 14
    iput-object p1, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->e:Le/m/h/a/d/b;

    .line 15
    iget-object p1, p2, Lcom/google/android/gms/tasks/CancellationTokenSource;->a:Le/m/a/f/q/g;

    .line 16
    iput-object p1, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->f:Lcom/google/android/gms/tasks/CancellationToken;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl;->e:Le/m/h/a/d/b;

    invoke-virtual {v0}, Le/m/h/a/d/b;->close()V

    return-void
.end method
