.class Lio/grpc/f1/s0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/s0;->b(Lio/grpc/f1/s$a;J)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/s$a;

.field final synthetic g:J


# direct methods
.method constructor <init>(Lio/grpc/f1/s$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/s0$a;->f:Lio/grpc/f1/s$a;

    iput-wide p2, p0, Lio/grpc/f1/s0$a;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/s0$a;->f:Lio/grpc/f1/s$a;

    iget-wide v1, p0, Lio/grpc/f1/s0$a;->g:J

    invoke-interface {v0, v1, v2}, Lio/grpc/f1/s$a;->b(J)V

    return-void
.end method
