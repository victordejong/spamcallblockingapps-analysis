.class Lio/grpc/g1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/l2;


# instance fields
.field private final a:Ln/f;

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Ln/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/g1/n;->a:Ln/f;

    .line 3
    iput p2, p0, Lio/grpc/g1/n;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method b()Ln/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/n;->a:Ln/f;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/g1/n;->c:I

    return v0
.end method

.method public n([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/n;->a:Ln/f;

    invoke-virtual {v0, p1, p2, p3}, Ln/f;->K0([BII)Ln/f;

    .line 2
    iget p1, p0, Lio/grpc/g1/n;->b:I

    sub-int/2addr p1, p3

    iput p1, p0, Lio/grpc/g1/n;->b:I

    .line 3
    iget p1, p0, Lio/grpc/g1/n;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lio/grpc/g1/n;->c:I

    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lio/grpc/g1/n;->b:I

    return v0
.end method

.method public p(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/g1/n;->a:Ln/f;

    invoke-virtual {v0, p1}, Ln/f;->O0(I)Ln/f;

    .line 2
    iget p1, p0, Lio/grpc/g1/n;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lio/grpc/g1/n;->b:I

    .line 3
    iget p1, p0, Lio/grpc/g1/n;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/grpc/g1/n;->c:I

    return-void
.end method
