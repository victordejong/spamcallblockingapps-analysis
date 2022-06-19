.class public final Lp3/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lp3/c/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    sget-object v0, Lp3/c/a;->a:Lp3/c/d;

    .line 2
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "io.perfmark.impl.SecretPerfMarkImpl$PerfMarkImpl"

    .line 3
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_1

    :catchall_0
    move-exception v3

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object v4, v1

    move-object v1, v3

    :goto_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_0

    .line 5
    :try_start_1
    const-class v5, Lp3/c/a;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lp3/c/d;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v8

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/c/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v4, v3

    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    .line 6
    sput-object v2, Lp3/c/c;->a:Lp3/c/a;

    goto :goto_3

    .line 7
    :cond_1
    new-instance v2, Lp3/c/a;

    invoke-direct {v2, v0}, Lp3/c/a;-><init>(Lp3/c/d;)V

    sput-object v2, Lp3/c/c;->a:Lp3/c/a;

    :goto_3
    if-eqz v4, :cond_2

    .line 8
    const-class v0, Lp3/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const-string v2, "Error during PerfMark.<clinit>"

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lp3/c/b;
    .locals 1

    .line 1
    sget-object v0, Lp3/c/c;->a:Lp3/c/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lp3/c/a;->b:Lp3/c/b;

    return-object v0
.end method
