.class public final Le/a/c/i/b/g$p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/b/g;->E(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.assets.MalanaSeedImpl$readAssets$2"
    f = "MalanaSeed.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/i/b/g;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/i/b/g;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/b/g$p;->e:Le/a/c/i/b/g;

    iput-object p2, p0, Le/a/c/i/b/g$p;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/c/i/b/g$p;

    iget-object v0, p0, Le/a/c/i/b/g$p;->e:Le/a/c/i/b/g;

    iget-object v1, p0, Le/a/c/i/b/g$p;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/i/b/g$p;-><init>(Le/a/c/i/b/g;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/c/i/b/g$p;->e:Le/a/c/i/b/g;

    iget-object v0, p0, Le/a/c/i/b/g$p;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/c/i/b/g;->u:Le/a/c/c0/m;

    .line 6
    invoke-interface {p2, v0}, Le/a/c/c0/m;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p1, p1, Le/a/c/i/b/g;->u:Le/a/c/c0/m;

    .line 8
    invoke-interface {p1, p2}, Le/a/c/c0/m;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ls1/k;

    invoke-direct {p2, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/i/b/g$p;->f:Ljava/lang/String;

    iget-object v0, p0, Le/a/c/i/b/g$p;->e:Le/a/c/i/b/g;

    .line 3
    iget-object v0, v0, Le/a/c/i/b/g;->u:Le/a/c/c0/m;

    .line 4
    invoke-interface {v0, p1}, Le/a/c/c0/m;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/c/i/b/g$p;->e:Le/a/c/i/b/g;

    .line 5
    iget-object v1, v1, Le/a/c/i/b/g;->u:Le/a/c/c0/m;

    .line 6
    invoke-interface {v1, v0}, Le/a/c/c0/m;->d(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ls1/k;

    invoke-direct {v1, p1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
