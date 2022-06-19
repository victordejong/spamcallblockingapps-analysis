.class final Lio/grpc/f1/v0$i;
.super Lio/grpc/f1/i0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/f1/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation


# instance fields
.field private final a:Lio/grpc/f1/v;

.field private final b:Lio/grpc/f1/m;


# direct methods
.method private constructor <init>(Lio/grpc/f1/v;Lio/grpc/f1/m;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/f1/i0;-><init>()V

    .line 3
    iput-object p1, p0, Lio/grpc/f1/v0$i;->a:Lio/grpc/f1/v;

    .line 4
    iput-object p2, p0, Lio/grpc/f1/v0$i;->b:Lio/grpc/f1/m;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/f1/v;Lio/grpc/f1/m;Lio/grpc/f1/v0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/f1/v0$i;-><init>(Lio/grpc/f1/v;Lio/grpc/f1/m;)V

    return-void
.end method

.method static synthetic h(Lio/grpc/f1/v0$i;)Lio/grpc/f1/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/v0$i;->b:Lio/grpc/f1/m;

    return-object p0
.end method


# virtual methods
.method protected a()Lio/grpc/f1/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/v0$i;->a:Lio/grpc/f1/v;

    return-object v0
.end method

.method public g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/r0<",
            "**>;",
            "Lio/grpc/q0;",
            "Lio/grpc/d;",
            ")",
            "Lio/grpc/f1/q;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lio/grpc/f1/i0;->g(Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)Lio/grpc/f1/q;

    move-result-object p1

    .line 2
    new-instance p2, Lio/grpc/f1/v0$i$a;

    invoke-direct {p2, p0, p1}, Lio/grpc/f1/v0$i$a;-><init>(Lio/grpc/f1/v0$i;Lio/grpc/f1/q;)V

    return-object p2
.end method
