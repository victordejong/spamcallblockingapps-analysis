.class public final Le/a/p/a/p$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/p;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.editprofile.ui.EditProfilePresenter$onEditBizProfileV2Enabled$1$bizProfile$1"
    f = "EditProfilePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/p/a/p;


# direct methods
.method public constructor <init>(Le/a/p/a/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/p$a;->e:Le/a/p/a/p;

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

    new-instance p1, Le/a/p/a/p$a;

    iget-object v0, p0, Le/a/p/a/p$a;->e:Le/a/p/a/p;

    invoke-direct {p1, v0, p2}, Le/a/p/a/p$a;-><init>(Le/a/p/a/p;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/p/a/p$a;->e:Le/a/p/a/p;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Le/a/p/a/p;->f:Le/a/p/a/m;

    .line 6
    iget-object p1, p1, Le/a/p/a/m;->O:Le/a/m4/c/i/a/b;

    .line 7
    invoke-interface {p1}, Le/a/m4/c/i/a/b;->d()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/p/a/p$a;->e:Le/a/p/a/p;

    iget-object p1, p1, Le/a/p/a/p;->f:Le/a/p/a/m;

    .line 3
    iget-object p1, p1, Le/a/p/a/m;->O:Le/a/m4/c/i/a/b;

    .line 4
    invoke-interface {p1}, Le/a/m4/c/i/a/b;->d()Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    move-result-object p1

    return-object p1
.end method
