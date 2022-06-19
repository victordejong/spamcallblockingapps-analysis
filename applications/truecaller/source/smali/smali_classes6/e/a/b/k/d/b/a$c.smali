.class public final Le/a/b/k/d/b/a$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/d/b/a;->K(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/String;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.covidDirectory.ui.fragments.CovidContactListFragment$setUpSearchView$2"
    f = "CovidContactListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/b/k/d/b/a;


# direct methods
.method public constructor <init>(Le/a/b/k/d/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/d/b/a$c;->f:Le/a/b/k/d/b/a;

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

    new-instance v0, Le/a/b/k/d/b/a$c;

    iget-object v1, p0, Le/a/b/k/d/b/a$c;->f:Le/a/b/k/d/b/a;

    invoke-direct {v0, v1, p2}, Le/a/b/k/d/b/a$c;-><init>(Le/a/b/k/d/b/a;Ls1/w/d;)V

    iput-object p1, v0, Le/a/b/k/d/b/a$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/b/k/d/b/a$c;->f:Le/a/b/k/d/b/a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 5
    :goto_0
    iput-object p2, v1, Le/a/b/k/d/b/a;->i:Ljava/lang/String;

    .line 6
    iget-object p2, v1, Le/a/b/k/d/b/a;->f:Le/a/b/k/c/c;

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/b/k/c/a;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p2, p1}, Le/a/b/k/c/a;->y(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p2, p1}, Le/a/b/k/c/a;->O4(Z)V

    :cond_2
    return-object v0

    :cond_3
    const-string p1, "presenter"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/k/d/b/a$c;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/b/k/d/b/a$c;->f:Le/a/b/k/d/b/a;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3
    :goto_0
    iput-object v1, v0, Le/a/b/k/d/b/a;->i:Ljava/lang/String;

    .line 4
    iget-object v0, p0, Le/a/b/k/d/b/a$c;->f:Le/a/b/k/d/b/a;

    .line 5
    iget-object v0, v0, Le/a/b/k/d/b/a;->f:Le/a/b/k/c/c;

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/k/c/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p1}, Le/a/b/k/c/a;->y(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {v0, p1}, Le/a/b/k/c/a;->O4(Z)V

    .line 9
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_3
    const-string p1, "presenter"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
