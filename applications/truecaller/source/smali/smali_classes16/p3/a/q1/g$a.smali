.class public final Lp3/a/q1/g$a;
.super Lp3/a/w$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/q1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/w$a<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lp3/a/q1/g;


# direct methods
.method public constructor <init>(Lp3/a/q1/g;Lp3/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp3/a/q1/g$a;->b:Lp3/a/q1/g;

    .line 2
    invoke-direct {p0, p2}, Lp3/a/w$a;-><init>(Lp3/a/f;)V

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Lp3/a/q1/g$a;->b:Lp3/a/q1/g;

    .line 2
    iget-object v0, v0, Lp3/a/q1/g;->a:Lp3/a/o0;

    .line 3
    invoke-virtual {p2, v0}, Lp3/a/o0;->f(Lp3/a/o0;)V

    .line 4
    invoke-super {p0, p1, p2}, Lp3/a/w;->e(Lp3/a/f$a;Lp3/a/o0;)V

    return-void
.end method
