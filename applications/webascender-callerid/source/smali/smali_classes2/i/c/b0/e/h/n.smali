.class public final Li/c/b0/e/h/n;
.super Li/c/b0/b/d0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/h/n$a;,
        Li/c/b0/e/h/n$b;,
        Li/c/b0/e/h/n$c;
    }
.end annotation


# static fields
.field private static final b:Li/c/b0/e/h/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/h/n;

    invoke-direct {v0}, Li/c/b0/e/h/n;-><init>()V

    sput-object v0, Li/c/b0/e/h/n;->b:Li/c/b0/e/h/n;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/d0;-><init>()V

    return-void
.end method

.method public static g()Li/c/b0/e/h/n;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/e/h/n;->b:Li/c/b0/e/h/n;

    return-object v0
.end method


# virtual methods
.method public b()Li/c/b0/b/d0$c;
    .locals 1

    .line 1
    new-instance v0, Li/c/b0/e/h/n$c;

    invoke-direct {v0}, Li/c/b0/e/h/n$c;-><init>()V

    return-object v0
.end method

.method public d(Ljava/lang/Runnable;)Li/c/b0/c/c;
    .locals 0

    .line 1
    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1
.end method

.method public e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

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
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    sget-object p1, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    return-object p1
.end method
