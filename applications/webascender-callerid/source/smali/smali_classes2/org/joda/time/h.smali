.class public abstract Lorg/joda/time/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/joda/time/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c(JI)J
.end method

.method public abstract d(JJ)J
.end method

.method public abstract h(JJ)I
.end method

.method public abstract j(JJ)J
.end method

.method public abstract k()Lorg/joda/time/i;
.end method

.method public abstract m()J
.end method

.method public abstract n()Z
.end method

.method public abstract p()Z
.end method

.method public q(JI)J
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    int-to-long v0, p3

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/joda/time/h;->s(JJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    neg-int p3, p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/h;->c(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public s(JJ)J
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p3, v0

    if-eqz v2, :cond_0

    neg-long p3, p3

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/joda/time/h;->d(JJ)J

    move-result-wide p1

    return-wide p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Long.MIN_VALUE cannot be negated"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
