.class Lio/grpc/j1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/l0$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/j1/a;->c(Lio/grpc/l0$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/l0$h;

.field final synthetic b:Lio/grpc/j1/a;


# direct methods
.method constructor <init>(Lio/grpc/j1/a;Lio/grpc/l0$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/j1/a$a;->b:Lio/grpc/j1/a;

    iput-object p2, p0, Lio/grpc/j1/a$a;->a:Lio/grpc/l0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/j1/a$a;->b:Lio/grpc/j1/a;

    iget-object v1, p0, Lio/grpc/j1/a$a;->a:Lio/grpc/l0$h;

    invoke-static {v0, v1, p1}, Lio/grpc/j1/a;->e(Lio/grpc/j1/a;Lio/grpc/l0$h;Lio/grpc/p;)V

    return-void
.end method
