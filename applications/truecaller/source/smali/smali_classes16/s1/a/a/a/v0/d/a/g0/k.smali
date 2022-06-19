.class public final Ls1/a/a/a/v0/d/a/g0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/d/a/g0/w;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/g0/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    .line 2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    const-string v2, "parametersInfo"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ls1/a/a/a/v0/d/a/g0/k;->a:Ls1/a/a/a/v0/d/a/g0/w;

    iput-object v1, p0, Ls1/a/a/a/v0/d/a/g0/k;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/w;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/a/g0/w;",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/d/a/g0/w;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parametersInfo"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/k;->a:Ls1/a/a/a/v0/d/a/g0/w;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/k;->b:Ljava/util/List;

    return-void
.end method
