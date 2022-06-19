.class public final Lcom/truecaller/log/AssertionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;,
        Lcom/truecaller/log/AssertionUtil$TcAssertionError;,
        Lcom/truecaller/log/AssertionUtil$OnlyInDebug;,
        Lcom/truecaller/log/AssertionUtil$AlwaysFatal;
    }
.end annotation


# static fields
.field private static final NOT_ON_MAIN_EXPLANATION:Ljava/lang/String; = "Should be executing on main thread, but isn\'t!"

.field private static final ON_MAIN_EXPLANATION:Ljava/lang/String; = "Should NOT be executing on main thread, but is! Naughty naughty!!"

.field private static sDisableAsserts:Z = false

.field private static sIsDebugBuild:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    return-void
.end method

.method public static synthetic access$500()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/log/AssertionUtil;->isOnMainThread()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$600()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    return v0
.end method

.method public static synthetic access$700(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->removeMyselfFromTopOfStacktrace(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static varargs isFalse(Z[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean p0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean p0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs isNull(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean p0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static isOnMainThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs isTrue(Z[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean p0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 4
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs notOnMainThread([Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/truecaller/log/AssertionUtil;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v1, 0x0

    const-string v2, "Should NOT be executing on main thread, but is! Naughty naughty!! "

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs onMainThread([Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/truecaller/log/AssertionUtil;->isOnMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v1, 0x0

    const-string v2, "Should be executing on main thread, but isn\'t! "

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs onSameThread(Ljava/lang/Thread;[Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    const-string v2, "Must be executed on thread ["

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] but was on thread ["

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    const-string v0, "Should NOT be executing on main thread, but is! Naughty naughty!! "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static removeMyselfFromTopOfStacktrace(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2
    const-class v1, Lcom/truecaller/log/AssertionUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 4
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v3, :cond_2

    .line 6
    array-length v1, v0

    sub-int/2addr v1, v3

    new-array v4, v1, [Ljava/lang/StackTraceElement;

    .line 7
    invoke-static {v0, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_2
    return-void
.end method

.method public static varargs report([Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs reportMessages([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    sget-boolean v3, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    if-nez v3, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "msg"

    .line 3
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static reportWeirdnessButNeverCrash(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setDisableAsserts(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    return-void
.end method

.method public static setIsDebugBuild(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    return-void
.end method

.method public static varargs shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportMessages([Ljava/lang/String;)V

    .line 3
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sIsDebugBuild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->summarize([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/truecaller/log/AssertionUtil$TcDryAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static summarize([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 2
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static throwHard(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/truecaller/log/AssertionUtil;->sDisableAsserts:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 3
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/truecaller/log/AssertionUtil$1;

    invoke-direct {v1, p0}, Lcom/truecaller/log/AssertionUtil$1;-><init>(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    throw p0
.end method
