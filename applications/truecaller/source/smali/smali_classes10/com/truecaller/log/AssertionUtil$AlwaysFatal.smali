.class public Lcom/truecaller/log/AssertionUtil$AlwaysFatal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/log/AssertionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlwaysFatal"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs fail([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 3
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    return-void
.end method

.method public static varargs isFalse(Z[Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 3
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    :cond_0
    return-void
.end method

.method public static varargs isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 3
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    :cond_0
    return-void
.end method

.method public static varargs isNull(Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 3
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    :cond_0
    return-void
.end method

.method public static varargs isTrue(Z[Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 3
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    :cond_0
    return-void
.end method

.method public static varargs notOnMainThread([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/truecaller/log/AssertionUtil;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    const-string v1, "Should NOT be executing on main thread, but is! Naughty naughty!! "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    :cond_0
    return-void
.end method

.method public static varargs onMainThread([Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/truecaller/log/AssertionUtil;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    const-string v1, "Should be executing on main thread, but isn\'t! "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 5
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    :cond_0
    return-void
.end method

.method public static varargs shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$200([Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/truecaller/log/AssertionUtil$TcAssertionError;

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->access$300([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/truecaller/log/AssertionUtil$TcAssertionError;-><init>(Ljava/lang/Object;Lcom/truecaller/log/AssertionUtil$1;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->access$400(Lcom/truecaller/log/AssertionUtil$TcAssertionError;)V

    return-void
.end method
