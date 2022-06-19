.class public abstract Li/c/b0/b/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/b/d0$a;,
        Li/c/b0/b/d0$b;,
        Li/c/b0/b/d0$c;
    }
.end annotation


# static fields
.field static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "rx3.scheduler.drift-tolerance"

    const-wide/16 v1, 0xf

    .line 1
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "rx3.scheduler.drift-tolerance-unit"

    const-string v3, "minutes"

    .line 2
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v0, v1, v2}, Li/c/b0/b/d0;->a(JLjava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Li/c/b0/b/d0;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(JLjava/lang/String;)J
    .locals 1

    const-string v0, "seconds"

    .line 1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string v0, "milliseconds"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 5
    :cond_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public abstract b()Li/c/b0/b/d0$c;
.end method

.method public c(Ljava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/Runnable;)Li/c/b0/c/c;
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Li/c/b0/b/d0;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    new-instance v1, Li/c/b0/b/d0$a;

    invoke-direct {v1, p1, v0}, Li/c/b0/b/d0$a;-><init>(Ljava/lang/Runnable;Li/c/b0/b/d0$c;)V

    .line 4
    invoke-virtual {v0, v1, p2, p3, p4}, Li/c/b0/b/d0$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    return-object v1
.end method

.method public f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;
    .locals 8

    .line 1
    invoke-virtual {p0}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object v0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->v(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    .line 3
    new-instance v7, Li/c/b0/b/d0$b;

    invoke-direct {v7, p1, v0}, Li/c/b0/b/d0$b;-><init>(Ljava/lang/Runnable;Li/c/b0/b/d0$c;)V

    move-object v1, v7

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 4
    invoke-virtual/range {v0 .. v6}, Li/c/b0/b/d0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    .line 5
    sget-object p2, Li/c/b0/e/a/d;->INSTANCE:Li/c/b0/e/a/d;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    return-object v7
.end method
