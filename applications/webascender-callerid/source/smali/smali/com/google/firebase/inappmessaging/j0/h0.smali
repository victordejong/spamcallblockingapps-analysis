.class public Lcom/google/firebase/inappmessaging/j0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/t;


# static fields
.field private static j:Z


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/w0;

.field private final b:Lcom/google/firebase/inappmessaging/j0/r3/a;

.field private final c:Lcom/google/firebase/inappmessaging/j0/l3;

.field private final d:Lcom/google/firebase/inappmessaging/j0/j3;

.field private final e:Lcom/google/firebase/inappmessaging/model/m;

.field private final f:Lcom/google/firebase/inappmessaging/j0/q2;

.field private final g:Lcom/google/firebase/inappmessaging/j0/n;

.field private final h:Lcom/google/firebase/inappmessaging/model/i;

.field private final i:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/firebase/inappmessaging/j0/w0;Lcom/google/firebase/inappmessaging/j0/r3/a;Lcom/google/firebase/inappmessaging/j0/l3;Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/k;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/q2;Lcom/google/firebase/inappmessaging/j0/n;Lcom/google/firebase/inappmessaging/model/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/h0;->a:Lcom/google/firebase/inappmessaging/j0/w0;

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/h0;->b:Lcom/google/firebase/inappmessaging/j0/r3/a;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/j0/h0;->c:Lcom/google/firebase/inappmessaging/j0/l3;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/j0/h0;->d:Lcom/google/firebase/inappmessaging/j0/j3;

    .line 6
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/j0/h0;->e:Lcom/google/firebase/inappmessaging/model/m;

    .line 7
    iput-object p7, p0, Lcom/google/firebase/inappmessaging/j0/h0;->f:Lcom/google/firebase/inappmessaging/j0/q2;

    .line 8
    iput-object p8, p0, Lcom/google/firebase/inappmessaging/j0/h0;->g:Lcom/google/firebase/inappmessaging/j0/n;

    .line 9
    iput-object p9, p0, Lcom/google/firebase/inappmessaging/j0/h0;->h:Lcom/google/firebase/inappmessaging/model/i;

    .line 10
    iput-object p10, p0, Lcom/google/firebase/inappmessaging/j0/h0;->i:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    sput-boolean p1, Lcom/google/firebase/inappmessaging/j0/h0;->j:Z

    return-void
.end method

