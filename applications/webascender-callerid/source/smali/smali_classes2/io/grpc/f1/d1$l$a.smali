.class final Lio/grpc/f1/d1$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1$l;->a(Lio/grpc/b1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/b1;

.field final synthetic g:Lio/grpc/f1/d1$l;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$l;Lio/grpc/b1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$l$a;->g:Lio/grpc/f1/d1$l;

    iput-object p2, p0, Lio/grpc/f1/d1$l$a;->f:Lio/grpc/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$l$a;->g:Lio/grpc/f1/d1$l;

    iget-object v1, p0, Lio/grpc/f1/d1$l$a;->f:Lio/grpc/b1;

    invoke-static {v0, v1}, Lio/grpc/f1/d1$l;->e(Lio/grpc/f1/d1$l;Lio/grpc/b1;)V

    return-void
.end method
