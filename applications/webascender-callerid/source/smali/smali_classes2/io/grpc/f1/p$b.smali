.class Lio/grpc/f1/p$b;
.super Lio/grpc/f1/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/p;->w(Lio/grpc/g$a;Lio/grpc/b1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Lio/grpc/g$a;

.field final synthetic h:Lio/grpc/b1;

.field final synthetic i:Lio/grpc/f1/p;


# direct methods
.method constructor <init>(Lio/grpc/f1/p;Lio/grpc/g$a;Lio/grpc/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/p$b;->i:Lio/grpc/f1/p;

    iput-object p2, p0, Lio/grpc/f1/p$b;->g:Lio/grpc/g$a;

    iput-object p3, p0, Lio/grpc/f1/p$b;->h:Lio/grpc/b1;

    .line 2
    invoke-static {p1}, Lio/grpc/f1/p;->o(Lio/grpc/f1/p;)Lio/grpc/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/f1/x;-><init>(Lio/grpc/r;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/p$b;->i:Lio/grpc/f1/p;

    iget-object v1, p0, Lio/grpc/f1/p$b;->g:Lio/grpc/g$a;

    iget-object v2, p0, Lio/grpc/f1/p$b;->h:Lio/grpc/b1;

    new-instance v3, Lio/grpc/q0;

    invoke-direct {v3}, Lio/grpc/q0;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lio/grpc/f1/p;->p(Lio/grpc/f1/p;Lio/grpc/g$a;Lio/grpc/b1;Lio/grpc/q0;)V

    return-void
.end method
