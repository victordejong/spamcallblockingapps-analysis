.class public final Le/a/b/a/a/b/b$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


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
        "Ls1/z/b/p<",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.newBusiness.profile.data.BizProfileRepositoryImpl$fetchProfile$3"
    f = "BizProfileRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/b/a/a/b/b;


# direct methods
.method public constructor <init>(Le/a/b/a/a/b/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/b/b$d;->f:Le/a/b/a/a/b/b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/a/a/b/b$d;

    iget-object v1, p0, Le/a/b/a/a/b/b$d;->f:Le/a/b/a/a/b/b;

    invoke-direct {v0, v1, p2}, Le/a/b/a/a/b/b$d;-><init>(Le/a/b/a/a/b/b;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/a/a/b/b$d;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/b/a/a/b/b$d;->f:Le/a/b/a/a/b/b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 4
    iget-object p2, v1, Le/a/b/a/a/b/b;->a:Le/a/b/a/a/b/c/a;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bizProfile"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p2, p2, Le/a/b/a/a/b/c/a;->b:Le/a/m4/c/i/a/b;

    invoke-interface {p2, p1}, Le/a/m4/c/i/a/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/a/a/b/b$d;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    iget-object v0, p0, Le/a/b/a/a/b/b$d;->f:Le/a/b/a/a/b/b;

    .line 2
    iget-object v0, v0, Le/a/b/a/a/b/b;->a:Le/a/b/a/a/b/c/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bizProfile"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Le/a/b/a/a/b/c/a;->b:Le/a/m4/c/i/a/b;

    invoke-interface {v0, p1}, Le/a/m4/c/i/a/b;->e(Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
