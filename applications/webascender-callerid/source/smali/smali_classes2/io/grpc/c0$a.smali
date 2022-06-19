.class public final Lio/grpc/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lio/grpc/c0$b;

.field private c:Ljava/lang/Long;

.field private d:Lio/grpc/j0;

.field private e:Lio/grpc/j0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/c0;
    .locals 10

    .line 1
    iget-object v0, p0, Lio/grpc/c0$a;->a:Ljava/lang/String;

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/grpc/c0$a;->b:Lio/grpc/c0$b;

    const-string v1, "severity"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lio/grpc/c0$a;->c:Ljava/lang/Long;

    const-string v1, "timestampNanos"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lio/grpc/c0$a;->d:Lio/grpc/j0;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/c0$a;->e:Lio/grpc/j0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "at least one of channelRef and subchannelRef must be null"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 5
    new-instance v0, Lio/grpc/c0;

    iget-object v3, p0, Lio/grpc/c0$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/grpc/c0$a;->b:Lio/grpc/c0$b;

    iget-object v1, p0, Lio/grpc/c0$a;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lio/grpc/c0$a;->d:Lio/grpc/j0;

    iget-object v8, p0, Lio/grpc/c0$a;->e:Lio/grpc/j0;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lio/grpc/c0;-><init>(Ljava/lang/String;Lio/grpc/c0$b;JLio/grpc/j0;Lio/grpc/j0;Lio/grpc/b0$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lio/grpc/c0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/c0$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lio/grpc/c0$b;)Lio/grpc/c0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/c0$a;->b:Lio/grpc/c0$b;

    return-object p0
.end method

.method public d(Lio/grpc/j0;)Lio/grpc/c0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/c0$a;->e:Lio/grpc/j0;

    return-object p0
.end method

.method public e(J)Lio/grpc/c0$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/c0$a;->c:Ljava/lang/Long;

    return-object p0
.end method
