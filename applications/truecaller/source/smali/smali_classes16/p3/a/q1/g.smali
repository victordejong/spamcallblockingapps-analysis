.class public final Lp3/a/q1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/q1/g$a;
    }
.end annotation


# instance fields
.field public final a:Lp3/a/o0;


# direct methods
.method public constructor <init>(Lp3/a/o0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "extraHeaders"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/o0;

    iput-object p1, p0, Lp3/a/q1/g;->a:Lp3/a/o0;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;",
            "Lp3/a/c;",
            "Lp3/a/d;",
            ")",
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lp3/a/q1/g$a;

    invoke-virtual {p3, p1, p2}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lp3/a/q1/g$a;-><init>(Lp3/a/q1/g;Lp3/a/f;)V

    return-object v0
.end method
