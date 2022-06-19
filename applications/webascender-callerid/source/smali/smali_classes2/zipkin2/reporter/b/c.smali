.class abstract Lzipkin2/reporter/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/reporter/b/c$a;,
        Lzipkin2/reporter/b/c$b;
    }
.end annotation


# static fields
.field private static final a:Lzipkin2/reporter/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lzipkin2/reporter/b/c;->a()Lzipkin2/reporter/b/c;

    move-result-object v0

    sput-object v0, Lzipkin2/reporter/b/c;->a:Lzipkin2/reporter/b/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lzipkin2/reporter/b/c;
    .locals 1

    :try_start_0
    const-string v0, "java.io.UncheckedIOException"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    new-instance v0, Lzipkin2/reporter/b/c$b;

    invoke-direct {v0}, Lzipkin2/reporter/b/c$b;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    invoke-static {}, Lzipkin2/reporter/b/c$a;->d()Lzipkin2/reporter/b/c$a;

    move-result-object v0

    return-object v0
.end method

.method static b()Lzipkin2/reporter/b/c;
    .locals 1

    .line 1
    sget-object v0, Lzipkin2/reporter/b/c;->a:Lzipkin2/reporter/b/c;

    return-object v0
.end method


# virtual methods
.method c(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
