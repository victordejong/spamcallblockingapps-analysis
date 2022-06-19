.class public Lp3/a/i$a;
.super Lp3/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lp3/a/d;

.field public final b:Lp3/a/g;


# direct methods
.method public constructor <init>(Lp3/a/d;Lp3/a/g;Lp3/a/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/d;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/i$a;->a:Lp3/a/d;

    const-string p1, "interceptor"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/i$a;->b:Lp3/a/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/i$a;->a:Lp3/a/d;

    invoke-virtual {v0}, Lp3/a/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Lp3/a/p0;Lp3/a/c;)Lp3/a/f;
    .locals 2
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
            ")",
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/i$a;->b:Lp3/a/g;

    iget-object v1, p0, Lp3/a/i$a;->a:Lp3/a/d;

    invoke-interface {v0, p1, p2, v1}, Lp3/a/g;->a(Lp3/a/p0;Lp3/a/c;Lp3/a/d;)Lp3/a/f;

    move-result-object p1

    return-object p1
.end method
