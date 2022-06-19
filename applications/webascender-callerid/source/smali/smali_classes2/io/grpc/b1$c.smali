.class final Lio/grpc/b1$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/q0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/b1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/q0$i<",
        "Lio/grpc/b1;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/b1$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/grpc/b1$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)[B
    .locals 0

    .line 1
    check-cast p1, Lio/grpc/b1;

    invoke-virtual {p0, p1}, Lio/grpc/b1$c;->d(Lio/grpc/b1;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b([B)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/b1$c;->c([B)Lio/grpc/b1;

    move-result-object p1

    return-object p1
.end method

.method public c([B)Lio/grpc/b1;
    .locals 0

    .line 1
    invoke-static {p1}, Lio/grpc/b1;->b([B)Lio/grpc/b1;

    move-result-object p1

    return-object p1
.end method

.method public d(Lio/grpc/b1;)[B
    .locals 0

    .line 1
    invoke-virtual {p1}, Lio/grpc/b1;->n()Lio/grpc/b1$b;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/b1$b;->access$300(Lio/grpc/b1$b;)[B

    move-result-object p1

    return-object p1
.end method
