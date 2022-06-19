.class public final Lio/grpc/f1/t$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lio/grpc/a;

.field private c:Ljava/lang/String;

.field private d:Lio/grpc/a0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown-authority"

    .line 2
    iput-object v0, p0, Lio/grpc/f1/t$a;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lio/grpc/a;->b:Lio/grpc/a;

    iput-object v0, p0, Lio/grpc/f1/t$a;->b:Lio/grpc/a;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/t$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lio/grpc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/t$a;->b:Lio/grpc/a;

    return-object v0
.end method

.method public c()Lio/grpc/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/t$a;->d:Lio/grpc/a0;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/t$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lio/grpc/f1/t$a;
    .locals 1

    const-string v0, "authority"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/f1/t$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/f1/t$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lio/grpc/f1/t$a;

    .line 3
    iget-object v0, p0, Lio/grpc/f1/t$a;->a:Ljava/lang/String;

    iget-object v2, p1, Lio/grpc/f1/t$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/t$a;->b:Lio/grpc/a;

    iget-object v2, p1, Lio/grpc/f1/t$a;->b:Lio/grpc/a;

    .line 4
    invoke-virtual {v0, v2}, Lio/grpc/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/t$a;->c:Ljava/lang/String;

    iget-object v2, p1, Lio/grpc/f1/t$a;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/f1/t$a;->d:Lio/grpc/a0;

    iget-object p1, p1, Lio/grpc/f1/t$a;->d:Lio/grpc/a0;

    .line 6
    invoke-static {v0, p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public f(Lio/grpc/a;)Lio/grpc/f1/t$a;
    .locals 1

    const-string v0, "eagAttributes"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lio/grpc/f1/t$a;->b:Lio/grpc/a;

    return-object p0
.end method

.method public g(Lio/grpc/a0;)Lio/grpc/f1/t$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/t$a;->d:Lio/grpc/a0;

    return-object p0
.end method

.method public h(Ljava/lang/String;)Lio/grpc/f1/t$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/t$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/grpc/f1/t$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/t$a;->b:Lio/grpc/a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/t$a;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/f1/t$a;->d:Lio/grpc/a0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/i;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
