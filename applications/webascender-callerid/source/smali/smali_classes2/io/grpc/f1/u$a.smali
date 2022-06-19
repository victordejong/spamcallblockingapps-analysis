.class Lio/grpc/f1/u$a;
.super Lio/grpc/f1/u$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/u;->readUnsignedByte()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/f1/u;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/f1/u$c;-><init>(Lio/grpc/f1/u$a;)V

    return-void
.end method


# virtual methods
.method c(Lio/grpc/f1/s1;I)I
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/grpc/f1/s1;->readUnsignedByte()I

    move-result p1

    return p1
.end method
