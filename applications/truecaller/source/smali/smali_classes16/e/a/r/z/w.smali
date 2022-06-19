.class public final Le/a/r/z/w;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/multisim/SimInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/z/s;


# direct methods
.method public constructor <init>(Le/a/r/z/s;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/w;->b:Le/a/r/z/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/z/w;->b:Le/a/r/z/s;

    .line 2
    iget-object v0, v0, Le/a/r/z/s;->V:Le/a/e4/p;

    .line 3
    invoke-interface {v0}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, "multiSimManager.allSimInfos"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
