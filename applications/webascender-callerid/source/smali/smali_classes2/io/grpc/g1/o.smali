.class Lio/grpc/g1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/m2;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lio/grpc/f1/l2;
    .locals 2

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    new-instance v0, Lio/grpc/g1/n;

    new-instance v1, Ln/f;

    invoke-direct {v1}, Ln/f;-><init>()V

    invoke-direct {v0, v1, p1}, Lio/grpc/g1/n;-><init>(Ln/f;I)V

    return-object v0
.end method
