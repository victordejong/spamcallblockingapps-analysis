.class public final Le/g/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/g/a/n;


# static fields
.field public static final b:Le/g/a/q;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/g/a/q;

    invoke-direct {v0}, Le/g/a/q;-><init>()V

    sput-object v0, Le/g/a/q;->b:Le/g/a/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Le/g/a/j;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Le/g/a/i;

    invoke-direct {v0}, Le/g/a/i;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Le/g/a/j;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Le/g/a/j;->b:Ljava/lang/String;

    sput-object v1, Le/g/a/j;->a:Ljava/lang/String;

    .line 4
    const-class v1, Le/g/a/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to read \'tests.seed\' property for initial random seed."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Le/g/a/j;->a:Ljava/lang/String;

    sget-object v1, Le/g/a/j;->b:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    xor-long/2addr v0, v2

    .line 8
    :goto_1
    invoke-static {v0, v1}, Ln3/g0/y;->k1(J)J

    move-result-wide v0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Le/g/a/q;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public clone()Le/g/a/n;
    .locals 0

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    return-object p0
.end method

.method public d(I)I
    .locals 2

    .line 1
    iget-object p1, p0, Le/g/a/q;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ln3/g0/y;->k1(J)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method