.method static synthetic e(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->f:Lcom/google/firebase/inappmessaging/j0/q2;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->h:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/q2;->q(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t$b;)V

    return-void
.end method

.method static synthetic f(Lcom/google/firebase/inappmessaging/j0/h0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->f:Lcom/google/firebase/inappmessaging/j0/q2;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->h:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/j0/q2;->o(Lcom/google/firebase/inappmessaging/model/i;)V

    return-void
.end method

.method static synthetic g(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->f:Lcom/google/firebase/inappmessaging/j0/q2;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->h:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/q2;->p(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/model/a;)V

    return-void
.end method

.method static synthetic h(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "Impression store write failure"

    .line 1
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/l2;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic i()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Impression store write success"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "Rate limiter client write failure"

    .line 1
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/l2;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Rate limiter client write success"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/google/android/gms/tasks/h;Ljava/lang/Throwable;)Li/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/h;->b(Ljava/lang/Exception;)V

    .line 4
    :goto_0
    invoke-static {}, Li/c/j;->g()Li/c/j;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/google/android/gms/tasks/h;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic n(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->f:Lcom/google/firebase/inappmessaging/j0/q2;

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->h:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/inappmessaging/j0/q2;->m(Lcom/google/firebase/inappmessaging/model/i;Lcom/google/firebase/inappmessaging/t$a;)V

    return-void
.end method

.method static synthetic o()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/google/firebase/inappmessaging/j0/h0;->j:Z

    return-void
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/inappmessaging/j0/h0;->q(Ljava/lang/String;Li/c/j;)V

    return-void
.end method

.method private q(Ljava/lang/String;Li/c/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Li/c/j<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    const-string p1, "Not recording: %s. Reason: %s"

    .line 1
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/j0/h0;->h:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/i;->a()Lcom/google/firebase/inappmessaging/model/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/e;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Not recording: %s. Reason: Message is test message"

    .line 3
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/j0/h0;->g:Lcom/google/firebase/inappmessaging/j0/n;

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/j0/n;->a()Z

    move-result p2

    if-nez p2, :cond_2

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Not recording: %s. Reason: Data collection is disabled"

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Not recording: %s"

    .line 6
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private r(Li/c/b;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/google/firebase/inappmessaging/j0/h0;->j:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->d()Lcom/google/android/gms/tasks/g;

    .line 3
    :cond_0
    invoke-virtual {p1}, Li/c/b;->n()Li/c/j;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->c:Lcom/google/firebase/inappmessaging/j0/l3;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/j0/l3;->a()Li/c/r;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/j0/h0;->u(Li/c/j;Li/c/r;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method private s(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/a;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Attempting to record: message click to metrics logger"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/b0;->a(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/model/a;)Li/c/y/a;

    move-result-object p1

    .line 3
    invoke-static {p1}, Li/c/b;->g(Li/c/y/a;)Li/c/b;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/h0;->r(Li/c/b;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method private t()Li/c/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->h:Lcom/google/firebase/inappmessaging/model/i;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/i;->a()Lcom/google/firebase/inappmessaging/model/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record message impression in impression store for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/h0;->a:Lcom/google/firebase/inappmessaging/j0/w0;

    .line 4
    invoke-static {}, Lg/f/e/a/a/a/e/a;->a0()Lg/f/e/a/a/a/e/a$b;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/inappmessaging/j0/h0;->b:Lcom/google/firebase/inappmessaging/j0/r3/a;

    .line 5
    invoke-interface {v3}, Lcom/google/firebase/inappmessaging/j0/r3/a;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lg/f/e/a/a/a/e/a$b;->H(J)Lg/f/e/a/a/a/e/a$b;

    .line 6
    invoke-virtual {v2, v0}, Lg/f/e/a/a/a/e/a$b;->G(Ljava/lang/String;)Lg/f/e/a/a/a/e/a$b;

    .line 7
    invoke-virtual {v2}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lg/f/e/a/a/a/e/a;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/firebase/inappmessaging/j0/w0;->m(Lg/f/e/a/a/a/e/a;)Li/c/b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/d0;->a()Li/c/y/c;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Li/c/b;->e(Li/c/y/c;)Li/c/b;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/e0;->a()Li/c/y/a;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Li/c/b;->d(Li/c/y/a;)Li/c/b;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/h0;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/j0/i2;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/h0;->d:Lcom/google/firebase/inappmessaging/j0/j3;

    iget-object v2, p0, Lcom/google/firebase/inappmessaging/j0/h0;->e:Lcom/google/firebase/inappmessaging/model/m;

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/j3;->e(Lcom/google/firebase/inappmessaging/model/m;)Li/c/b;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/f0;->a()Li/c/y/c;

    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Li/c/b;->e(Li/c/y/c;)Li/c/b;

    move-result-object v1

    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/g0;->a()Li/c/y/a;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Li/c/b;->d(Li/c/y/a;)Li/c/b;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Li/c/b;->i()Li/c/b;

    move-result-object v1

    .line 17
    invoke-virtual {v1, v0}, Li/c/b;->b(Li/c/d;)Li/c/b;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static u(Li/c/j;Li/c/r;)Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li/c/j<",
            "TT;>;",
            "Li/c/r;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/v;->a(Lcom/google/android/gms/tasks/h;)Li/c/y/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Li/c/j;->f(Li/c/y/c;)Li/c/j;

    move-result-object p0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/w;->a(Lcom/google/android/gms/tasks/h;)Ljava/util/concurrent/Callable;

    move-result-object v1

    .line 3
    invoke-static {v1}, Li/c/j;->l(Ljava/util/concurrent/Callable;)Li/c/j;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Li/c/j;->x(Li/c/n;)Li/c/j;

    move-result-object p0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/x;->a(Lcom/google/android/gms/tasks/h;)Li/c/y/d;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Li/c/j;->r(Li/c/y/d;)Li/c/j;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Li/c/j;->v(Li/c/r;)Li/c/j;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Li/c/j;->s()Li/c/w/b;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p0

    return-object p0
.end method

.method private v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->g:Lcom/google/firebase/inappmessaging/j0/n;

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/j0/n;->a()Z

    move-result v0

    return v0
.end method

.method private w()Li/c/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/z;->a()Li/c/y/a;

    move-result-object v0

    invoke-static {v0}, Li/c/b;->g(Li/c/y/a;)Li/c/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/a;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/a;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/google/firebase/inappmessaging/t$a;->CLICK:Lcom/google/firebase/inappmessaging/t$a;

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/j0/h0;->c(Lcom/google/firebase/inappmessaging/t$a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/h0;->s(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "message click to metrics logger"

    .line 5
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/h0;->p(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/google/android/gms/tasks/h;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/google/firebase/inappmessaging/t$b;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/t$b;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->v()Z

    move-result v0

    const-string v1, "render error to metrics logger"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/c0;->a(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$b;)Li/c/y/a;

    move-result-object p1

    .line 4
    invoke-static {p1}, Li/c/b;->g(Li/c/y/a;)Li/c/b;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->t()Li/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Li/c/b;->b(Li/c/d;)Li/c/b;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->w()Li/c/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b;->b(Li/c/d;)Li/c/b;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b;->n()Li/c/j;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/h0;->c:Lcom/google/firebase/inappmessaging/j0/l3;

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/j0/l3;->a()Li/c/r;

    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/google/firebase/inappmessaging/j0/h0;->u(Li/c/j;Li/c/r;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/j0/h0;->p(Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/google/android/gms/tasks/h;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/google/firebase/inappmessaging/t$a;)Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/t$a;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->v()Z

    move-result v0

    const-string v1, "message dismissal to metrics logger"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/a0;->a(Lcom/google/firebase/inappmessaging/j0/h0;Lcom/google/firebase/inappmessaging/t$a;)Li/c/y/a;

    move-result-object p1

    .line 4
    invoke-static {p1}, Li/c/b;->g(Li/c/y/a;)Li/c/b;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/h0;->r(Li/c/b;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/j0/h0;->p(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/google/android/gms/tasks/h;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/h;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/google/android/gms/tasks/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->v()Z

    move-result v0

    const-string v1, "message impression to metrics logger"

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/firebase/inappmessaging/j0/h0;->j:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to record: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/y;->a(Lcom/google/firebase/inappmessaging/j0/h0;)Li/c/y/a;

    move-result-object v0

    .line 4
    invoke-static {v0}, Li/c/b;->g(Li/c/y/a;)Li/c/b;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->t()Li/c/b;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v0}, Li/c/b;->b(Li/c/d;)Li/c/b;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/h0;->w()Li/c/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b;->b(Li/c/d;)Li/c/b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Li/c/b;->n()Li/c/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/h0;->c:Lcom/google/firebase/inappmessaging/j0/l3;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/j0/l3;->a()Li/c/r;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/inappmessaging/j0/h0;->u(Li/c/j;Li/c/r;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0

    .line 9
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/firebase/inappmessaging/j0/h0;->p(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/google/android/gms/tasks/h;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/h;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/h;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method
