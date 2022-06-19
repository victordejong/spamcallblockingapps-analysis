.class public final Lp3/a/o0$h;
.super Lp3/a/o0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/o0$f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final f:Lp3/a/o0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLp3/a/o0$i;Lp3/a/o0$a;)V
    .locals 1

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lp3/a/o0$f;-><init>(Ljava/lang/String;ZLjava/lang/Object;Lp3/a/o0$a;)V

    const-string p2, "-bin"

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    const-string v0, "ASCII header is named %s.  Only binary headers may end with %s"

    .line 3
    invoke-static {p4, v0, p1, p2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "marshaller"

    .line 4
    invoke-static {p3, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lp3/a/o0$h;->f:Lp3/a/o0$i;

    return-void
.end method


# virtual methods
.method public c([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/o0$h;->f:Lp3/a/o0$i;

    invoke-interface {v0, p1}, Lp3/a/o0$i;->b([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/o0$h;->f:Lp3/a/o0$i;

    invoke-interface {v0, p1}, Lp3/a/o0$i;->a(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method
