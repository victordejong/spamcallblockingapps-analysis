.class public final Le/a/f4/b/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;
    .locals 10
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

    const-string v0, "method"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lp3/a/p0;->b:Ljava/lang/String;

    const-string v1, "method.fullMethodName"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Ls1/f0/v;->Z(Ljava/lang/String;CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 3
    new-instance v0, Le/a/f4/b/h/f$a;

    .line 4
    invoke-virtual {p3, p1, p2}, Lp3/a/d;->h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;

    move-result-object v9

    move-object v4, v0

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Le/a/f4/b/h/f$a;-><init>(Ljava/lang/String;Lp3/a/d;Lp3/a/p0;Lp3/a/c;Lp3/a/f;)V

    return-object v0
.end method
