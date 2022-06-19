.class public final Lp3/a/o1/h$a;
.super Lp3/a/o1/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final e:Lp3/a/o1/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o1/o/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lp3/a/o1/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o1/o/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final g:Lp3/a/o1/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o1/o/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lp3/a/o1/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o1/o/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lp3/a/o1/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o1/o/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Lp3/a/o1/o/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o1/o/e<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/lang/reflect/Method;

.field public static final l:Ljava/lang/reflect/Method;

.field public static final m:Ljava/lang/reflect/Method;

.field public static final n:Ljava/lang/reflect/Method;

.field public static final o:Ljava/lang/reflect/Method;

.field public static final p:Ljava/lang/reflect/Method;

.field public static final q:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "Failed to find Android 7.0+ APIs"

    const-string v1, "Failed to find Android 10.0+ APIs"

    .line 1
    const-class v2, Ljava/lang/String;

    const-class v3, [B

    new-instance v4, Lp3/a/o1/o/e;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v9, 0x0

    const-string v10, "setUseSessionTickets"

    invoke-direct {v4, v9, v10, v6}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lp3/a/o1/h$a;->e:Lp3/a/o1/o/e;

    .line 2
    new-instance v4, Lp3/a/o1/o/e;

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v2, v6, v8

    const-string v11, "setHostname"

    invoke-direct {v4, v9, v11, v6}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lp3/a/o1/h$a;->f:Lp3/a/o1/o/e;

    .line 3
    new-instance v4, Lp3/a/o1/o/e;

    new-array v6, v8, [Ljava/lang/Class;

    const-string v11, "getAlpnSelectedProtocol"

    invoke-direct {v4, v3, v11, v6}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lp3/a/o1/h$a;->g:Lp3/a/o1/o/e;

    .line 4
    new-instance v4, Lp3/a/o1/o/e;

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v3, v6, v8

    const-string v11, "setAlpnProtocols"

    invoke-direct {v4, v9, v11, v6}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lp3/a/o1/h$a;->h:Lp3/a/o1/o/e;

    .line 5
    new-instance v4, Lp3/a/o1/o/e;

    new-array v6, v8, [Ljava/lang/Class;

    const-string v11, "getNpnSelectedProtocol"

    invoke-direct {v4, v3, v11, v6}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lp3/a/o1/h$a;->i:Lp3/a/o1/o/e;

    .line 6
    new-instance v4, Lp3/a/o1/o/e;

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v3, v6, v8

    const-string v3, "setNpnProtocols"

    invoke-direct {v4, v9, v3, v6}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v4, Lp3/a/o1/h$a;->j:Lp3/a/o1/o/e;

    .line 7
    :try_start_0
    const-class v3, Ljavax/net/ssl/SSLParameters;

    const-string v4, "setApplicationProtocols"

    new-array v6, v5, [Ljava/lang/Class;

    .line 8
    const-class v11, [Ljava/lang/String;

    aput-object v11, v6, v8

    .line 9
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    const-string v6, "getApplicationProtocols"

    new-array v11, v8, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v3, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6

    .line 11
    :try_start_2
    const-class v6, Ljavax/net/ssl/SSLSocket;

    const-string v11, "getApplicationProtocol"

    new-array v12, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v11, "android.net.ssl.SSLSockets"

    .line 12
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "isSupportedSocket"

    new-array v13, v5, [Ljava/lang/Class;

    .line 13
    const-class v14, Ljavax/net/ssl/SSLSocket;

    aput-object v14, v13, v8

    .line 14
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v13, 0x2

    :try_start_4
    new-array v13, v13, [Ljava/lang/Class;

    .line 15
    const-class v14, Ljavax/net/ssl/SSLSocket;

    aput-object v14, v13, v8

    aput-object v7, v13, v5

    .line 16
    invoke-virtual {v11, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    goto :goto_3

    :catch_2
    move-exception v7

    move-object v12, v9

    goto :goto_1

    :catch_3
    move-exception v7

    move-object v12, v9

    goto :goto_3

    :catch_4
    move-exception v7

    move-object v6, v9

    goto :goto_0

    :catch_5
    move-exception v7

    move-object v6, v9

    goto :goto_2

    :catch_6
    move-exception v7

    move-object v3, v9

    move-object v6, v3

    goto :goto_0

    :catch_7
    move-exception v7

    move-object v3, v9

    move-object v6, v3

    goto :goto_2

    :catch_8
    move-exception v7

    move-object v3, v9

    move-object v4, v3

    move-object v6, v4

    :goto_0
    move-object v12, v6

    .line 17
    :goto_1
    sget-object v10, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 18
    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_9
    move-exception v7

    move-object v3, v9

    move-object v4, v3

    move-object v6, v4

    :goto_2
    move-object v12, v6

    .line 19
    :goto_3
    sget-object v10, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 20
    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v10, v11, v1, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    move-object v1, v9

    .line 21
    :goto_5
    sput-object v4, Lp3/a/o1/h$a;->m:Ljava/lang/reflect/Method;

    .line 22
    sput-object v3, Lp3/a/o1/h$a;->n:Ljava/lang/reflect/Method;

    .line 23
    sput-object v6, Lp3/a/o1/h$a;->o:Ljava/lang/reflect/Method;

    .line 24
    sput-object v12, Lp3/a/o1/h$a;->k:Ljava/lang/reflect/Method;

    .line 25
    sput-object v1, Lp3/a/o1/h$a;->l:Ljava/lang/reflect/Method;

    .line 26
    :try_start_5
    const-class v1, Ljavax/net/ssl/SSLParameters;

    const-string v3, "setServerNames"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/util/List;

    aput-object v6, v4, v8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_c

    :try_start_6
    const-string v3, "javax.net.ssl.SNIHostName"

    .line 27
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v2, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_8

    :catch_a
    move-exception v2

    goto :goto_6

    :catch_b
    move-exception v2

    goto :goto_7

    :catch_c
    move-exception v2

    move-object v1, v9

    .line 28
    :goto_6
    sget-object v3, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 29
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :catch_d
    move-exception v2

    move-object v1, v9

    .line 30
    :goto_7
    sget-object v3, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 31
    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_8
    sput-object v1, Lp3/a/o1/h$a;->p:Ljava/lang/reflect/Method;

    .line 33
    sput-object v9, Lp3/a/o1/h$a;->q:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>(Lp3/a/o1/o/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp3/a/o1/h;-><init>(Lp3/a/o1/o/i;)V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lp3/a/o1/o/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/o1/o/j;

    .line 3
    iget-object v3, v3, Lp3/a/o1/o/j;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    :try_start_0
    const-string v5, "_"

    .line 7
    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    :try_start_1
    invoke-static {p2}, Lp3/a/n1/r0;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2

    move v5, v4

    goto :goto_2

    :catch_0
    :goto_1
    move v5, v2

    :goto_2
    if-eqz v5, :cond_4

    .line 9
    :try_start_2
    sget-object v5, Lp3/a/o1/h$a;->k:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_2

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v2

    const/4 v7, 0x0

    .line 10
    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    sget-object v5, Lp3/a/o1/h$a;->l:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v0, v6, v4

    invoke-virtual {v5, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 12
    :cond_2
    sget-object v5, Lp3/a/o1/h$a;->e:Lp3/a/o1/o/e;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v5, p1, v6}, Lp3/a/o1/o/e;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :goto_3
    sget-object v0, Lp3/a/o1/h$a;->p:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    sget-object v5, Lp3/a/o1/h$a;->q:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_3

    new-array v6, v4, [Ljava/lang/Object;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p2, v7, v2

    .line 14
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    aput-object p2, v6, v2

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 15
    :cond_3
    sget-object v0, Lp3/a/o1/h$a;->f:Lp3/a/o1/o/e;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p2, v5, v2

    invoke-virtual {v0, p1, v5}, Lp3/a/o1/o/e;->d(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_4
    :goto_4
    sget-object p2, Lp3/a/o1/h$a;->o:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p2, :cond_6

    :try_start_3
    new-array v0, v2, [Ljava/lang/Object;

    .line 17
    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p2, Lp3/a/o1/h$a;->m:Ljava/lang/reflect/Method;

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-virtual {p2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_2

    move p2, v4

    goto :goto_6

    :catch_1
    move-exception p2

    .line 19
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 20
    instance-of v0, v0, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_5

    .line 21
    sget-object p2, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 22
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v5, "setApplicationProtocol unsupported, will try old methods"

    invoke-virtual {p2, v0, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_5

    .line 23
    :cond_5
    throw p2

    :cond_6
    :goto_5
    move p2, v2

    .line 24
    :goto_6
    invoke-virtual {p1, v3}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    if-eqz p2, :cond_7

    .line 25
    sget-object p2, Lp3/a/o1/h$a;->n:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_7

    .line 26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 27
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p2
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    new-array p2, v4, [Ljava/lang/Object;

    .line 28
    invoke-static {p3}, Lp3/a/o1/o/i;->b(Ljava/util/List;)[B

    move-result-object p3

    aput-object p3, p2, v2

    .line 29
    iget-object p3, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {p3}, Lp3/a/o1/o/i;->e()Lp3/a/o1/o/i$e;

    move-result-object p3

    sget-object v0, Lp3/a/o1/o/i$e;->a:Lp3/a/o1/o/i$e;

    if-ne p3, v0, :cond_8

    .line 30
    sget-object p3, Lp3/a/o1/h$a;->h:Lp3/a/o1/o/e;

    invoke-virtual {p3, p1, p2}, Lp3/a/o1/o/e;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_8
    iget-object p3, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {p3}, Lp3/a/o1/o/i;->e()Lp3/a/o1/o/i$e;

    move-result-object p3

    sget-object v0, Lp3/a/o1/o/i$e;->c:Lp3/a/o1/o/i$e;

    if-eq p3, v0, :cond_9

    .line 32
    sget-object p3, Lp3/a/o1/h$a;->j:Lp3/a/o1/o/e;

    invoke-virtual {p3, p1, p2}, Lp3/a/o1/o/e;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 33
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "We can not do TLS handshake on this Android version, please install the Google Play Services Dynamic Security Provider to use TLS"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    .line 34
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 35
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lp3/a/o1/h$a;->o:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    .line 4
    instance-of v2, v2, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_0

    .line 5
    sget-object v0, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 6
    sget-object v2, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v3, "Socket unsupported for getApplicationProtocol, will try old methods"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {v0}, Lp3/a/o1/o/i;->e()Lp3/a/o1/o/i$e;

    move-result-object v0

    sget-object v2, Lp3/a/o1/o/i$e;->a:Lp3/a/o1/o/i$e;

    if-ne v0, v2, :cond_2

    .line 10
    :try_start_1
    sget-object v0, Lp3/a/o1/h$a;->g:Lp3/a/o1/o/e;

    new-array v2, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v0, p1, v2}, Lp3/a/o1/o/e;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    .line 12
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lp3/a/o1/o/l;->b:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v2

    :catch_2
    move-exception v0

    .line 13
    sget-object v2, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 14
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Failed calling getAlpnSelectedProtocol()"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {v0}, Lp3/a/o1/o/i;->e()Lp3/a/o1/o/i$e;

    move-result-object v0

    sget-object v2, Lp3/a/o1/o/i$e;->c:Lp3/a/o1/o/i$e;

    if-eq v0, v2, :cond_3

    .line 16
    :try_start_2
    sget-object v0, Lp3/a/o1/h$a;->i:Lp3/a/o1/o/e;

    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p1, v1}, Lp3/a/o1/o/e;->e(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    .line 18
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lp3/a/o1/o/l;->b:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :catch_3
    move-exception p1

    .line 19
    sget-object v0, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 20
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Failed calling getNpnSelectedProtocol()"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lp3/a/o1/o/j;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lp3/a/o1/h$a;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lp3/a/o1/h;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
