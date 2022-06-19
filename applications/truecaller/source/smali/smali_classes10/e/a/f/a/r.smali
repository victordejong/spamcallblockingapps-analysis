.class public final Le/a/f/a/r;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.InCallUIPresenter$maybeLoadVideoCallerId$2"
    f = "InCallUIPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/f/a/n;

.field public final synthetic g:Le/a/k/a/k/l$c;

.field public final synthetic h:Le/a/f/a/g;


# direct methods
.method public constructor <init>(Le/a/f/a/n;Le/a/k/a/k/l$c;Le/a/f/a/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/r;->f:Le/a/f/a/n;

    iput-object p2, p0, Le/a/f/a/r;->g:Le/a/k/a/k/l$c;

    iput-object p3, p0, Le/a/f/a/r;->h:Le/a/f/a/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/r;

    iget-object v1, p0, Le/a/f/a/r;->f:Le/a/f/a/n;

    iget-object v2, p0, Le/a/f/a/r;->g:Le/a/k/a/k/l$c;

    iget-object v3, p0, Le/a/f/a/r;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/a/r;-><init>(Le/a/f/a/n;Le/a/k/a/k/l$c;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/r;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/f/a/r;

    iget-object v1, p0, Le/a/f/a/r;->f:Le/a/f/a/n;

    iget-object v2, p0, Le/a/f/a/r;->g:Le/a/k/a/k/l$c;

    iget-object v3, p0, Le/a/f/a/r;->h:Le/a/f/a/g;

    invoke-direct {v0, v1, v2, v3, p2}, Le/a/f/a/r;-><init>(Le/a/f/a/n;Le/a/k/a/k/l$c;Le/a/f/a/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/f/a/r;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/f/a/r;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/f/a/r;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    iget-object v0, p0, Le/a/f/a/r;->f:Le/a/f/a/n;

    .line 3
    iget-object v0, v0, Le/a/f/a/n;->j:Le/a/f/y/c;

    .line 4
    invoke-interface {v0}, Le/a/f/y/c;->h()Lq3/a/w2/h;

    move-result-object v0

    new-instance v1, Le/a/f/a/r$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/f/a/r$a;-><init>(Le/a/f/a/r;Ls1/w/d;)V

    invoke-static {p1, v0, v1}, Le/a/p5/s0/g;->P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
