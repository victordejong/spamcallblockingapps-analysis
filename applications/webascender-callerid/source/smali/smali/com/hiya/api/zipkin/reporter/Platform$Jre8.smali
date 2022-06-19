.class final Lcom/hiya/api/zipkin/reporter/Platform$Jre8;
.super Lcom/hiya/api/zipkin/reporter/Platform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Jre8"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/api/zipkin/reporter/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method public uncheckedIOException(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method
