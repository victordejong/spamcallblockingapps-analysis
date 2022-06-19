.class final Lio/grpc/f1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/w$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/grpc/f1/w$a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lio/grpc/o;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/w;->a:Ljava/util/ArrayList;

    .line 3
    sget-object v0, Lio/grpc/o;->IDLE:Lio/grpc/o;

    iput-object v0, p0, Lio/grpc/f1/w;->b:Lio/grpc/o;

    return-void
.end method


# virtual methods
.method a(Lio/grpc/o;)V
    .locals 2

    const-string v0, "newState"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/f1/w;->b:Lio/grpc/o;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lio/grpc/f1/w;->b:Lio/grpc/o;

    sget-object v1, Lio/grpc/o;->SHUTDOWN:Lio/grpc/o;

    if-eq v0, v1, :cond_1

    .line 3
    iput-object p1, p0, Lio/grpc/f1/w;->b:Lio/grpc/o;

    .line 4
    iget-object p1, p0, Lio/grpc/f1/w;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lio/grpc/f1/w;->a:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/w;->a:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/f1/w$a;

    .line 8
    invoke-virtual {v0}, Lio/grpc/f1/w$a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
