.class public final Le/a/b/k/c/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/c/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.covidDirectory.mvp.CovidContactListPresenter$onAttachView$1$4$1"
    f = "CovidContactListMvp.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b/k/c/b;


# direct methods
.method public constructor <init>(Le/a/b/k/c/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/c/b$a;->e:Le/a/b/k/c/b;

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

    new-instance p1, Le/a/b/k/c/b$a;

    iget-object v0, p0, Le/a/b/k/c/b$a;->e:Le/a/b/k/c/b;

    invoke-direct {p1, v0, p2}, Le/a/b/k/c/b$a;-><init>(Le/a/b/k/c/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/k/c/b$a;->e:Le/a/b/k/c/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/b/k/c/b;->g:Ls1/z/c/b0;

    iget-wide v1, p2, Ls1/z/c/b0;->a:J

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, v0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 6
    iget-object p2, p2, Le/a/b/k/c/c;->j:Le/a/b/k/b/a/a;

    .line 7
    invoke-interface {p2, v1, v2}, Le/a/b/k/b/a/a;->b(J)Ljava/util/List;

    move-result-object p2

    .line 8
    iget-object v0, v0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 9
    iput-object p2, v0, Le/a/b/k/c/c;->d:Ljava/util/List;

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/k/c/b$a;->e:Le/a/b/k/c/b;

    iget-object v0, p1, Le/a/b/k/c/b;->g:Ls1/z/c/b0;

    iget-wide v0, v0, Ls1/z/c/b0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p1, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 4
    iget-object p1, p1, Le/a/b/k/c/c;->j:Le/a/b/k/b/a/a;

    .line 5
    invoke-interface {p1, v0, v1}, Le/a/b/k/b/a/a;->b(J)Ljava/util/List;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/a/b/k/c/b$a;->e:Le/a/b/k/c/b;

    iget-object v0, v0, Le/a/b/k/c/b;->h:Le/a/b/k/c/c;

    .line 7
    iput-object p1, v0, Le/a/b/k/c/c;->d:Ljava/util/List;

    .line 8
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
