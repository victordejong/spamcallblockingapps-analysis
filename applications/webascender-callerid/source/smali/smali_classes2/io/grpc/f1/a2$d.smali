.class final Lio/grpc/f1/a2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/x1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/a2;->a(Lio/grpc/r0;Lio/grpc/d;Lio/grpc/e;)Lio/grpc/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/f1/x1;


# direct methods
.method constructor <init>(Lio/grpc/f1/a2;Lio/grpc/f1/x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lio/grpc/f1/a2$d;->a:Lio/grpc/f1/x1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lio/grpc/f1/x1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a2$d;->a:Lio/grpc/f1/x1;

    return-object v0
.end method
