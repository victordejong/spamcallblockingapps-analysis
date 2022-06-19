.class public final Le/m/a/c/g1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/j;


# static fields
.field public static final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Le/m/a/c/g1/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "com.google.android.exoplayer2.ext.flac.FlacLibrary"

    .line 2
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isAvailable"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.google.android.exoplayer2.ext.flac.FlacExtractor"

    .line 6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Le/m/a/c/g1/h;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 10
    :catch_1
    :cond_0
    :goto_0
    sput-object v0, Le/m/a/c/g1/f;->a:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()[Le/m/a/c/g1/h;
    .locals 5

    monitor-enter p0

    const/16 v0, 0xe

    :try_start_0
    new-array v0, v0, [Le/m/a/c/g1/h;

    .line 1
    new-instance v1, Le/m/a/c/g1/a0/d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/m/a/c/g1/a0/d;-><init>(I)V

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Le/m/a/c/g1/c0/d;

    invoke-direct {v1, v2}, Le/m/a/c/g1/c0/d;-><init>(I)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    .line 3
    new-instance v4, Le/m/a/c/g1/c0/f;

    invoke-direct {v4, v2}, Le/m/a/c/g1/c0/f;-><init>(I)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 4
    new-instance v4, Le/m/a/c/g1/b0/d;

    invoke-direct {v4, v2}, Le/m/a/c/g1/b0/d;-><init>(I)V

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 5
    new-instance v4, Le/m/a/c/g1/e0/e;

    invoke-direct {v4, v2}, Le/m/a/c/g1/e0/e;-><init>(I)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    .line 6
    new-instance v4, Le/m/a/c/g1/e0/a;

    invoke-direct {v4}, Le/m/a/c/g1/e0/a;-><init>()V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    .line 7
    new-instance v4, Le/m/a/c/g1/e0/b0;

    invoke-direct {v4, v3, v2}, Le/m/a/c/g1/e0/b0;-><init>(II)V

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 8
    new-instance v3, Le/m/a/c/g1/z/b;

    invoke-direct {v3}, Le/m/a/c/g1/z/b;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 9
    new-instance v3, Le/m/a/c/g1/d0/c;

    invoke-direct {v3}, Le/m/a/c/g1/d0/c;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 10
    new-instance v3, Le/m/a/c/g1/e0/u;

    invoke-direct {v3}, Le/m/a/c/g1/e0/u;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 11
    new-instance v3, Le/m/a/c/g1/f0/a;

    invoke-direct {v3}, Le/m/a/c/g1/f0/a;-><init>()V

    aput-object v3, v0, v1

    const/16 v1, 0xb

    .line 12
    new-instance v3, Le/m/a/c/g1/x/a;

    invoke-direct {v3, v2}, Le/m/a/c/g1/x/a;-><init>(I)V

    aput-object v3, v0, v1

    const/16 v1, 0xc

    .line 13
    new-instance v3, Le/m/a/c/g1/e0/c;

    invoke-direct {v3}, Le/m/a/c/g1/e0/c;-><init>()V

    aput-object v3, v0, v1

    .line 14
    sget-object v1, Le/m/a/c/g1/f;->a:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xd

    if-eqz v1, :cond_0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/c/g1/h;

    aput-object v1, v0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 17
    :cond_0
    new-instance v1, Le/m/a/c/g1/y/c;

    invoke-direct {v1}, Le/m/a/c/g1/y/c;-><init>()V

    aput-object v1, v0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
