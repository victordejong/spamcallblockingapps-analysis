.class final Lio/grpc/f1/i$d;
.super Lio/grpc/l0$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Lio/grpc/b1;


# direct methods
.method constructor <init>(Lio/grpc/b1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/l0$i;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/f1/i$d;->a:Lio/grpc/b1;

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/l0$f;)Lio/grpc/l0$e;
    .locals 0

    .line 1
    iget-object p1, p0, Lio/grpc/f1/i$d;->a:Lio/grpc/b1;

    invoke-static {p1}, Lio/grpc/l0$e;->f(Lio/grpc/b1;)Lio/grpc/l0$e;

    move-result-object p1

    return-object p1
.end method
