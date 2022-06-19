.class public Lg/f/a/b/i/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/q;


# static fields
.field private static volatile e:Lg/f/a/b/i/s;


# instance fields
.field private final a:Lg/f/a/b/i/y/a;

.field private final b:Lg/f/a/b/i/y/a;

.field private final c:Lg/f/a/b/i/x/e;

.field private final d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lg/f/a/b/i/y/a;Lg/f/a/b/i/y/a;Lg/f/a/b/i/x/e;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/a/b/i/r;->a:Lg/f/a/b/i/y/a;

    .line 3
    iput-object p2, p0, Lg/f/a/b/i/r;->b:Lg/f/a/b/i/y/a;

    .line 4
    iput-object p3, p0, Lg/f/a/b/i/r;->c:Lg/f/a/b/i/x/e;

    .line 5
    iput-object p4, p0, Lg/f/a/b/i/r;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    .line 6
    invoke-virtual {p5}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/q;->a()V

    return-void
.end method

.method private b(Lg/f/a/b/i/l;)Lg/f/a/b/i/h;
    .locals 4

    .line 1
    invoke-static {}, Lg/f/a/b/i/h;->a()Lg/f/a/b/i/h$a;

    move-result-object v0

    iget-object v1, p0, Lg/f/a/b/i/r;->a:Lg/f/a/b/i/y/a;

    .line 2
    invoke-interface {v1}, Lg/f/a/b/i/y/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg/f/a/b/i/h$a;->i(J)Lg/f/a/b/i/h$a;

    iget-object v1, p0, Lg/f/a/b/i/r;->b:Lg/f/a/b/i/y/a;

    .line 3
    invoke-interface {v1}, Lg/f/a/b/i/y/a;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg/f/a/b/i/h$a;->k(J)Lg/f/a/b/i/h$a;

    .line 4
    invoke-virtual {p1}, Lg/f/a/b/i/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/a/b/i/h$a;->j(Ljava/lang/String;)Lg/f/a/b/i/h$a;

    new-instance v1, Lg/f/a/b/i/g;

    .line 5
    invoke-virtual {p1}, Lg/f/a/b/i/l;->b()Lg/f/a/b/b;

    move-result-object v2

    invoke-virtual {p1}, Lg/f/a/b/i/l;->d()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lg/f/a/b/i/g;-><init>(Lg/f/a/b/b;[B)V

    invoke-virtual {v0, v1}, Lg/f/a/b/i/h$a;->h(Lg/f/a/b/i/g;)Lg/f/a/b/i/h$a;

    .line 6
    invoke-virtual {p1}, Lg/f/a/b/i/l;->c()Lg/f/a/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/a/b/c;->a()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/f/a/b/i/h$a;->g(Ljava/lang/Integer;)Lg/f/a/b/i/h$a;

    .line 7
    invoke-virtual {v0}, Lg/f/a/b/i/h$a;->d()Lg/f/a/b/i/h;

    move-result-object p1

    return-object p1
.end method

.method public static c()Lg/f/a/b/i/r;
    .locals 2

    .line 1
    sget-object v0, Lg/f/a/b/i/r;->e:Lg/f/a/b/i/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lg/f/a/b/i/s;->b()Lg/f/a/b/i/r;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Lg/f/a/b/i/e;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/a/b/i/e;",
            ")",
            "Ljava/util/Set<",
            "Lg/f/a/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lg/f/a/b/i/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lg/f/a/b/i/f;

    .line 3
    invoke-interface {p0}, Lg/f/a/b/i/f;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "proto"

    .line 4
    invoke-static {p0}, Lg/f/a/b/b;->b(Ljava/lang/String;)Lg/f/a/b/b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lg/f/a/b/i/r;->e:Lg/f/a/b/i/s;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lg/f/a/b/i/r;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lg/f/a/b/i/r;->e:Lg/f/a/b/i/s;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lg/f/a/b/i/d;->c()Lg/f/a/b/i/s$a;

    move-result-object v1

    .line 5
    invoke-interface {v1, p0}, Lg/f/a/b/i/s$a;->d(Landroid/content/Context;)Lg/f/a/b/i/s$a;

    .line 6
    invoke-interface {v1}, Lg/f/a/b/i/s$a;->c()Lg/f/a/b/i/s;

    move-result-object p0

    sput-object p0, Lg/f/a/b/i/r;->e:Lg/f/a/b/i/s;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lg/f/a/b/i/l;Lg/f/a/b/h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/r;->c:Lg/f/a/b/i/x/e;

    .line 2
    invoke-virtual {p1}, Lg/f/a/b/i/l;->f()Lg/f/a/b/i/m;

    move-result-object v1

    invoke-virtual {p1}, Lg/f/a/b/i/l;->c()Lg/f/a/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lg/f/a/b/c;->c()Lg/f/a/b/d;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/f/a/b/i/m;->e(Lg/f/a/b/d;)Lg/f/a/b/i/m;

    move-result-object v1

    .line 3
    invoke-direct {p0, p1}, Lg/f/a/b/i/r;->b(Lg/f/a/b/i/l;)Lg/f/a/b/i/h;

    move-result-object p1

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lg/f/a/b/i/x/e;->a(Lg/f/a/b/i/m;Lg/f/a/b/i/h;Lg/f/a/b/h;)V

    return-void
.end method

.method public e()Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/f/a/b/i/r;->d:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/m;

    return-object v0
.end method

.method public g(Lg/f/a/b/i/e;)Lg/f/a/b/g;
    .locals 4

    .line 1
    new-instance v0, Lg/f/a/b/i/n;

    .line 2
    invoke-static {p1}, Lg/f/a/b/i/r;->d(Lg/f/a/b/i/e;)Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {}, Lg/f/a/b/i/m;->a()Lg/f/a/b/i/m$a;

    move-result-object v2

    .line 4
    invoke-interface {p1}, Lg/f/a/b/i/e;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/f/a/b/i/m$a;->b(Ljava/lang/String;)Lg/f/a/b/i/m$a;

    .line 5
    invoke-interface {p1}, Lg/f/a/b/i/e;->b()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/f/a/b/i/m$a;->c([B)Lg/f/a/b/i/m$a;

    .line 6
    invoke-virtual {v2}, Lg/f/a/b/i/m$a;->a()Lg/f/a/b/i/m;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, Lg/f/a/b/i/n;-><init>(Ljava/util/Set;Lg/f/a/b/i/m;Lg/f/a/b/i/q;)V

    return-object v0
.end method
