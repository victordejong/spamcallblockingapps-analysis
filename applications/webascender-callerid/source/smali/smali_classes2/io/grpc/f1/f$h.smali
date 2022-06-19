.class Lio/grpc/f1/f$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/g2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Z

.field final synthetic c:Lio/grpc/f1/f;


# direct methods
.method private constructor <init>(Lio/grpc/f1/f;Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/grpc/f1/f$h;->c:Lio/grpc/f1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lio/grpc/f1/f$h;->b:Z

    .line 4
    iput-object p2, p0, Lio/grpc/f1/f$h;->a:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/f;Ljava/lang/Runnable;Lio/grpc/f1/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/f$h;-><init>(Lio/grpc/f1/f;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/f1/f$h;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/f1/f$h;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lio/grpc/f1/f$h;->b:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public next()Ljava/io/InputStream;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/f$h;->a()V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/f$h;->c:Lio/grpc/f1/f;

    invoke-static {v0}, Lio/grpc/f1/f;->m(Lio/grpc/f1/f;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
