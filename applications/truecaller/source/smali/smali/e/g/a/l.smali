.class public final Le/g/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/g/a/l$c;
    }
.end annotation


# static fields
.field public static a:Le/g/a/l$c;

.field public static final b:Le/g/a/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/g/a/l$a;

    invoke-direct {v0}, Le/g/a/l$a;-><init>()V

    sput-object v0, Le/g/a/l;->b:Le/g/a/n;

    return-void
.end method

.method public static a()Le/g/a/n;
    .locals 6

    .line 1
    sget-object v0, Le/g/a/l;->a:Le/g/a/l$c;

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Le/g/a/l$b;

    invoke-direct {v0}, Le/g/a/l$b;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Le/g/a/l$c;->values()[Le/g/a/l$c;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    sput-object v4, Le/g/a/l;->a:Le/g/a/l$c;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    const-class v1, Le/g/a/j;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Failed to read \'tests.seed\' property for initial random seed."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    :cond_1
    :goto_1
    sget-object v0, Le/g/a/l;->a:Le/g/a/l$c;

    if-nez v0, :cond_2

    .line 8
    sget-object v0, Le/g/a/l$c;->a:Le/g/a/l$c;

    sput-object v0, Le/g/a/l;->a:Le/g/a/l$c;

    .line 9
    :cond_2
    :try_start_1
    sget-object v0, Le/g/a/l;->a:Le/g/a/l$c;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/g/a/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
