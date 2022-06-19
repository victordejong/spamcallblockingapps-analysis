.class public Lcom/google/android/gms/common/internal/PendingResultUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/common/internal/zas;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/f/e/b/g;

    invoke-direct {v0}, Le/m/a/f/e/b/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/PendingResultUtil;->a:Lcom/google/android/gms/common/internal/zas;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p0    # Lcom/google/android/gms/common/api/PendingResult;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/common/api/Response;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/Response<",
            "TR;>;>(",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "TR;>;TT;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Le/m/a/f/e/b/i;

    .line 1
    invoke-direct {v0, p1}, Le/m/a/f/e/b/i;-><init>(Lcom/google/android/gms/common/api/Response;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/common/internal/PendingResultUtil;->a:Lcom/google/android/gms/common/internal/zas;

    .line 3
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    new-instance v2, Le/m/a/f/e/b/h;

    .line 4
    invoke-direct {v2, p0, v1, v0, p1}, Le/m/a/f/e/b/h;-><init>(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/common/internal/PendingResultUtil$ResultConverter;Lcom/google/android/gms/common/internal/zas;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/api/PendingResult;->addStatusListener(Lcom/google/android/gms/common/api/PendingResult$StatusListener;)V

    .line 5
    iget-object p0, v1, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object p0
.end method
