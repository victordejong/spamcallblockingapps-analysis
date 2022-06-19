.class final enum Lzipkin2/reporter/b/d$b;
.super Lzipkin2/reporter/b/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lzipkin2/reporter/b/d;-><init>(Ljava/lang/String;ILzipkin2/reporter/b/d$a;)V

    return-void
.end method


# virtual methods
.method encode(Ljava/util/List;)Lm/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lm/f0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lzipkin2/reporter/b/d$g;

    invoke-direct {v0, p1}, Lzipkin2/reporter/b/d$g;-><init>(Ljava/util/List;)V

    return-object v0
.end method
