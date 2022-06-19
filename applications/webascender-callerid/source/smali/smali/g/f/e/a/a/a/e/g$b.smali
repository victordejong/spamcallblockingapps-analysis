.class public final Lg/f/e/a/a/a/e/g$b;
.super Lio/grpc/i1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/e/a/a/a/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/i1/a<",
        "Lg/f/e/a/a/a/e/g$b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/e;Lio/grpc/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/i1/a;-><init>(Lio/grpc/e;Lio/grpc/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/e;Lio/grpc/d;Lg/f/e/a/a/a/e/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/f/e/a/a/a/e/g$b;-><init>(Lio/grpc/e;Lio/grpc/d;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lio/grpc/e;Lio/grpc/d;)Lio/grpc/i1/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/f/e/a/a/a/e/g$b;->g(Lio/grpc/e;Lio/grpc/d;)Lg/f/e/a/a/a/e/g$b;

    move-result-object p1

    return-object p1
.end method

.method protected g(Lio/grpc/e;Lio/grpc/d;)Lg/f/e/a/a/a/e/g$b;
    .locals 1

    .line 1
    new-instance v0, Lg/f/e/a/a/a/e/g$b;

    invoke-direct {v0, p1, p2}, Lg/f/e/a/a/a/e/g$b;-><init>(Lio/grpc/e;Lio/grpc/d;)V

    return-object v0
.end method

.method public h(Lg/f/e/a/a/a/e/d;)Lg/f/e/a/a/a/e/e;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/grpc/i1/b;->c()Lio/grpc/e;

    move-result-object v0

    invoke-static {}, Lg/f/e/a/a/a/e/g;->a()Lio/grpc/r0;

    move-result-object v1

    invoke-virtual {p0}, Lio/grpc/i1/b;->b()Lio/grpc/d;

    move-result-object v2

    .line 2
    invoke-static {v0, v1, v2, p1}, Lio/grpc/i1/c;->b(Lio/grpc/e;Lio/grpc/r0;Lio/grpc/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/f/e/a/a/a/e/e;

    return-object p1
.end method
