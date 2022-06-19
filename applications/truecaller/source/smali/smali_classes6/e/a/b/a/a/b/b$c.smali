.class public final Le/a/b/a/a/b/b$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/a/b/b;->c()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Le/a/b/a/a/b/d/a<",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.profile.data.BizProfileRepositoryImpl$fetchProfile$2"
    f = "BizProfileRepository.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b/a/a/b/b;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/b/b$c;->f:Le/a/b/a/a/b/b;

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

    new-instance v0, Le/a/b/a/a/b/b$c;

    iget-object v1, p0, Le/a/b/a/a/b/b$c;->f:Le/a/b/a/a/b/b;

    invoke-direct {v0, v1, p1}, Le/a/b/a/a/b/b$c;-><init>(Le/a/b/a/a/b/b;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/b/a/a/b/b$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    new-instance v0, Le/a/b/a/a/b/b$c;

    iget-object v1, p0, Le/a/b/a/a/b/b$c;->f:Le/a/b/a/a/b/b;

    invoke-direct {v0, v1, p1}, Le/a/b/a/a/b/b$c;-><init>(Le/a/b/a/a/b/b;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/a/a/b/b$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/a/a/b/b$c;->f:Le/a/b/a/a/b/b;

    .line 2
    iget-object p1, p1, Le/a/b/a/a/b/b;->b:Le/a/b/a/a/b/d/b;

    .line 3
    iput v2, p0, Le/a/b/a/a/b/b$c;->e:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Le/a/b/a/a/b/d/d;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Le/a/b/a/a/b/d/d;-><init>(Le/a/b/a/a/b/d/b;Ls1/w/d;)V

    invoke-static {v1, p0}, Le/a/n/g0;->P(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
