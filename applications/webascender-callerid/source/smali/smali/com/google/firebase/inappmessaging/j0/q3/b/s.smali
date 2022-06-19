.class public Lcom/google/firebase/inappmessaging/j0/q3/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lio/grpc/e;
    .locals 0

    .line 1
    invoke-static {p1}, Lio/grpc/p0;->b(Ljava/lang/String;)Lio/grpc/p0;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/p0;->a()Lio/grpc/o0;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "firebaseinappmessaging.googleapis.com"

    return-object v0
.end method
