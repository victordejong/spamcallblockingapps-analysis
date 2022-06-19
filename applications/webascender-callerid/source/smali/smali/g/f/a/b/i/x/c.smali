.class public Lg/f/a/b/i/x/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/x/e;


# static fields
.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/datatransport/runtime/backends/e;

.field private final d:Lg/f/a/b/i/x/j/c;

.field private final e:Lcom/google/android/datatransport/runtime/synchronization/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lg/f/a/b/i/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lg/f/a/b/i/x/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/datatransport/runtime/backends/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;Lg/f/a/b/i/x/j/c;Lcom/google/android/datatransport/runtime/synchronization/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/a/b/i/x/c;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lg/f/a/b/i/x/c;->c:Lcom/google/android/datatransport/runtime/backends/e;

    .line 4
    iput-object p3, p0, Lg/f/a/b/i/x/c;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    .line 5
    iput-object p4, p0, Lg/f/a/b/i/x/c;->d:Lg/f/a/b/i/x/j/c;

    .line 6
    iput-object p5, p0, Lg/f/a/b/i/x/c;->e:Lcom/google/android/datatransport/runtime/synchronization/a;

    return-void
.end method

.method static synthetic b(Lg/f/a/b/i/x/c;Lg/f/a/b/i/m;Lg/f/a/b/i/h;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/x/c;->d:Lg/f/a/b/i/x/j/c;

    invoke-interface {v0, p1, p2}, Lg/f/a/b/i/x/j/c;->V0(Lg/f/a/b/i/m;Lg/f/a/b/i/h;)Lg/f/a/b/i/x/j/i;

    .line 2
    iget-object p0, p0, Lg/f/a/b/i/x/c;->a:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/s;->a(Lg/f/a/b/i/m;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lg/f/a/b/i/x/c;Lg/f/a/b/i/m;Lg/f/a/b/h;Lg/f/a/b/i/h;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/f/a/b/i/x/c;->c:Lcom/google/android/datatransport/runtime/backends/e;

    .line 2
    invoke-virtual {p1}, Lg/f/a/b/i/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/datatransport/runtime/backends/e;->get(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/backends/m;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Transport backend \'%s\' is not registered"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1}, Lg/f/a/b/i/m;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v0

    .line 4
    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 5
    sget-object p1, Lg/f/a/b/i/x/c;->f:Ljava/util/logging/Logger;

    invoke-virtual {p1, p0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lg/f/a/b/h;->a(Ljava/lang/Exception;)V

    return-void

    .line 7
    :cond_0
    invoke-interface {v0, p3}, Lcom/google/android/datatransport/runtime/backends/m;->b(Lg/f/a/b/i/h;)Lg/f/a/b/i/h;

    move-result-object p3

    .line 8
    iget-object v0, p0, Lg/f/a/b/i/x/c;->e:Lcom/google/android/datatransport/runtime/synchronization/a;

    invoke-static {p0, p1, p3}, Lg/f/a/b/i/x/b;->a(Lg/f/a/b/i/x/c;Lg/f/a/b/i/m;Lg/f/a/b/i/h;)Lcom/google/android/datatransport/runtime/synchronization/a$a;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/datatransport/runtime/synchronization/a;->a(Lcom/google/android/datatransport/runtime/synchronization/a$a;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 9
    invoke-interface {p2, p0}, Lg/f/a/b/h;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lg/f/a/b/i/x/c;->f:Ljava/util/logging/Logger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error scheduling event "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 11
    invoke-interface {p2, p0}, Lg/f/a/b/h;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lg/f/a/b/i/m;Lg/f/a/b/i/h;Lg/f/a/b/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/x/c;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1, p3, p2}, Lg/f/a/b/i/x/a;->a(Lg/f/a/b/i/x/c;Lg/f/a/b/i/m;Lg/f/a/b/h;Lg/f/a/b/i/h;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
