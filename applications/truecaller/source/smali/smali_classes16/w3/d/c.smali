.class public final Lw3/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:I

.field public static final b:Lw3/d/e/f;

.field public static final c:Lw3/d/e/c;

.field public static d:Z

.field public static final e:[Ljava/lang/String;

.field public static f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw3/d/e/f;

    invoke-direct {v0}, Lw3/d/e/f;-><init>()V

    sput-object v0, Lw3/d/c;->b:Lw3/d/e/f;

    .line 2
    new-instance v0, Lw3/d/e/c;

    invoke-direct {v0}, Lw3/d/e/c;-><init>()V

    sput-object v0, Lw3/d/c;->c:Lw3/d/e/c;

    const-string v0, "slf4j.detectLoggerNameMismatch"

    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "true"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 5
    :goto_1
    sput-boolean v0, Lw3/d/c;->d:Z

    const-string v0, "1.6"

    const-string v1, "1.7"

    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw3/d/c;->e:[Ljava/lang/String;

    const-string v0, "org/slf4j/impl/StaticLoggerBinder.class"

    .line 7
    sput-object v0, Lw3/d/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    :try_start_0
    const-class v1, Lw3/d/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lw3/d/c;->f:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lw3/d/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error getting resources from path"

    .line 8
    invoke-static {v2, v1}, Lw3/d/e/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lw3/d/b;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lw3/d/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/d/c;->c(Ljava/lang/String;)Lw3/d/b;

    move-result-object v0

    .line 2
    sget-boolean v1, Lw3/d/c;->d:Z

    if-eqz v1, :cond_6

    .line 3
    sget-object v1, Lw3/d/e/g;->a:Lw3/d/e/g$b;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-boolean v1, Lw3/d/e/g;->b:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    new-instance v1, Lw3/d/e/g$b;

    invoke-direct {v1, v2}, Lw3/d/e/g$b;-><init>(Lw3/d/e/g$a;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    .line 6
    :goto_0
    sput-object v1, Lw3/d/e/g;->a:Lw3/d/e/g$b;

    .line 7
    sput-boolean v3, Lw3/d/e/g;->b:Z

    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-nez v1, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    invoke-virtual {v1}, Lw3/d/e/g$b;->getClassContext()[Ljava/lang/Class;

    move-result-object v1

    .line 9
    const-class v2, Lw3/d/e/g;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move v6, v5

    .line 10
    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_4

    .line 11
    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 12
    :cond_4
    :goto_3
    array-length v2, v1

    if-ge v6, v2, :cond_5

    add-int/2addr v6, v4

    array-length v2, v1

    if-ge v6, v2, :cond_5

    .line 13
    aget-object v2, v1, v6

    :goto_4
    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    xor-int/2addr p0, v3

    if-eqz p0, :cond_6

    new-array p0, v4, [Ljava/lang/Object;

    .line 15
    invoke-interface {v0}, Lw3/d/b;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v5

    .line 16
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v3

    const-string v1, "Detected logger name mismatch. Given name: \"%s\"; computed name: \"%s\"."

    .line 17
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string p0, "See http://www.slf4j.org/codes.html#loggerNameMismatch for an explanation"

    .line 18
    invoke-static {p0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 19
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_5
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lw3/d/b;
    .locals 3

    .line 1
    sget v0, Lw3/d/c;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lw3/d/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget v2, Lw3/d/c;->a:I

    if-nez v2, :cond_0

    .line 4
    sput v1, Lw3/d/c;->a:I

    .line 5
    invoke-static {}, Lw3/d/c;->e()V

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget v0, Lw3/d/c;->a:I

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 8
    sget-object v0, Lw3/d/c;->c:Lw3/d/e/c;

    goto :goto_1

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unreachable code"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3
    sget-object v0, Lw3/d/f/a;->b:Lw3/d/f/a;

    .line 11
    iget-object v0, v0, Lw3/d/f/a;->a:Lw3/d/a;

    goto :goto_1

    .line 12
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "org.slf4j.LoggerFactory in failed state. Original exception was thrown EARLIER. See also http://www.slf4j.org/codes.html#unsuccessfulInit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_5
    sget-object v0, Lw3/d/c;->b:Lw3/d/e/f;

    .line 14
    :goto_1
    invoke-interface {v0, p0}, Lw3/d/a;->a(Ljava/lang/String;)Lw3/d/b;

    move-result-object p0

    return-object p0
.end method

.method public static d()Z
    .locals 2

    const-string v0, "java.vendor.url"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final e()V
    .locals 8

    const-string v0, "Failed to instantiate SLF4J LoggerFactory"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Lw3/d/c;->d()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2
    invoke-static {}, Lw3/d/c;->a()Ljava/util/Set;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lw3/d/c;->h(Ljava/util/Set;)V

    .line 4
    :cond_0
    sget-object v6, Lw3/d/f/a;->b:Lw3/d/f/a;

    .line 5
    sput v3, Lw3/d/c;->a:I

    .line 6
    invoke-static {v1}, Lw3/d/c;->g(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v1

    .line 7
    :try_start_1
    sput v2, Lw3/d/c;->a:I

    .line 8
    invoke-static {v0, v1}, Lw3/d/e/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected initialization failure"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "org.slf4j.impl.StaticLoggerBinder.getSingleton()"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    sput v2, Lw3/d/c;->a:I

    const-string v1, "slf4j-api 1.6.x (or later) is incompatible with this binding."

    .line 13
    invoke-static {v1}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v1, "Your binding is version 1.5.5 or earlier."

    .line 14
    invoke-static {v1}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v1, "Upgrade your binding to version 1.6.x."

    .line 15
    invoke-static {v1}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    .line 16
    :cond_1
    throw v0

    :catch_2
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "org/slf4j/impl/StaticLoggerBinder"

    .line 18
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "org.slf4j.impl.StaticLoggerBinder"

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_0
    move v6, v5

    goto :goto_2

    :cond_4
    :goto_1
    move v6, v4

    :goto_2
    if-eqz v6, :cond_8

    const/4 v0, 0x4

    .line 20
    sput v0, Lw3/d/c;->a:I

    const-string v0, "Failed to load class \"org.slf4j.impl.StaticLoggerBinder\"."

    .line 21
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "Defaulting to no-operation (NOP) logger implementation"

    .line 22
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details."

    .line 23
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :goto_3
    invoke-static {}, Lw3/d/c;->f()V

    .line 25
    sget v0, Lw3/d/c;->a:I

    if-ne v0, v3, :cond_7

    .line 26
    :try_start_2
    sget-object v0, Lw3/d/f/a;->c:Ljava/lang/String;

    .line 27
    sget-object v1, Lw3/d/c;->e:[Ljava/lang/String;

    array-length v2, v1

    move v3, v4

    :goto_4
    if-ge v4, v2, :cond_6

    aget-object v6, v1, v4

    .line 28
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    if-nez v3, :cond_7

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by your slf4j binding is not compatible with "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lw3/d/c;->e:[Ljava/lang/String;

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "See http://www.slf4j.org/codes.html#version_mismatch for further details."

    .line 32
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    const-string v1, "Unexpected problem occured during version sanity check"

    .line 33
    invoke-static {v1, v0}, Lw3/d/e/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_3
    :cond_7
    :goto_5
    return-void

    .line 34
    :cond_8
    :try_start_3
    sput v2, Lw3/d/c;->a:I

    .line 35
    invoke-static {v0, v1}, Lw3/d/e/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 37
    :goto_6
    invoke-static {}, Lw3/d/c;->f()V

    throw v0
.end method

.method public static f()V
    .locals 12

    .line 1
    sget-object v0, Lw3/d/c;->b:Lw3/d/e/f;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, v0, Lw3/d/e/f;->a:Z

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lw3/d/e/f;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw3/d/e/e;

    .line 5
    iget-object v4, v3, Lw3/d/e/e;->a:Ljava/lang/String;

    .line 6
    invoke-static {v4}, Lw3/d/c;->c(Ljava/lang/String;)Lw3/d/b;

    move-result-object v4

    .line 7
    iput-object v4, v3, Lw3/d/e/e;->b:Lw3/d/b;

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    sget-object v0, Lw3/d/c;->b:Lw3/d/e/f;

    .line 10
    iget-object v2, v0, Lw3/d/e/f;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    move v0, v6

    .line 13
    :goto_1
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/LinkedBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v7

    if-nez v7, :cond_1

    .line 14
    sget-object v0, Lw3/d/c;->b:Lw3/d/e/f;

    .line 15
    iget-object v1, v0, Lw3/d/e/f;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 16
    iget-object v0, v0, Lw3/d/e/f;->c:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    return-void

    .line 17
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw3/d/d/c;

    if-nez v8, :cond_2

    goto :goto_4

    .line 18
    :cond_2
    iget-object v9, v8, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 19
    iget-object v10, v9, Lw3/d/e/e;->a:Ljava/lang/String;

    .line 20
    iget-object v11, v9, Lw3/d/e/e;->b:Lw3/d/b;

    if-nez v11, :cond_3

    move v11, v1

    goto :goto_3

    :cond_3
    move v11, v6

    :goto_3
    if-nez v11, :cond_a

    .line 21
    iget-object v11, v9, Lw3/d/e/e;->b:Lw3/d/b;

    instance-of v11, v11, Lw3/d/e/b;

    if-eqz v11, :cond_4

    goto :goto_4

    .line 22
    :cond_4
    invoke-virtual {v9}, Lw3/d/e/e;->g()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 23
    invoke-virtual {v9}, Lw3/d/e/e;->g()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 24
    :try_start_1
    iget-object v10, v9, Lw3/d/e/e;->d:Ljava/lang/reflect/Method;

    iget-object v9, v9, Lw3/d/e/e;->b:Lw3/d/b;

    new-array v11, v1, [Ljava/lang/Object;

    aput-object v8, v11, v6

    invoke-virtual {v10, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 25
    :cond_5
    invoke-static {v10}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    :catch_0
    :cond_6
    :goto_4
    add-int/lit8 v9, v0, 0x1

    if-nez v0, :cond_9

    .line 26
    iget-object v0, v8, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 27
    invoke-virtual {v0}, Lw3/d/e/e;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A number ("

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") of logging calls during the initialization phase have been intercepted and are"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "now being replayed. These are subject to the filtering rules of the underlying logging system."

    .line 29
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "See also http://www.slf4j.org/codes.html#replay"

    .line 30
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    goto :goto_5

    .line 31
    :cond_7
    iget-object v0, v8, Lw3/d/d/c;->a:Lw3/d/e/e;

    .line 32
    iget-object v0, v0, Lw3/d/e/e;->b:Lw3/d/b;

    instance-of v0, v0, Lw3/d/e/b;

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    const-string v0, "The following set of substitute loggers may have been accessed"

    .line 33
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "during the initialization phase. Logging calls during this"

    .line 34
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "phase were not honored. However, subsequent logging calls to these"

    .line 35
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "loggers will work as normally expected."

    .line 36
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    const-string v0, "See also http://www.slf4j.org/codes.html#substituteLogger"

    .line 37
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    :cond_9
    :goto_5
    move v0, v9

    goto/16 :goto_2

    .line 38
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Delegate logger cannot be null at this state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    .line 40
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static g(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "Actual binding is of type ["

    .line 2
    invoke-static {p0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 3
    sget-object v0, Lw3/d/f/a;->b:Lw3/d/f/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lw3/d/f/a;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static h(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/URL;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "Class path contains multiple SLF4J bindings."

    .line 2
    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found binding in ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "See http://www.slf4j.org/codes.html#multiple_bindings for an explanation."

    .line 5
    invoke-static {p0}, Lw3/d/e/g;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
