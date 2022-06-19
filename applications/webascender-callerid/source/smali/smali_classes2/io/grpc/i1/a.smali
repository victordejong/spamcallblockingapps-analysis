.class public abstract Lio/grpc/i1/a;
.super Lio/grpc/i1/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lio/grpc/i1/a<",
        "TS;>;>",
        "Lio/grpc/i1/b<",
        "TS;>;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lio/grpc/e;Lio/grpc/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/grpc/i1/b;-><init>(Lio/grpc/e;Lio/grpc/d;)V

    return-void
.end method

.method public static e(Lio/grpc/i1/b$a;Lio/grpc/e;)Lio/grpc/i1/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/i1/b<",
            "TT;>;>(",
            "Lio/grpc/i1/b$a<",
            "TT;>;",
            "Lio/grpc/e;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/d;->k:Lio/grpc/d;

    invoke-static {p0, p1, v0}, Lio/grpc/i1/a;->f(Lio/grpc/i1/b$a;Lio/grpc/e;Lio/grpc/d;)Lio/grpc/i1/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lio/grpc/i1/b$a;Lio/grpc/e;Lio/grpc/d;)Lio/grpc/i1/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/grpc/i1/b<",
            "TT;>;>(",
            "Lio/grpc/i1/b$a<",
            "TT;>;",
            "Lio/grpc/e;",
            "Lio/grpc/d;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/grpc/i1/c;->b:Lio/grpc/d$a;

    sget-object v1, Lio/grpc/i1/c$b;->BLOCKING:Lio/grpc/i1/c$b;

    .line 2
    invoke-virtual {p2, v0, v1}, Lio/grpc/d;->p(Lio/grpc/d$a;Ljava/lang/Object;)Lio/grpc/d;

    move-result-object p2

    .line 3
    invoke-interface {p0, p1, p2}, Lio/grpc/i1/b$a;->a(Lio/grpc/e;Lio/grpc/d;)Lio/grpc/i1/b;

    move-result-object p0

    return-object p0
.end method
