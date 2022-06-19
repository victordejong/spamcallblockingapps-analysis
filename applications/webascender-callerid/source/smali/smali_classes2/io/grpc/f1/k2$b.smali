.class public final Lio/grpc/f1/k2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lio/grpc/f1/h2;


# direct methods
.method public constructor <init>(Lio/grpc/f1/h2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/f1/k2$b;->a:Lio/grpc/f1/h2;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/f1/k2;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/f1/k2;

    iget-object v1, p0, Lio/grpc/f1/k2$b;->a:Lio/grpc/f1/h2;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/f1/k2;-><init>(Lio/grpc/f1/h2;Lio/grpc/f1/k2$a;)V

    return-object v0
.end method
