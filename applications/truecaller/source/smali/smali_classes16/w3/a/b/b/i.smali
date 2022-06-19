.class public abstract Lw3/a/b/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/io/PrintStream;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/ClassLoader;

.field public static d:Ljava/util/Hashtable;

.field public static volatile e:Lw3/a/b/b/i;

.field public static synthetic f:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    const-string v1, "org.apache.commons.logging.LogFactory"

    if-nez v0, :cond_0

    invoke-static {v1}, Lw3/a/b/b/i;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lw3/a/b/b/i;->b(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lw3/a/b/b/i;->c:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "BOOTLOADER"

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {v0}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UNKNOWN"

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[LogFactory from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lw3/a/b/b/i;->b:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "org.apache.commons.logging.diagnostics.dest"

    .line 4
    invoke-static {v2, v0}, Lw3/a/b/b/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "STDOUT"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    goto :goto_2

    :cond_3
    const-string v3, "STDERR"

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    goto :goto_2

    .line 9
    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 10
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    :goto_1
    move-object v2, v0

    .line 11
    :goto_2
    sput-object v2, Lw3/a/b/b/i;->a:Ljava/io/PrintStream;

    .line 12
    sget-object v2, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    if-nez v2, :cond_5

    invoke-static {v1}, Lw3/a/b/b/i;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    .line 13
    :cond_5
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_4

    .line 14
    :cond_6
    :try_start_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[ENV] Extension directories (java.ext.dir): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "java.ext.dir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[ENV] Application classpath (java.class.path): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "java.class.path"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    const-string v1, "[ENV] Security setting prevent interrogation of system classpaths."

    .line 16
    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 17
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 18
    :try_start_4
    invoke-static {v2}, Lw3/a/b/b/i;->b(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 19
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "[ENV] Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, " was loaded via classloader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 20
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "[ENV] Ancestry of classloader which loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lw3/a/b/b/i;->l(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    goto :goto_4

    .line 21
    :catch_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[ENV] Security forbids determining the classloader for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :goto_4
    :try_start_5
    const-string v1, "org.apache.commons.logging.LogFactory.HashtableImpl"

    .line 22
    invoke-static {v1, v0}, Lw3/a/b/b/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-object v1, v0

    :goto_5
    const-string v2, "org.apache.commons.logging.impl.WeakHashtable"

    if-nez v1, :cond_7

    move-object v1, v2

    .line 23
    :cond_7
    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v3

    goto :goto_6

    :catchall_0
    move-exception v3

    .line 25
    instance-of v4, v3, Ljava/lang/ThreadDeath;

    if-nez v4, :cond_d

    .line 26
    instance-of v4, v3, Ljava/lang/VirtualMachineError;

    if-nez v4, :cond_c

    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 28
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v1

    const-string v2, "[ERROR] LogFactory: Load of custom hashtable failed"

    if-eqz v1, :cond_8

    .line 29
    invoke-static {v2}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_6

    .line 30
    :cond_8
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    :goto_6
    if-nez v0, :cond_a

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 32
    :cond_a
    sput-object v0, Lw3/a/b/b/i;->d:Ljava/util/Hashtable;

    .line 33
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "BOOTSTRAP COMPLETED"

    .line 34
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_b
    return-void

    .line 35
    :cond_c
    check-cast v3, Ljava/lang/VirtualMachineError;

    throw v3

    .line 36
    :cond_d
    check-cast v3, Ljava/lang/ThreadDeath;

    throw v3
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unable to get classloader for class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "\' due to security restrictions - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 4
    :cond_0
    throw v0
.end method

.method public static c()Lw3/a/b/b/i;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lw3/a/b/b/b;
        }
    .end annotation

    const-string v1, "META-INF/services/org.apache.commons.logging.LogFactory"

    const-string v2, "]. Trying alternative implementations..."

    const-string v3, "[LOOKUP] A security exception occurred while trying to create an instance of the custom factory class: ["

    const-string v4, "\'"

    const-string v5, "org.apache.commons.logging.LogFactory"

    .line 1
    new-instance v0, Lw3/a/b/b/c;

    invoke-direct {v0}, Lw3/a/b/b/c;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/ClassLoader;

    if-nez v6, :cond_0

    .line 2
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Context classloader is null."

    .line 3
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_0
    if-nez v6, :cond_1

    .line 4
    sget-object v0, Lw3/a/b/b/i;->e:Lw3/a/b/b/i;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lw3/a/b/b/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/a/b/b/i;

    :goto_0
    move-object v7, v0

    if-eqz v7, :cond_2

    return-object v7

    .line 6
    :cond_2
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "[LOOKUP] LogFactory implementation requested for the first time for context classloader "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    const-string v0, "[LOOKUP] "

    .line 8
    invoke-static {v0, v6}, Lw3/a/b/b/i;->l(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    :cond_3
    const-string v0, "commons-logging.properties"

    .line 9
    :try_start_0
    new-instance v8, Lw3/a/b/b/f;

    invoke-direct {v8, v6, v0}, Lw3/a/b/b/f;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 10
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v8

    .line 11
    check-cast v8, Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v8, :cond_4

    const/4 v0, 0x0

    move-object/from16 v16, v7

    move-object v7, v0

    goto/16 :goto_9

    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    .line 12
    :goto_1
    :try_start_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 13
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/URL;

    .line 14
    new-instance v14, Lw3/a/b/b/g;

    invoke-direct {v14, v13}, Lw3/a/b/b/g;-><init>(Ljava/net/URL;)V

    .line 15
    invoke-static {v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Properties;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v14, :cond_b

    const-string v15, "priority"

    move-object/from16 v16, v7

    const-string v7, " with priority "

    if-nez v9, :cond_7

    .line 16
    :try_start_2
    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 17
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_2

    :cond_5
    const-wide/16 v9, 0x0

    :goto_2
    move-wide v11, v9

    .line 18
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 19
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "[LOOKUP] Properties file found at \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move-object v10, v13

    move-object v9, v14

    move-object/from16 v7, v16

    goto :goto_1

    :catch_0
    move-object v10, v13

    move-object v9, v14

    goto/16 :goto_6

    .line 20
    :cond_7
    :try_start_3
    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 21
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v17
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :cond_8
    const-wide/16 v17, 0x0

    :goto_3
    move-object v15, v8

    move-object/from16 v19, v9

    move-wide/from16 v8, v17

    cmpl-double v17, v8, v11

    move-object/from16 v18, v14

    const-string v14, "[LOOKUP] Properties file at \'"

    if-lez v17, :cond_a

    .line 22
    :try_start_4
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v17, v15

    .line 23
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v14, " overrides file at \'"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    move-object/from16 v17, v15

    :goto_4
    move-wide v11, v8

    move-object v10, v13

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    goto/16 :goto_1

    :cond_a
    move-object/from16 v17, v15

    .line 24
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 25
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    const-string v8, " does not override file at \'"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :cond_b
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v19, v9

    :cond_c
    :goto_5
    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    goto/16 :goto_1

    :cond_d
    move-object/from16 v16, v7

    goto :goto_7

    :catch_1
    move-object/from16 v16, v7

    :catch_2
    move-object/from16 v19, v9

    :catch_3
    move-object/from16 v9, v19

    goto :goto_6

    :catch_4
    move-object/from16 v16, v7

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v10, v7

    .line 26
    :goto_6
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "SecurityException thrown while trying to find/read config files."

    .line 27
    invoke-static {v7}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_e
    :goto_7
    move-object/from16 v19, v9

    .line 28
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v7

    if-eqz v7, :cond_10

    if-nez v19, :cond_f

    .line 29
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "[LOOKUP] No properties file of name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' found."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_8

    .line 30
    :cond_f
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "[LOOKUP] Properties file of name \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' found at \'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v0, 0x22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_10
    :goto_8
    move-object/from16 v7, v19

    :goto_9
    if-eqz v7, :cond_11

    const-string v0, "use_tccl"

    .line 31
    invoke-virtual {v7, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    .line 33
    sget-object v0, Lw3/a/b/b/i;->c:Ljava/lang/ClassLoader;

    move-object v8, v0

    goto :goto_a

    :cond_11
    move-object v8, v6

    .line 34
    :goto_a
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "[LOOKUP] Looking for system property [org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 35
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    .line 36
    :try_start_5
    invoke-static {v5, v0}, Lw3/a/b/b/i;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 37
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 38
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "[LOOKUP] Creating an instance of LogFactory class \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, "\' as specified by system property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 39
    :cond_13
    invoke-static {v0, v8, v6}, Lw3/a/b/b/i;->m(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lw3/a/b/b/i;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_b

    .line 40
    :cond_14
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "[LOOKUP] No system property [org.apache.commons.logging.LogFactory] defined."

    .line 41
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    .line 42
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 43
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[LOOKUP] An exception occurred while trying to create an instance of the custom factory class: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lw3/a/b/b/i;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] as specified by a system property."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 44
    :cond_15
    throw v0

    :catch_6
    move-exception v0

    .line 45
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 46
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_16
    :goto_b
    if-nez v16, :cond_1a

    .line 47
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "[LOOKUP] Looking for a resource file of name [META-INF/services/org.apache.commons.logging.LogFactory] to define the LogFactory subclass to use..."

    .line 48
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 49
    :cond_17
    :try_start_6
    new-instance v0, Lw3/a/b/b/e;

    invoke-direct {v0, v6, v1}, Lw3/a/b/b/e;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz v0, :cond_19

    .line 50
    :try_start_7
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    const-string v11, "UTF-8"

    invoke-direct {v10, v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_c

    .line 51
    :catch_7
    :try_start_8
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    :goto_c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    if-eqz v0, :cond_1a

    const-string v9, ""

    .line 54
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 55
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v9

    if-eqz v9, :cond_18

    .line 56
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "[LOOKUP]  Creating an instance of LogFactory class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v10, " as specified by file \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\' which was present in the path of the context classloader."

    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 57
    :cond_18
    invoke-static {v0, v8, v6}, Lw3/a/b/b/i;->m(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lw3/a/b/b/i;

    move-result-object v16

    goto :goto_d

    .line 58
    :cond_19
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "[LOOKUP] No resource file with name \'META-INF/services/org.apache.commons.logging.LogFactory\' found."

    .line 59
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_d

    :catch_8
    move-exception v0

    .line 60
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 61
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_1a
    :goto_d
    if-nez v16, :cond_1f

    if-eqz v7, :cond_1e

    .line 62
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "[LOOKUP] Looking in properties file for entry with key \'org.apache.commons.logging.LogFactory\' to define the LogFactory subclass to use..."

    .line 63
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 64
    :cond_1b
    invoke-virtual {v7, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 65
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 66
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[LOOKUP] Properties file specifies LogFactory subclass \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 67
    :cond_1c
    invoke-static {v0, v8, v6}, Lw3/a/b/b/i;->m(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lw3/a/b/b/i;

    move-result-object v16

    goto :goto_e

    .line 68
    :cond_1d
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "[LOOKUP] Properties file has no entry specifying LogFactory subclass."

    .line 69
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_e

    .line 70
    :cond_1e
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "[LOOKUP] No properties file available to determine LogFactory subclass from.."

    .line 71
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_1f
    :goto_e
    if-nez v16, :cond_21

    .line 72
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "[LOOKUP] Loading the default LogFactory implementation \'org.apache.commons.logging.impl.LogFactoryImpl\' via the same classloader that loaded this LogFactory class (ie not looking in the context classloader)."

    .line 73
    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 74
    :cond_20
    sget-object v0, Lw3/a/b/b/i;->c:Ljava/lang/ClassLoader;

    const-string v1, "org.apache.commons.logging.impl.LogFactoryImpl"

    invoke-static {v1, v0, v6}, Lw3/a/b/b/i;->m(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lw3/a/b/b/i;

    move-result-object v16

    :cond_21
    move-object/from16 v0, v16

    if-eqz v0, :cond_23

    if-nez v6, :cond_22

    .line 75
    sput-object v0, Lw3/a/b/b/i;->e:Lw3/a/b/b/i;

    goto :goto_f

    .line 76
    :cond_22
    sget-object v1, Lw3/a/b/b/i;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    if-eqz v7, :cond_23

    .line 77
    invoke-virtual {v7}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 78
    :goto_10
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 79
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-virtual {v7, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {v0, v2, v3}, Lw3/a/b/b/i;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10

    :cond_23
    return-object v0
.end method

.method public static f(Ljava/lang/Class;)Lw3/a/b/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lw3/a/b/b/b;
        }
    .end annotation

    .line 1
    invoke-static {}, Lw3/a/b/b/i;->c()Lw3/a/b/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw3/a/b/b/i;->d(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lw3/a/b/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lw3/a/b/b/b;
        }
    .end annotation

    .line 1
    invoke-static {}, Lw3/a/b/b/i;->c()Lw3/a/b/b/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lw3/a/b/b/i;->e(Ljava/lang/String;)Lw3/a/b/b/a;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    new-instance p1, Lw3/a/b/b/h;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lw3/a/b/b/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static i(Ljava/lang/Class;)Z
    .locals 4

    const-string v0, "[CUSTOM LOG FACTORY] "

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "[CUSTOM LOG FACTORY] was loaded by the boot classloader"

    .line 2
    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-static {v0, v2}, Lw3/a/b/b/i;->l(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v3, "w3.a.b.b.i"

    .line 4
    invoke-static {v3, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 5
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " implements LogFactory but was loaded by an incompatible classloader."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " does not implement LogFactory."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "[CUSTOM LOG FACTORY] LogFactory class cannot be loaded by classloader which loaded the custom LogFactory implementation. Is the custom factory in the right classloader?"

    .line 8
    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[CUSTOM LOG FACTORY] LinkageError thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 10
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[CUSTOM LOG FACTORY] SecurityException thrown whilst trying to determine whether the compatibility was caused by a classloader conflict: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public static j()Z
    .locals 1

    .line 1
    sget-object v0, Lw3/a/b/b/i;->a:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lw3/a/b/b/i;->a:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lw3/a/b/b/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lw3/a/b/b/i;->a:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lw3/a/b/b/i;->a:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 3

    .line 1
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " == \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 4
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_4

    .line 5
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "ClassLoader tree:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_2
    invoke-static {p1}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ne p1, v0, :cond_3

    const-string p0, " (SYSTEM) "

    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, " --> "

    .line 9
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-nez p1, :cond_2

    const-string p0, "BOOT"

    .line 10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catch_0
    const-string p0, " --> SECRET"

    .line 11
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_4
    return-void

    .line 13
    :catch_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "Security forbids determining the system classloader."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Lw3/a/b/b/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lw3/a/b/b/b;
        }
    .end annotation

    .line 1
    new-instance v0, Lw3/a/b/b/d;

    invoke-direct {v0, p0, p1}, Lw3/a/b/b/d;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    instance-of p1, p0, Lw3/a/b/b/b;

    if-eqz p1, :cond_1

    .line 3
    check-cast p0, Lw3/a/b/b/b;

    .line 4
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "An error occurred while loading the factory class:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 6
    :cond_0
    throw p0

    .line 7
    :cond_1
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Created object "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " to manage classloader "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p2}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 9
    :cond_2
    check-cast p0, Lw3/a/b/b/i;

    return-object p0
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract d(Ljava/lang/Class;)Lw3/a/b/b/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lw3/a/b/b/b;
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Lw3/a/b/b/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lw3/a/b/b/b;
        }
    .end annotation
.end method

.method public abstract o(Ljava/lang/String;Ljava/lang/Object;)V
.end method
