.class final Lzipkin2/reporter/b/c$b;
.super Lzipkin2/reporter/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzipkin2/reporter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/io/IOException;)Ljava/lang/RuntimeException;
    .locals 1
    .annotation build Lorg/jvnet/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .line 1
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    return-object v0
.end method
