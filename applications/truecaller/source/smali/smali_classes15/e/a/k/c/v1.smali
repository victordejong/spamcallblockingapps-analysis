.class public final Le/a/k/c/v1;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ljava/io/File;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$getOutgoingVideoFile$2"
    f = "VideoFileUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/v1;->e:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/k/c/v1;->e:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    .line 2
    invoke-interface {p1}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, v0, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->b:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/v1;

    iget-object v1, p0, Le/a/k/c/v1;->e:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    invoke-direct {v0, v1, p1}, Le/a/k/c/v1;-><init>(Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/c/v1;->e:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    .line 3
    iget-object p1, p1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->b:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method
