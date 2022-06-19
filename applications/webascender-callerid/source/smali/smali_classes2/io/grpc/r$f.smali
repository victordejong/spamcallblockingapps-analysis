.class final Lio/grpc/r$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/r$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/r;


# direct methods
.method private constructor <init>(Lio/grpc/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/r$f;->a:Lio/grpc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/r;Lio/grpc/q;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/r$f;-><init>(Lio/grpc/r;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/r$f;->a:Lio/grpc/r;

    instance-of v1, v0, Lio/grpc/r$a;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lio/grpc/r$a;

    invoke-virtual {p1}, Lio/grpc/r;->f()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/r$a;->C(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lio/grpc/r;->r()V

    :goto_0
    return-void
.end method
