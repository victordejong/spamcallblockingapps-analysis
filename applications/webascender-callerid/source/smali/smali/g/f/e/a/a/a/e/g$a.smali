.class Lg/f/e/a/a/a/e/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/i1/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/e/a/a/a/e/g;->b(Lio/grpc/e;)Lg/f/e/a/a/a/e/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/i1/b$a<",
        "Lg/f/e/a/a/a/e/g$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lio/grpc/e;Lio/grpc/d;)Lio/grpc/i1/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/f/e/a/a/a/e/g$a;->b(Lio/grpc/e;Lio/grpc/d;)Lg/f/e/a/a/a/e/g$b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lio/grpc/e;Lio/grpc/d;)Lg/f/e/a/a/a/e/g$b;
    .locals 2

    .line 1
    new-instance v0, Lg/f/e/a/a/a/e/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lg/f/e/a/a/a/e/g$b;-><init>(Lio/grpc/e;Lio/grpc/d;Lg/f/e/a/a/a/e/f;)V

    return-object v0
.end method
