.class Lio/grpc/f1/w1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/w1$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/w1;->d(Lio/grpc/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/m;


# direct methods
.method constructor <init>(Lio/grpc/f1/w1;Lio/grpc/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/grpc/f1/w1$d;->a:Lio/grpc/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f1/w1$w;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    iget-object v0, p0, Lio/grpc/f1/w1$d;->a:Lio/grpc/m;

    invoke-interface {p1, v0}, Lio/grpc/f1/f2;->d(Lio/grpc/m;)V

    return-void
.end method
