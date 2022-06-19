.class Lio/grpc/f1/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/p;->G(Lio/grpc/t;Lio/grpc/g$a;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic f:J

.field final synthetic g:Lio/grpc/g$a;

.field final synthetic h:Lio/grpc/f1/p;


# direct methods
.method constructor <init>(Lio/grpc/f1/p;JLio/grpc/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p$c;->h:Lio/grpc/f1/p;

    iput-wide p2, p0, Lio/grpc/f1/p$c;->f:J

    iput-object p4, p0, Lio/grpc/f1/p$c;->g:Lio/grpc/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$c;->h:Lio/grpc/f1/p;

    iget-wide v1, p0, Lio/grpc/f1/p$c;->f:J

    invoke-static {v0, v1, v2}, Lio/grpc/f1/p;->n(Lio/grpc/f1/p;J)Lio/grpc/b1;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/grpc/f1/p$c;->h:Lio/grpc/f1/p;

    iget-object v2, p0, Lio/grpc/f1/p$c;->g:Lio/grpc/g$a;

    invoke-static {v1, v0, v2}, Lio/grpc/f1/p;->g(Lio/grpc/f1/p;Lio/grpc/b1;Lio/grpc/g$a;)V

    return-void
.end method
