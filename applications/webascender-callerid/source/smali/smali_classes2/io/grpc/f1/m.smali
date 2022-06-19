.class final Lio/grpc/f1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/m$a;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/f1/h2;

.field private final b:Lio/grpc/f1/b1;

.field private final c:Lio/grpc/f1/b1;

.field private final d:Lio/grpc/f1/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lio/grpc/f1/h2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lio/grpc/f1/c1;->a()Lio/grpc/f1/b1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/m;->b:Lio/grpc/f1/b1;

    .line 3
    invoke-static {}, Lio/grpc/f1/c1;->a()Lio/grpc/f1/b1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/m;->c:Lio/grpc/f1/b1;

    .line 4
    invoke-static {}, Lio/grpc/f1/c1;->a()Lio/grpc/f1/b1;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/m;->d:Lio/grpc/f1/b1;

    .line 5
    iput-object p1, p0, Lio/grpc/f1/m;->a:Lio/grpc/f1/h2;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lio/grpc/f1/m;->c:Lio/grpc/f1/b1;

    invoke-interface {p1, v0, v1}, Lio/grpc/f1/b1;->add(J)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lio/grpc/f1/m;->d:Lio/grpc/f1/b1;

    invoke-interface {p1, v0, v1}, Lio/grpc/f1/b1;->add(J)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/f1/m;->b:Lio/grpc/f1/b1;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lio/grpc/f1/b1;->add(J)V

    .line 2
    iget-object v0, p0, Lio/grpc/f1/m;->a:Lio/grpc/f1/h2;

    invoke-interface {v0}, Lio/grpc/f1/h2;->a()J

    return-void
.end method
