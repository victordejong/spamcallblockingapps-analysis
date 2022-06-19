.class public abstract Lp3/a/w$a;
.super Lp3/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/w<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp3/a/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lp3/a/w;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/w$a;->a:Lp3/a/f;

    return-void
.end method


# virtual methods
.method public f()Lp3/a/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/w$a;->a:Lp3/a/f;

    return-object v0
.end method
