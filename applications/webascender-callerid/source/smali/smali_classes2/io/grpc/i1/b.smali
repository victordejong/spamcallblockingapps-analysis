.class public abstract Lio/grpc/i1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/i1/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/grpc/i1/b<",
        "TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/e;

.field private final b:Lio/grpc/d;


# direct methods
.method protected constructor <init>(Lio/grpc/e;Lio/grpc/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/e;

    iput-object p1, p0, Lio/grpc/i1/b;->a:Lio/grpc/e;

    const-string p1, "callOptions"

    .line 3
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/d;

    iput-object p2, p0, Lio/grpc/i1/b;->b:Lio/grpc/d;

    return-void
.end method


# virtual methods
.method protected abstract a(Lio/grpc/e;Lio/grpc/d;)Lio/grpc/i1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/e;",
            "Lio/grpc/d;",
            ")TS;"
        }
    .end annotation
.end method

.method public final b()Lio/grpc/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/i1/b;->b:Lio/grpc/d;

    return-object v0
.end method

.method public final c()Lio/grpc/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/i1/b;->a:Lio/grpc/e;

    return-object v0
.end method

.method public final d(JLjava/util/concurrent/TimeUnit;)Lio/grpc/i1/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TS;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/i1/b;->a:Lio/grpc/e;

    iget-object v1, p0, Lio/grpc/i1/b;->b:Lio/grpc/d;

    invoke-virtual {v1, p1, p2, p3}, Lio/grpc/d;->l(JLjava/util/concurrent/TimeUnit;)Lio/grpc/d;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/grpc/i1/b;->a(Lio/grpc/e;Lio/grpc/d;)Lio/grpc/i1/b;

    move-result-object p1

    return-object p1
.end method
