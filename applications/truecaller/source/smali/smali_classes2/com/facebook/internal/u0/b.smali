.class public final synthetic Lcom/facebook/internal/u0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/a0$a;


# static fields
.field public static final synthetic a:Lcom/facebook/internal/u0/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/internal/u0/b;

    invoke-direct {v0}, Lcom/facebook/internal/u0/b;-><init>()V

    sput-object v0, Lcom/facebook/internal/u0/b;->a:Lcom/facebook/internal/u0/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 12

    if-eqz p1, :cond_a

    .line 1
    sget-object p1, Lcom/facebook/internal/u0/l/c;->b:Lcom/facebook/internal/u0/l/c$a;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/facebook/internal/u0/l/c$a;->a()V

    .line 5
    :cond_0
    sget-object v0, Lcom/facebook/internal/u0/l/c;->d:Lcom/facebook/internal/u0/l/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/facebook/internal/u0/l/c;->b:Lcom/facebook/internal/u0/l/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/facebook/internal/u0/l/c;->c:Ljava/lang/String;

    .line 7
    monitor-exit p1

    goto :goto_0

    .line 8
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 9
    new-instance v2, Lcom/facebook/internal/u0/l/c;

    invoke-direct {v2, v0, v1}, Lcom/facebook/internal/u0/l/c;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ls1/z/c/f;)V

    .line 10
    sput-object v2, Lcom/facebook/internal/u0/l/c;->d:Lcom/facebook/internal/u0/l/c;

    .line 11
    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p1

    .line 13
    :goto_0
    sget-object p1, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    sget-object p1, Lcom/facebook/internal/a0$b;->t:Lcom/facebook/internal/a0$b;

    invoke-static {p1}, Lcom/facebook/internal/a0;->b(Lcom/facebook/internal/a0$b;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x1

    .line 14
    sput-boolean p1, Lcom/facebook/internal/u0/h;->a:Z

    .line 15
    invoke-static {}, Le/j/f0;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    invoke-static {}, Lcom/facebook/internal/q0;->A()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_3

    .line 17
    :cond_2
    invoke-static {}, Lcom/facebook/internal/u0/j;->b()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/io/File;

    goto :goto_1

    .line 18
    :cond_3
    sget-object v3, Lcom/facebook/internal/u0/f;->a:Lcom/facebook/internal/u0/f;

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v2, [Ljava/io/File;

    .line 19
    :cond_4
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    array-length v4, v0

    move v5, v2

    :catch_0
    :cond_5
    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    .line 21
    invoke-static {v6}, Lcom/facebook/internal/u0/i$a;->a(Ljava/io/File;)Lcom/facebook/internal/u0/i;

    move-result-object v6

    .line 22
    invoke-virtual {v6}, Lcom/facebook/internal/u0/i;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 23
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v8, "crash_shield"

    .line 24
    invoke-virtual {v6}, Lcom/facebook/internal/u0/i;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    sget-object v8, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    const-string v9, "%s/instruments"

    new-array v10, p1, [Ljava/lang/Object;

    .line 26
    sget-object v11, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v10, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "java.lang.String.format(format, *args)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v10, Lcom/facebook/internal/u0/a;

    invoke-direct {v10, v6}, Lcom/facebook/internal/u0/a;-><init>(Lcom/facebook/internal/u0/i;)V

    .line 28
    invoke-virtual {v8, v1, v9, v7, v10}, Lcom/facebook/GraphRequest$c;->i(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$b;)Lcom/facebook/GraphRequest;

    move-result-object v6

    .line 29
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 30
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 31
    :cond_7
    new-instance v0, Le/j/k0;

    invoke-direct {v0, v3}, Le/j/k0;-><init>(Ljava/util/Collection;)V

    .line 32
    sget-object v1, Lcom/facebook/GraphRequest;->k:Lcom/facebook/GraphRequest$c;

    invoke-virtual {v1, v0}, Lcom/facebook/GraphRequest$c;->d(Le/j/k0;)Le/j/j0;

    .line 33
    :cond_8
    :goto_3
    sget-object v0, Lcom/facebook/internal/u0/m/a;->a:Lcom/facebook/internal/u0/m/a;

    .line 34
    sput-boolean p1, Lcom/facebook/internal/u0/m/a;->c:Z

    .line 35
    :cond_9
    sget-object p1, Lcom/facebook/internal/a0;->a:Lcom/facebook/internal/a0;

    sget-object p1, Lcom/facebook/internal/a0$b;->u:Lcom/facebook/internal/a0$b;

    invoke-static {p1}, Lcom/facebook/internal/a0;->b(Lcom/facebook/internal/a0$b;)Z

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p1

    throw v0

    :cond_a
    :goto_4
    return-void
.end method
