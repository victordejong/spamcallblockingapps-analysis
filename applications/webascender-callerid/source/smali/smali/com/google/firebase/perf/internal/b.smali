.class public abstract Lcom/google/firebase/perf/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/perf/internal/a$a;


# instance fields
.field private mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

.field private mIsRegisteredForAppState:Z

.field private mState:Lcom/google/firebase/perf/j/d;

.field private mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/perf/internal/a;->b()Lcom/google/firebase/perf/internal/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/perf/internal/b;-><init>(Lcom/google/firebase/perf/internal/a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/firebase/perf/internal/a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/firebase/perf/j/d;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/j/d;

    iput-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/j/d;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    .line 5
    iput-object p1, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/perf/internal/b;->mWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAppState()Lcom/google/firebase/perf/j/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/j/d;

    return-object v0
.end method

.method protected incrementTsnsCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/a;->f(I)V

    return-void
.end method

.method public onUpdateAppState(Lcom/google/firebase/perf/j/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/j/d;

    sget-object v1, Lcom/google/firebase/perf/j/d;->APPLICATION_PROCESS_STATE_UNKNOWN:Lcom/google/firebase/perf/j/d;

    if-ne v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/j/d;

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    if-eq p1, v1, :cond_1

    .line 3
    sget-object p1, Lcom/google/firebase/perf/j/d;->FOREGROUND_BACKGROUND:Lcom/google/firebase/perf/j/d;

    iput-object p1, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/j/d;

    :cond_1
    :goto_0
    return-void
.end method

.method protected registerForAppState()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/a;->a()Lcom/google/firebase/perf/j/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/internal/b;->mState:Lcom/google/firebase/perf/j/d;

    .line 3
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/b;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/a;->j(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    return-void
.end method

.method protected unregisterForAppState()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/internal/b;->mAppStateMonitor:Lcom/google/firebase/perf/internal/a;

    iget-object v1, p0, Lcom/google/firebase/perf/internal/b;->mWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/a;->m(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/firebase/perf/internal/b;->mIsRegisteredForAppState:Z

    return-void
.end method
