.class final Lio/grpc/f1/a2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/x1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/a2;->a(Lio/grpc/r0;Lio/grpc/d;Lio/grpc/e;)Lio/grpc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/r0;

.field final synthetic b:Lio/grpc/f1/a2;


# direct methods
.method constructor <init>(Lio/grpc/f1/a2;Lio/grpc/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/a2$b;->b:Lio/grpc/f1/a2;

    iput-object p2, p0, Lio/grpc/f1/a2$b;->a:Lio/grpc/r0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/grpc/f1/x1;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a2$b;->b:Lio/grpc/f1/a2;

    invoke-static {v0}, Lio/grpc/f1/a2;->b(Lio/grpc/f1/a2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/grpc/f1/x1;->f:Lio/grpc/f1/x1;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/a2$b;->b:Lio/grpc/f1/a2;

    iget-object v1, p0, Lio/grpc/f1/a2$b;->a:Lio/grpc/r0;

    invoke-virtual {v0, v1}, Lio/grpc/f1/a2;->e(Lio/grpc/r0;)Lio/grpc/f1/x1;

    move-result-object v0

    return-object v0
.end method
