.class final Lio/grpc/f1/d1$i;
.super Lio/grpc/f1/t0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/f1/t0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lio/grpc/f1/d1;


# direct methods
.method private constructor <init>(Lio/grpc/f1/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$i;->b:Lio/grpc/f1/d1;

    invoke-direct {p0}, Lio/grpc/f1/t0;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/d1;Lio/grpc/f1/d1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/f1/d1$i;-><init>(Lio/grpc/f1/d1;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$i;->b:Lio/grpc/f1/d1;

    invoke-virtual {v0}, Lio/grpc/f1/d1;->m0()V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$i;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->m(Lio/grpc/f1/d1;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/d1$i;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->h0(Lio/grpc/f1/d1;)V

    return-void
.end method
