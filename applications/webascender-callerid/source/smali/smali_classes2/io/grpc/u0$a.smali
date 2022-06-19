.class Lio/grpc/u0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/u0;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/grpc/t0;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/t0;Lio/grpc/t0;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/grpc/t0;->f()I

    move-result p1

    invoke-virtual {p2}, Lio/grpc/t0;->f()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lio/grpc/t0;

    check-cast p2, Lio/grpc/t0;

    invoke-virtual {p0, p1, p2}, Lio/grpc/u0$a;->a(Lio/grpc/t0;Lio/grpc/t0;)I

    move-result p1

    return p1
.end method
