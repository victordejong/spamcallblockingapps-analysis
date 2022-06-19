.class public final Le/a/b/a/a/b/c/c;
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
    c = "com.truecaller.bizmon.newBusiness.profile.data.local.BizProfileLocalLiveData$load$1"
    f = "BizProfileLocalLiveData.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b/a/a/b/c/b;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/c/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/b/c/c;->e:Le/a/b/a/a/b/c/b;

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

    new-instance p1, Le/a/b/a/a/b/c/c;

    iget-object v0, p0, Le/a/b/a/a/b/c/c;->e:Le/a/b/a/a/b/c/b;

    invoke-direct {p1, v0, p2}, Le/a/b/a/a/b/c/c;-><init>(Le/a/b/a/a/b/c/b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/b/a/a/b/c/c;->e:Le/a/b/a/a/b/c/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Le/a/b/a/a/b/c/b;->o:Le/a/m4/c/i/a/b;

    .line 6
    invoke-interface {v0}, Le/a/m4/c/i/a/b;->d()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->j(Ljava/lang/Object;)V

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/a/a/b/c/c;->e:Le/a/b/a/a/b/c/b;

    .line 3
    iget-object v0, p1, Le/a/b/a/a/b/c/b;->o:Le/a/m4/c/i/a/b;

    .line 4
    invoke-interface {v0}, Le/a/m4/c/i/a/b;->d()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->j(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
