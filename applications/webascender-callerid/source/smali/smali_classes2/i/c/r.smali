.class public abstract Li/c/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/r$a;,
        Li/c/r$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-string v1, "rx2.scheduler.drift-tolerance"

    const-wide/16 v2, 0xf

    .line 2
    invoke-static {v1, v2, v3}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Li/c/r$b;
.end method

.method public b(Ljava/lang/Runnable;)Li/c/w/b;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Li/c/r;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/w/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/w/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/c/r;->a()Li/c/r$b;

    move-result-object v0

    .line 2
    invoke-static {p1}, Li/c/a0/a;->s(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    new-instance v1, Li/c/r$a;

    invoke-direct {v1, p1, v0}, Li/c/r$a;-><init>(Ljava/lang/Runnable;Li/c/r$b;)V

    .line 4
    invoke-virtual {v0, v1, p2, p3, p4}, Li/c/r$b;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/w/b;

    return-object v1
.end method
