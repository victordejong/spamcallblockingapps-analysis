.class public abstract Lzipkin2/reporter/a;
.super Lu/e;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu/e;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encoding()Lu/h/b;
.end method

.method public abstract messageMaxBytes()I
.end method

.method public abstract messageSizeInBytes(I)I
.end method

.method public abstract messageSizeInBytes(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)I"
        }
    .end annotation
.end method

.method public abstract sendSpans(Ljava/util/List;)Lu/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lu/b<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
