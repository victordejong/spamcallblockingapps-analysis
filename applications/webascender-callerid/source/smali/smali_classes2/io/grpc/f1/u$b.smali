.class Lio/grpc/f1/u$b;
.super Lio/grpc/f1/u$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/u;->w0([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:I

.field final synthetic d:I

.field final synthetic e:[B


# direct methods
.method constructor <init>(Lio/grpc/f1/u;I[B)V
    .locals 0

    .line 1
    iput p2, p0, Lio/grpc/f1/u$b;->d:I

    iput-object p3, p0, Lio/grpc/f1/u$b;->e:[B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/grpc/f1/u$c;-><init>(Lio/grpc/f1/u$a;)V

    .line 2
    iput p2, p0, Lio/grpc/f1/u$b;->c:I

    return-void
.end method


# virtual methods
.method public c(Lio/grpc/f1/s1;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/u$b;->e:[B

    iget v1, p0, Lio/grpc/f1/u$b;->c:I

    invoke-interface {p1, v0, v1, p2}, Lio/grpc/f1/s1;->w0([BII)V

    .line 2
    iget p1, p0, Lio/grpc/f1/u$b;->c:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/grpc/f1/u$b;->c:I

    const/4 p1, 0x0

    return p1
.end method
