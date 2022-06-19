.class final Lio/grpc/f1/d1$k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/f1/d1$k;->d(Lio/grpc/o;Lio/grpc/l0$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Lio/grpc/l0$i;

.field final synthetic g:Lio/grpc/o;

.field final synthetic h:Lio/grpc/f1/d1$k;


# direct methods
.method constructor <init>(Lio/grpc/f1/d1$k;Lio/grpc/l0$i;Lio/grpc/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/grpc/f1/d1$k$a;->h:Lio/grpc/f1/d1$k;

    iput-object p2, p0, Lio/grpc/f1/d1$k$a;->f:Lio/grpc/l0$i;

    iput-object p3, p0, Lio/grpc/f1/d1$k$a;->g:Lio/grpc/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/f1/d1$k$a;->h:Lio/grpc/f1/d1$k;

    iget-object v1, v0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    invoke-static {v1}, Lio/grpc/f1/d1;->G(Lio/grpc/f1/d1;)Lio/grpc/f1/d1$k;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/d1$k$a;->h:Lio/grpc/f1/d1$k;

    iget-object v0, v0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    iget-object v1, p0, Lio/grpc/f1/d1$k$a;->f:Lio/grpc/l0$i;

    invoke-static {v0, v1}, Lio/grpc/f1/d1;->J(Lio/grpc/f1/d1;Lio/grpc/l0$i;)V

    .line 3
    iget-object v0, p0, Lio/grpc/f1/d1$k$a;->g:Lio/grpc/o;

    sget-object v1, Lio/grpc/o;->SHUTDOWN:Lio/grpc/o;

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/f1/d1$k$a;->h:Lio/grpc/f1/d1$k;

    iget-object v0, v0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->y(Lio/grpc/f1/d1;)Lio/grpc/f;

    move-result-object v0

    sget-object v1, Lio/grpc/f$a;->INFO:Lio/grpc/f$a;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/grpc/f1/d1$k$a;->g:Lio/grpc/o;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lio/grpc/f1/d1$k$a;->f:Lio/grpc/l0$i;

    aput-object v4, v2, v3

    const-string v3, "Entering {0} state with picker: {1}"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/f;->b(Lio/grpc/f$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lio/grpc/f1/d1$k$a;->h:Lio/grpc/f1/d1$k;

    iget-object v0, v0, Lio/grpc/f1/d1$k;->b:Lio/grpc/f1/d1;

    invoke-static {v0}, Lio/grpc/f1/d1;->O(Lio/grpc/f1/d1;)Lio/grpc/f1/w;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/f1/d1$k$a;->g:Lio/grpc/o;

    invoke-virtual {v0, v1}, Lio/grpc/f1/w;->a(Lio/grpc/o;)V

    :cond_1
    return-void
.end method
