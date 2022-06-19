.class public final Li/c/z/g/k;
.super Li/c/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/g/k$a;,
        Li/c/z/g/k$b;,
        Li/c/z/g/k$c;
    }
.end annotation


# static fields
.field private static final a:Li/c/z/g/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/z/g/k;

    invoke-direct {v0}, Li/c/z/g/k;-><init>()V

    sput-object v0, Li/c/z/g/k;->a:Li/c/z/g/k;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/r;-><init>()V

    return-void
.end method

.method public static d()Li/c/z/g/k;
    .locals 1

    .line 1
    sget-object v0, Li/c/z/g/k;->a:Li/c/z/g/k;

    return-object v0
.end method


# virtual methods
.method public a()Li/c/r$b;
    .locals 1

    .line 1
    new-instance v0, Li/c/z/g/k$c;

    invoke-direct {v0}, Li/c/z/g/k$c;-><init>()V

    return-object v0
.end method

.method public b(Ljava/lang/Runnable;)Li/c/w/b;
    .locals 0

    .line 1
    invoke-static {p1}, Li/c/a0/a;->s(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/w/b;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 2
    invoke-static {p1}, Li/c/a0/a;->s(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 4
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    sget-object p1, Li/c/z/a/c;->INSTANCE:Li/c/z/a/c;

    return-object p1
.end method
