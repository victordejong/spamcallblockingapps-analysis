.class public final Le/a/b/b/c/i$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/b/c/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$resizeImage$1$2$1"
    f = "CreateBusinessProfileActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Le/a/b/b/c/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/w/d;Le/a/b/b/c/i;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/c/i$a;->e:Ljava/lang/String;

    iput-object p3, p0, Le/a/b/b/c/i$a;->f:Le/a/b/b/c/i;

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

    new-instance p1, Le/a/b/b/c/i$a;

    iget-object v0, p0, Le/a/b/b/c/i$a;->e:Ljava/lang/String;

    iget-object v1, p0, Le/a/b/b/c/i$a;->f:Le/a/b/b/c/i;

    invoke-direct {p1, v0, p2, v1}, Le/a/b/b/c/i$a;-><init>(Ljava/lang/String;Ls1/w/d;Le/a/b/b/c/i;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/b/b/c/i$a;->e:Ljava/lang/String;

    iget-object v1, p0, Le/a/b/b/c/i$a;->f:Le/a/b/b/c/i;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, v1, Le/a/b/b/c/i;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p2}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->qa()Le/a/b/b/c/q;

    move-result-object p2

    const-string v1, "it"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "picture"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p2, Le/a/b/b/c/q;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 6
    iput-object v2, p2, Le/a/b/b/c/q;->g:Ljava/lang/Integer;

    .line 7
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/b/b/c/p;

    if-eqz p2, :cond_0

    invoke-interface {p2, v1, v0}, Le/a/b/b/c/p;->s4(ILjava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/b/c/i$a;->f:Le/a/b/b/c/i;

    iget-object p1, p1, Le/a/b/b/c/i;->f:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->qa()Le/a/b/b/c/q;

    move-result-object p1

    iget-object v0, p0, Le/a/b/b/c/i$a;->e:Ljava/lang/String;

    const-string v1, "it"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "picture"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/b/b/c/q;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    iput-object v2, p1, Le/a/b/b/c/q;->g:Ljava/lang/Integer;

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/c/p;

    if-eqz p1, :cond_0

    invoke-interface {p1, v1, v0}, Le/a/b/b/c/p;->s4(ILjava/lang/String;)V

    .line 6
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
