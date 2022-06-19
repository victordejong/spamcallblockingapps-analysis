.class final Lzipkin2/reporter/b/c$a;
.super Lzipkin2/reporter/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzipkin2/reporter/b/c;-><init>()V

    return-void
.end method

.method static d()Lzipkin2/reporter/b/c$a;
    .locals 1

    .line 1
    new-instance v0, Lzipkin2/reporter/b/c$a;

    invoke-direct {v0}, Lzipkin2/reporter/b/c$a;-><init>()V

    return-object v0
.end method
