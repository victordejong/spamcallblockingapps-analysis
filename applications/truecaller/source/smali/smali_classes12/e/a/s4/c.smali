.class public final Le/a/s4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s4/a;


# instance fields
.field public final a:Le/a/p4/b;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/m/d/b0/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/p4/b;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p4/b;",
            "Ljavax/inject/Provider<",
            "Le/m/d/b0/k;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "qaMenuSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseRemoteConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s4/c;->a:Le/a/p4/b;

    iput-object p2, p0, Le/a/s4/c;->b:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s4/c;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/b0/k;

    invoke-virtual {v0, p1}, Le/m/d/b0/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "firebaseRemoteConfig.get().getString(key)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :cond_1
    return p2
.end method

.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/s4/c;->a:Le/a/p4/b;

    invoke-interface {v0}, Le/a/p4/b;->d3()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 3
    :goto_0
    :try_start_0
    iget-object v2, p0, Le/a/s4/c;->b:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/b0/k;

    .line 4
    iget-object v3, v2, Le/m/d/b0/k;->g:Le/m/d/b0/r/l;

    .line 5
    iget-object v4, v3, Le/m/d/b0/r/l;->f:Le/m/d/b0/r/j;

    .line 6
    invoke-virtual {v4}, Le/m/d/b0/r/j;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    iget-object v5, v3, Le/m/d/b0/r/l;->c:Ljava/util/concurrent/Executor;

    new-instance v6, Le/m/d/b0/r/d;

    invoke-direct {v6, v3, v0, v1}, Le/m/d/b0/r/d;-><init>(Le/m/d/b0/r/l;J)V

    .line 7
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/tasks/Task;->m(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 8
    sget-object v1, Le/m/d/b0/a;->a:Le/m/d/b0/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->t(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 9
    new-instance v1, Le/a/s4/b;

    invoke-direct {v1, v2}, Le/a/s4/b;-><init>(Le/m/d/b0/k;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    new-instance v1, Lcom/truecaller/log/UnmutedException$e;

    invoke-direct {v1, v0}, Lcom/truecaller/log/UnmutedException$e;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s4/c;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/b0/k;

    invoke-virtual {v0, p1}, Le/m/d/b0/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s4/c;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/b0/k;

    invoke-virtual {v0, p1}, Le/m/d/b0/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/s4/c;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/b0/k;

    invoke-virtual {v0, p1}, Le/m/d/b0/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringUtils.defaultStrin\u2026fig.get().getString(key))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
