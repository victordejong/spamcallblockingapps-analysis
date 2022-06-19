.class public final Le/a/k/n/h/c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/videocallerid/data/PredefinedVideoResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.db.predefinedVideos.PredefinedVideosRepositoryImpl$getPredefinedVideosConfig$2"
    f = "PredefinedVideosRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/n/h/d;


# direct methods
.method public constructor <init>(Le/a/k/n/h/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/n/h/c;->e:Le/a/k/n/h/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/n/h/c;

    iget-object v0, p0, Le/a/k/n/h/c;->e:Le/a/k/n/h/d;

    invoke-direct {p1, v0, p2}, Le/a/k/n/h/c;-><init>(Le/a/k/n/h/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/k/n/h/c;->e:Le/a/k/n/h/d;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    new-instance p2, Le/a/k/n/h/c$a;

    invoke-direct {p2}, Le/a/k/n/h/c$a;-><init>()V

    invoke-virtual {p2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 6
    iget-object v0, p1, Le/a/k/n/h/d;->f:Le/a/p5/l;

    .line 7
    iget-object p1, p1, Le/a/k/n/h/d;->b:Ljavax/inject/Provider;

    .line 8
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "predefinedVideoConfig.get()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    const-string v1, "type"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Le/a/k/n/h/c$a;

    invoke-direct {p1}, Le/a/k/n/h/c$a;-><init>()V

    invoke-virtual {p1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/k/n/h/c;->e:Le/a/k/n/h/d;

    .line 4
    iget-object v1, v0, Le/a/k/n/h/d;->f:Le/a/p5/l;

    .line 5
    iget-object v0, v0, Le/a/k/n/h/d;->b:Ljavax/inject/Provider;

    .line 6
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "predefinedVideoConfig.get()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    const-string v2, "type"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, p1}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    return-object p1
.end method
