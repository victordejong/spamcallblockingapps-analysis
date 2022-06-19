.class public final Lp3/a/p0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lp3/a/p0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0$c<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field public b:Lp3/a/p0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0$c<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public c:Lp3/a/p0$d;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Lp3/a/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lp3/a/p0;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp3/a/p0<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 1
    new-instance v10, Lp3/a/p0;

    iget-object v1, p0, Lp3/a/p0$b;->c:Lp3/a/p0$d;

    iget-object v2, p0, Lp3/a/p0$b;->d:Ljava/lang/String;

    iget-object v3, p0, Lp3/a/p0$b;->a:Lp3/a/p0$c;

    iget-object v4, p0, Lp3/a/p0$b;->b:Lp3/a/p0$c;

    iget-boolean v8, p0, Lp3/a/p0$b;->e:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lp3/a/p0;-><init>(Lp3/a/p0$d;Ljava/lang/String;Lp3/a/p0$c;Lp3/a/p0$c;Ljava/lang/Object;ZZZLp3/a/p0$a;)V

    return-object v10
.end method
