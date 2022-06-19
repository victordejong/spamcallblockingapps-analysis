.class final Lio/grpc/f1/p$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation


# instance fields
.field private a:Lio/grpc/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/g$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lio/grpc/f1/p;


# direct methods
.method private constructor <init>(Lio/grpc/f1/p;Lio/grpc/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/g$a<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lio/grpc/f1/p$g;->b:Lio/grpc/f1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lio/grpc/f1/p$g;->a:Lio/grpc/g$a;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/p;Lio/grpc/g$a;Lio/grpc/f1/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/p$g;-><init>(Lio/grpc/f1/p;Lio/grpc/g$a;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/r;->l()Lio/grpc/t;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/grpc/r;->l()Lio/grpc/t;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/t;->n()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lio/grpc/s;->a(Lio/grpc/r;)Lio/grpc/b1;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/grpc/f1/p$g;->b:Lio/grpc/f1/p;

    iget-object v1, p0, Lio/grpc/f1/p$g;->a:Lio/grpc/g$a;

    invoke-static {v0, p1, v1}, Lio/grpc/f1/p;->g(Lio/grpc/f1/p;Lio/grpc/b1;Lio/grpc/g$a;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/f1/p$g;->b:Lio/grpc/f1/p;

    invoke-static {v0}, Lio/grpc/f1/p;->f(Lio/grpc/f1/p;)Lio/grpc/f1/q;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/s;->a(Lio/grpc/r;)Lio/grpc/b1;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/f1/q;->c(Lio/grpc/b1;)V

    :goto_1
    return-void
.end method
