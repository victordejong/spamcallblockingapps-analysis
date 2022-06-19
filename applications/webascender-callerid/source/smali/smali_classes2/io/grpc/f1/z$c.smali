.class Lio/grpc/f1/z$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/z;->d(Lio/grpc/f1/g1$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/f1/g1$a;


# direct methods
.method constructor <init>(Lio/grpc/f1/z;Lio/grpc/f1/g1$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lio/grpc/f1/z$c;->f:Lio/grpc/f1/g1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/z$c;->f:Lio/grpc/f1/g1$a;

    invoke-interface {v0}, Lio/grpc/f1/g1$a;->c()V

    return-void
.end method
