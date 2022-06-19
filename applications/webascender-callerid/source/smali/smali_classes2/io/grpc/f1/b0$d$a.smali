.class Lio/grpc/f1/b0$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/b0$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/b0$d;


# direct methods
.method constructor <init>(Lio/grpc/f1/b0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/b0$d$a;->f:Lio/grpc/f1/b0$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/b0$d$a;->f:Lio/grpc/f1/b0$d;

    iget-object v0, v0, Lio/grpc/f1/b0$d;->g:Lio/grpc/f1/b0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/f1/b0;->l(Lio/grpc/f1/b0;Z)Z

    return-void
.end method
