.class public final Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeLogo$1$2$1"
    f = "CreateBusinessProfileActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/w/d;Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;

    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;

    invoke-direct {p1, v0, p2, v1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;-><init>(Ljava/lang/String;Ls1/w/d;Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, v1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->qa()Le/a/b/b/c/q;

    move-result-object p2

    const-string v1, "it"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logo"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 6
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/b/b/c/p;

    if-eqz p2, :cond_2

    invoke-interface {p2, v0}, Le/a/b/b/c/p;->M9(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/b/b/c/p;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Le/a/b/b/c/p;->I7()V

    :cond_2
    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;

    iget-object p1, p1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->qa()Le/a/b/b/c/q;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity$e$b;->e:Ljava/lang/String;

    const-string v1, "it"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "logo"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Le/a/b/b/c/p;->M9(Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/b/b/c/p;->I7()V

    .line 6
    :cond_2
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
