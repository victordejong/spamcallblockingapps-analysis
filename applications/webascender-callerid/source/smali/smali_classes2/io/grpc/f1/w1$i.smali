.class Lio/grpc/f1/w1$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/w1$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/w1;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Lio/grpc/f1/w1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f1/w1$w;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    invoke-interface {p1}, Lio/grpc/f1/q;->j()V

    return-void
.end method
