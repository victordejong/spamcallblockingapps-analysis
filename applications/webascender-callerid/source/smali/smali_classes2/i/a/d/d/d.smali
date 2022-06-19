.class Li/a/d/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Li/a/d/d/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Li/a/d/d/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Li/a/d/d/d;->a:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Li/a/d/d/b;->a()Li/a/d/d/d;

    move-result-object v2

    sput-object v2, Li/a/d/d/d;->b:Li/a/d/d/d;

    .line 3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v3, v0, :cond_0

    .line 4
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Li/a/d/d/d;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Using the APIs optimized for: {0}"

    invoke-virtual {v1, v0, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Li/a/d/d/d;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/d/d;->b:Li/a/d/d/d;

    return-object v0
.end method


# virtual methods
.method a()J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    const-string v0, "Java 8"

    return-object v0
.end method
