.class Lio/grpc/f1/a0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/a0;->m(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/io/InputStream;

.field final synthetic g:Lio/grpc/f1/a0;


# direct methods
.method constructor <init>(Lio/grpc/f1/a0;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/a0$j;->g:Lio/grpc/f1/a0;

    iput-object p2, p0, Lio/grpc/f1/a0$j;->f:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a0$j;->g:Lio/grpc/f1/a0;

    invoke-static {v0}, Lio/grpc/f1/a0;->n(Lio/grpc/f1/a0;)Lio/grpc/f1/q;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/a0$j;->f:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lio/grpc/f1/f2;->m(Ljava/io/InputStream;)V

    return-void
.end method
