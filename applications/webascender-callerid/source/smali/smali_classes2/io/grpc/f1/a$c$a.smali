.class Lio/grpc/f1/a$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/a$c;->I(Lio/grpc/b1;Lio/grpc/f1/r$a;ZLio/grpc/q0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/b1;

.field final synthetic g:Lio/grpc/f1/r$a;

.field final synthetic h:Lio/grpc/q0;

.field final synthetic i:Lio/grpc/f1/a$c;


# direct methods
.method constructor <init>(Lio/grpc/f1/a$c;Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/a$c$a;->i:Lio/grpc/f1/a$c;

    iput-object p2, p0, Lio/grpc/f1/a$c$a;->f:Lio/grpc/b1;

    iput-object p3, p0, Lio/grpc/f1/a$c$a;->g:Lio/grpc/f1/r$a;

    iput-object p4, p0, Lio/grpc/f1/a$c$a;->h:Lio/grpc/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a$c$a;->i:Lio/grpc/f1/a$c;

    iget-object v1, p0, Lio/grpc/f1/a$c$a;->f:Lio/grpc/b1;

    iget-object v2, p0, Lio/grpc/f1/a$c$a;->g:Lio/grpc/f1/r$a;

    iget-object v3, p0, Lio/grpc/f1/a$c$a;->h:Lio/grpc/q0;

    invoke-static {v0, v1, v2, v3}, Lio/grpc/f1/a$c;->x(Lio/grpc/f1/a$c;Lio/grpc/b1;Lio/grpc/f1/r$a;Lio/grpc/q0;)V

    return-void
.end method
