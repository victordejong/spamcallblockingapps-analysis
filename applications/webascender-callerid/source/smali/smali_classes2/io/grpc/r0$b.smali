.class public final Lio/grpc/r0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lio/grpc/r0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r0$c<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field private b:Lio/grpc/r0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/r0$c<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private c:Lio/grpc/r0$d;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/r0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/r0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/grpc/r0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/r0<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v10, Lio/grpc/r0;

    iget-object v1, p0, Lio/grpc/r0$b;->c:Lio/grpc/r0$d;

    iget-object v2, p0, Lio/grpc/r0$b;->d:Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/r0$b;->a:Lio/grpc/r0$c;

    iget-object v4, p0, Lio/grpc/r0$b;->b:Lio/grpc/r0$c;

    iget-object v5, p0, Lio/grpc/r0$b;->g:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/grpc/r0$b;->e:Z

    iget-boolean v7, p0, Lio/grpc/r0$b;->f:Z

    iget-boolean v8, p0, Lio/grpc/r0$b;->h:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/grpc/r0;-><init>(Lio/grpc/r0$d;Ljava/lang/String;Lio/grpc/r0$c;Lio/grpc/r0$c;Ljava/lang/Object;ZZZLio/grpc/r0$a;)V

    return-object v10
.end method

.method public b(Ljava/lang/String;)Lio/grpc/r0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/r0$b<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/r0$b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lio/grpc/r0$c;)Lio/grpc/r0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0$c<",
            "TReqT;>;)",
            "Lio/grpc/r0$b<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/r0$b;->a:Lio/grpc/r0$c;

    return-object p0
.end method

.method public d(Lio/grpc/r0$c;)Lio/grpc/r0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0$c<",
            "TRespT;>;)",
            "Lio/grpc/r0$b<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/r0$b;->b:Lio/grpc/r0$c;

    return-object p0
.end method

.method public e(Z)Lio/grpc/r0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/grpc/r0$b<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lio/grpc/r0$b;->h:Z

    return-object p0
.end method

.method public f(Lio/grpc/r0$d;)Lio/grpc/r0$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0$d;",
            ")",
            "Lio/grpc/r0$b<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/r0$b;->c:Lio/grpc/r0$d;

    return-object p0
.end method
