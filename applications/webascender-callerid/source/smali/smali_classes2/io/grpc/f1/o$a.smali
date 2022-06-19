.class Lio/grpc/f1/o$a;
.super Ljava/util/ArrayDeque;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/o;-><init>(Lio/grpc/f0;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Lio/grpc/c0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:I

.field final synthetic g:Lio/grpc/f1/o;


# direct methods
.method constructor <init>(Lio/grpc/f1/o;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/o$a;->g:Lio/grpc/f1/o;

    iput p2, p0, Lio/grpc/f1/o$a;->f:I

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lio/grpc/c0;

    invoke-virtual {p0, p1}, Lio/grpc/f1/o$a;->d(Lio/grpc/c0;)Z

    move-result p1

    return p1
.end method

.method public d(Lio/grpc/c0;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget v1, p0, Lio/grpc/f1/o$a;->f:I

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/o$a;->g:Lio/grpc/f1/o;

    invoke-static {v0}, Lio/grpc/f1/o;->a(Lio/grpc/f1/o;)I

    .line 4
    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
