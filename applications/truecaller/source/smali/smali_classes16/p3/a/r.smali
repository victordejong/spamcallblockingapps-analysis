.class public final Lp3/a/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/r$b;,
        Lp3/a/r$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lp3/a/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lp3/a/r$b;

.field public static final e:J

.field public static final f:J

.field public static final g:J


# instance fields
.field public final a:Lp3/a/r$c;

.field public final b:J

.field public volatile c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lp3/a/r$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/a/r$b;-><init>(Lp3/a/r$a;)V

    sput-object v0, Lp3/a/r;->d:Lp3/a/r$b;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x8e94

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lp3/a/r;->e:J

    neg-long v0, v0

    .line 3
    sput-wide v0, Lp3/a/r;->f:J

    .line 4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lp3/a/r;->g:J

    return-void
.end method

.method public constructor <init>(Lp3/a/r$c;JZ)V
    .locals 6

    .line 1
    move-object v0, p1

    check-cast v0, Lp3/a/r$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lp3/a/r;->a:Lp3/a/r$c;

    .line 6
    sget-wide v2, Lp3/a/r;->e:J

    sget-wide v4, Lp3/a/r;->f:J

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long/2addr v0, p1

    .line 7
    iput-wide v0, p0, Lp3/a/r;->b:J

    if-eqz p4, :cond_0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lp3/a/r;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lp3/a/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/r;->a:Lp3/a/r$c;

    iget-object v1, p1, Lp3/a/r;->a:Lp3/a/r$c;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Tickers ("

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lp3/a/r;->a:Lp3/a/r$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lp3/a/r;->a:Lp3/a/r$c;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") don\'t match. Custom Ticker should only be used in tests!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public c(Lp3/a/r;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lp3/a/r;->a(Lp3/a/r;)V

    .line 2
    iget-wide v0, p0, Lp3/a/r;->b:J

    iget-wide v2, p1, Lp3/a/r;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lp3/a/r;

    invoke-virtual {p0, p1}, Lp3/a/r;->c(Lp3/a/r;)I

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lp3/a/r;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-wide v2, p0, Lp3/a/r;->b:J

    iget-object v0, p0, Lp3/a/r;->a:Lp3/a/r$c;

    check-cast v0, Lp3/a/r$b;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lp3/a/r;->c:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public e(Ljava/util/concurrent/TimeUnit;)J
    .locals 6

    .line 1
    iget-object v0, p0, Lp3/a/r;->a:Lp3/a/r$c;

    check-cast v0, Lp3/a/r$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    iget-boolean v2, p0, Lp3/a/r;->c:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lp3/a/r;->b:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lp3/a/r;->c:Z

    .line 6
    :cond_0
    iget-wide v2, p0, Lp3/a/r;->b:J

    sub-long/2addr v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lp3/a/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lp3/a/r;

    .line 3
    iget-object v1, p0, Lp3/a/r;->a:Lp3/a/r$c;

    if-nez v1, :cond_2

    iget-object v1, p1, Lp3/a/r;->a:Lp3/a/r$c;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lp3/a/r;->a:Lp3/a/r$c;

    if-eq v1, v3, :cond_3

    :goto_0
    return v2

    .line 4
    :cond_3
    iget-wide v3, p0, Lp3/a/r;->b:J

    iget-wide v5, p1, Lp3/a/r;->b:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/r;->a:Lp3/a/r$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lp3/a/r;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sget-wide v4, Lp3/a/r;->g:J

    div-long/2addr v2, v4

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    rem-long/2addr v6, v4

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    const/16 v0, 0x2d

    .line 5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, ".%09d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "s from now"

    .line 8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v0, p0, Lp3/a/r;->a:Lp3/a/r$c;

    sget-object v1, Lp3/a/r;->d:Lp3/a/r$b;

    if-eq v0, v1, :cond_2

    const-string v0, " (ticker="

    .line 10
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp3/a/r;->a:Lp3/a/r$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
