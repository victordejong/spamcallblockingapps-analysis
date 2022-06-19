.class public final Le/a/d/d/a/w$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/w;->Fh(Ljava/lang/String;Z)V
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
    c = "com.truecaller.voip.contacts.ui.VoipContactsPresenter$onSearch$1"
    f = "VoipContactsPresenter.kt"
    l = {
        0xd2,
        0xd5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/d/a/w;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d/d/a/w;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    iput-object p2, p0, Le/a/d/d/a/w$b;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/d/d/a/w$b;

    iget-object v1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    iget-object v2, p0, Le/a/d/d/a/w$b;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/d/a/w$b;-><init>(Le/a/d/d/a/w;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/d/a/w$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/d/a/w$b;

    iget-object v1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    iget-object v2, p0, Le/a/d/d/a/w$b;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Le/a/d/d/a/w$b;-><init>(Le/a/d/d/a/w;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d/d/a/w$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/d/a/w$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/d/a/w$b;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/d/a/w$b;->f:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/w;

    iget-object v1, p0, Le/a/d/d/a/w$b;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/d/a/w$b;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d/d/a/w$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    const-wide/16 v4, 0x64

    .line 4
    iput-object p1, p0, Le/a/d/d/a/w$b;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/d/a/w$b;->g:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v1, p1

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    .line 6
    iget-object v4, p1, Le/a/d/d/a/w;->r:Ls1/w/f;

    .line 7
    new-instance v5, Le/a/d/d/a/w$b$a;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Le/a/d/d/a/w$b$a;-><init>(Le/a/d/d/a/w$b;Ls1/w/d;)V

    iput-object v1, p0, Le/a/d/d/a/w$b;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/d/a/w$b;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/d/d/a/w$b;->g:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object p1, v2

    :goto_1
    check-cast p1, Ljava/util/List;

    .line 8
    iput-object p1, v0, Le/a/d/d/a/w;->h:Ljava/util/List;

    .line 9
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->Q1(Lq3/a/i0;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    .line 11
    iput-boolean v3, p1, Le/a/d/d/a/w;->f:Z

    .line 12
    invoke-virtual {p1}, Le/a/d/d/a/w;->Tj()V

    .line 13
    iget-object p1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    .line 14
    invoke-virtual {p1}, Le/a/d/d/a/w;->Rj()V

    .line 15
    iget-object p1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    .line 16
    invoke-virtual {p1}, Le/a/d/d/a/w;->Oj()V

    .line 17
    iget-object p1, p0, Le/a/d/d/a/w$b;->h:Le/a/d/d/a/w;

    .line 18
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/d/a/u;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1}, Le/a/d/d/a/u;->D0()V

    .line 20
    invoke-interface {p1}, Le/a/d/d/a/u;->J1()V

    .line 21
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
