.class public abstract Lp3/a/w;
.super Lp3/a/v0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/v0<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/v0;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/a/v0;->f()Lp3/a/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/a/f;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public e(Lp3/a/f$a;Lp3/a/o0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/o0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp3/a/v0;->f()Lp3/a/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lp3/a/f;->e(Lp3/a/f$a;Lp3/a/o0;)V

    return-void
.end method
