.class public final Ln3/y/b/a/q0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/i;


# static fields
.field public static final b:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ln3/y/b/a/q0/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "androidx.media2.exoplayer.external.ext.flac.FlacExtractor"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ln3/y/b/a/q0/g;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating FLAC extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    sput-object v0, Ln3/y/b/a/q0/e;->b:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()[Ln3/y/b/a/q0/g;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Ln3/y/b/a/q0/e;->b:Ljava/lang/reflect/Constructor;

    const/16 v1, 0xd

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0xe

    :goto_0
    new-array v2, v2, [Ln3/y/b/a/q0/g;

    .line 2
    new-instance v3, Ln3/y/b/a/q0/s/d;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ln3/y/b/a/q0/s/d;-><init>(I)V

    aput-object v3, v2, v4

    .line 3
    new-instance v3, Ln3/y/b/a/q0/u/d;

    const/4 v6, 0x0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Ln3/y/b/a/q0/u/d;-><init>(ILn3/y/b/a/x0/v;Ln3/y/b/a/q0/u/i;Landroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    const/4 v5, 0x1

    .line 5
    aput-object v3, v2, v5

    const/4 v3, 0x2

    .line 6
    new-instance v6, Ln3/y/b/a/q0/u/f;

    invoke-direct {v6, v4}, Ln3/y/b/a/q0/u/f;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x3

    .line 7
    new-instance v6, Ln3/y/b/a/q0/t/c;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-direct {v6, v4, v7, v8}, Ln3/y/b/a/q0/t/c;-><init>(IJ)V

    .line 9
    aput-object v6, v2, v3

    const/4 v3, 0x4

    .line 10
    new-instance v6, Ln3/y/b/a/q0/w/e;

    iget v7, p0, Ln3/y/b/a/q0/e;->a:I

    or-int/2addr v7, v4

    .line 11
    invoke-direct {v6, v7}, Ln3/y/b/a/q0/w/e;-><init>(I)V

    aput-object v6, v2, v3

    const/4 v3, 0x5

    .line 12
    new-instance v6, Ln3/y/b/a/q0/w/a;

    invoke-direct {v6}, Ln3/y/b/a/q0/w/a;-><init>()V

    aput-object v6, v2, v3

    const/4 v3, 0x6

    .line 13
    new-instance v6, Ln3/y/b/a/q0/w/b0;

    .line 14
    new-instance v7, Ln3/y/b/a/x0/v;

    const-wide/16 v8, 0x0

    invoke-direct {v7, v8, v9}, Ln3/y/b/a/x0/v;-><init>(J)V

    new-instance v8, Ln3/y/b/a/q0/w/g;

    invoke-direct {v8, v4}, Ln3/y/b/a/q0/w/g;-><init>(I)V

    invoke-direct {v6, v5, v7, v8}, Ln3/y/b/a/q0/w/b0;-><init>(ILn3/y/b/a/x0/v;Ln3/y/b/a/q0/w/c0$c;)V

    .line 15
    aput-object v6, v2, v3

    const/4 v3, 0x7

    .line 16
    new-instance v5, Ln3/y/b/a/q0/r/b;

    invoke-direct {v5}, Ln3/y/b/a/q0/r/b;-><init>()V

    aput-object v5, v2, v3

    const/16 v3, 0x8

    .line 17
    new-instance v5, Ln3/y/b/a/q0/v/c;

    invoke-direct {v5}, Ln3/y/b/a/q0/v/c;-><init>()V

    aput-object v5, v2, v3

    const/16 v3, 0x9

    .line 18
    new-instance v5, Ln3/y/b/a/q0/w/u;

    invoke-direct {v5}, Ln3/y/b/a/q0/w/u;-><init>()V

    aput-object v5, v2, v3

    const/16 v3, 0xa

    .line 19
    new-instance v5, Ln3/y/b/a/q0/x/a;

    invoke-direct {v5}, Ln3/y/b/a/q0/x/a;-><init>()V

    aput-object v5, v2, v3

    const/16 v3, 0xb

    .line 20
    new-instance v5, Ln3/y/b/a/q0/q/a;

    .line 21
    invoke-direct {v5, v4}, Ln3/y/b/a/q0/q/a;-><init>(I)V

    aput-object v5, v2, v3

    const/16 v3, 0xc

    .line 22
    new-instance v5, Ln3/y/b/a/q0/w/c;

    invoke-direct {v5}, Ln3/y/b/a/q0/w/c;-><init>()V

    aput-object v5, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    new-array v3, v4, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/y/b/a/q0/g;

    aput-object v0, v2, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 24
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected error creating FLAC extractor"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
