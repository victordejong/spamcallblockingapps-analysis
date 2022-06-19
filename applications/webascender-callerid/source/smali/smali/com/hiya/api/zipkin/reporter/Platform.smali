.class abstract Lcom/hiya/api/zipkin/reporter/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/api/zipkin/reporter/Platform$Jre6;,
        Lcom/hiya/api/zipkin/reporter/Platform$Jre8;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/hiya/api/zipkin/reporter/Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/api/zipkin/reporter/Platform;->findPlatform()Lcom/hiya/api/zipkin/reporter/Platform;

    move-result-object v0

    sput-object v0, Lcom/hiya/api/zipkin/reporter/Platform;->PLATFORM:Lcom/hiya/api/zipkin/reporter/Platform;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findPlatform()Lcom/hiya/api/zipkin/reporter/Platform;
    .locals 1

    :try_start_0
    const-string v0, "java.io.UncheckedIOException"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/hiya/api/zipkin/reporter/Platform$Jre8;

    invoke-direct {v0}, Lcom/hiya/api/zipkin/reporter/Platform$Jre8;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    invoke-static {}, Lcom/hiya/api/zipkin/reporter/Platform$Jre6;->build()Lcom/hiya/api/zipkin/reporter/Platform$Jre6;

    move-result-object v0

    return-object v0
.end method

.method static get()Lcom/hiya/api/zipkin/reporter/Platform;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/api/zipkin/reporter/Platform;->PLATFORM:Lcom/hiya/api/zipkin/reporter/Platform;

    return-object v0
.end method


# virtual methods
.method uncheckedIOException(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
