.class Lio/grpc/f1/w1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/w1$o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/w1;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/grpc/f1/w1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/grpc/f1/w1$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f1/w1$w;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lio/grpc/f1/w1$w;->a:Lio/grpc/f1/q;

    iget-object v0, p0, Lio/grpc/f1/w1$b;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lio/grpc/f1/q;->h(Ljava/lang/String;)V

    return-void
.end method
