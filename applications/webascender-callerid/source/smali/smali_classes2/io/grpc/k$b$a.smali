.class public final Lio/grpc/k$b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lio/grpc/a;

.field private b:Lio/grpc/d;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/a;->b:Lio/grpc/a;

    iput-object v0, p0, Lio/grpc/k$b$a;->a:Lio/grpc/a;

    .line 3
    sget-object v0, Lio/grpc/d;->k:Lio/grpc/d;

    iput-object v0, p0, Lio/grpc/k$b$a;->b:Lio/grpc/d;

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/k$b;
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/k$b;

    iget-object v1, p0, Lio/grpc/k$b$a;->a:Lio/grpc/a;

    iget-object v2, p0, Lio/grpc/k$b$a;->b:Lio/grpc/d;

    invoke-direct {v0, v1, v2}, Lio/grpc/k$b;-><init>(Lio/grpc/a;Lio/grpc/d;)V

    return-object v0
.end method

.method public b(Lio/grpc/d;)Lio/grpc/k$b$a;
    .locals 1

    const-string v0, "callOptions cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/d;

    iput-object p1, p0, Lio/grpc/k$b$a;->b:Lio/grpc/d;

    return-object p0
.end method

.method public c(Lio/grpc/a;)Lio/grpc/k$b$a;
    .locals 1

    const-string v0, "transportAttrs cannot be null"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/a;

    iput-object p1, p0, Lio/grpc/k$b$a;->a:Lio/grpc/a;

    return-object p0
.end method
