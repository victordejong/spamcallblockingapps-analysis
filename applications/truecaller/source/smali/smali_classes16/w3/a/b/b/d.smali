.class public final Lw3/a/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a/b/b/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lw3/a/b/b/d;->b:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lw3/a/b/b/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lw3/a/b/b/d;->b:Ljava/lang/ClassLoader;

    const-string v2, "org.apache.commons.logging.LogFactory"

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    .line 2
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3
    sget-object v4, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    if-nez v4, :cond_0

    invoke-static {v2}, Lw3/a/b/b/i;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Loaded class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " from classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Factory class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " loaded from classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v5}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, " does not extend \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v5, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    if-nez v5, :cond_2

    invoke-static {v2}, Lw3/a/b/b/i;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "\' as loaded by this classloader."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    const-string v4, "[BAD CL TREE] "

    .line 8
    invoke-static {v4, v1}, Lw3/a/b/b/i;->l(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw3/a/b/b/i;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_2

    .line 10
    :catch_0
    :try_start_1
    sget-object v4, Lw3/a/b/b/i;->c:Ljava/lang/ClassLoader;

    if-ne v1, v4, :cond_9

    .line 11
    invoke-static {v3}, Lw3/a/b/b/i;->i(Ljava/lang/Class;)Z

    move-result v1

    .line 12
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "The application has specified that a custom LogFactory implementation "

    .line 13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "should be used but Class \'"

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' cannot be converted to \'"

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    sget-object v0, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    if-nez v0, :cond_4

    invoke-static {v2}, Lw3/a/b/b/i;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\'. "

    .line 18
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_5

    const-string v0, "The conflict is caused by the presence of multiple LogFactory classes "

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "in incompatible classloaders. "

    .line 20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Background can be found in http://commons.apache.org/logging/tech.html. "

    .line 21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "If you have not explicitly specified a custom LogFactory then it is likely "

    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "that the container has set one without your knowledge. "

    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "In this case, consider using the commons-logging-adapters.jar file or "

    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "specifying the standard LogFactory from the command line. "

    .line 25
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string v0, "Please check the custom implementation. "

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v0, "Help can be found @http://commons.apache.org/logging/troubleshooting.html."

    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 30
    :cond_6
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v4

    .line 31
    sget-object v5, Lw3/a/b/b/i;->c:Ljava/lang/ClassLoader;

    if-ne v1, v5, :cond_9

    .line 32
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 33
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Class \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' cannot be loaded"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " via classloader "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " - it depends on some other class that cannot be found."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 34
    :cond_7
    throw v4

    :catch_2
    move-exception v4

    .line 35
    sget-object v5, Lw3/a/b/b/i;->c:Ljava/lang/ClassLoader;

    if-ne v1, v5, :cond_9

    .line 36
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 37
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to locate any class called \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' via classloader "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 38
    :cond_8
    throw v4

    .line 39
    :cond_9
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 40
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unable to load factory class via classloader "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v1}, Lw3/a/b/b/i;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " - trying the classloader associated with this LogFactory."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    .line 41
    :cond_a
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lw3/a/b/b/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    .line 43
    invoke-static {}, Lw3/a/b/b/i;->j()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Unable to create LogFactory instance."

    .line 44
    invoke-static {v1}, Lw3/a/b/b/i;->k(Ljava/lang/String;)V

    :cond_b
    if-eqz v3, :cond_d

    .line 45
    sget-object v1, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    if-nez v1, :cond_c

    invoke-static {v2}, Lw3/a/b/b/i;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lw3/a/b/b/i;->f:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 46
    new-instance v4, Lw3/a/b/b/b;

    const-string v1, "The chosen LogFactory implementation does not extend LogFactory. Please check your configuration."

    invoke-direct {v4, v1, v0}, Lw3/a/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 47
    :cond_d
    new-instance v4, Lw3/a/b/b/b;

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0}, Lw3/a/b/b/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v4
.end method
