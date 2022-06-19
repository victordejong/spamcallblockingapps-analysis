.class public Lp3/a/n1/m1$p$c;
.super Lp3/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/m1$p;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/f<",
        "TReqT;TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp3/a/n1/m1$p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

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
    sget-object p2, Lp3/a/n1/m1;->j0:Lp3/a/g1;

    new-instance v0, Lp3/a/o0;

    invoke-direct {v0}, Lp3/a/o0;-><init>()V

    invoke-virtual {p1, p2, v0}, Lp3/a/f$a;->a(Lp3/a/g1;Lp3/a/o0;)V

    return-void
.end method
