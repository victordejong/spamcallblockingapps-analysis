.class public final Le/a/d/d/c/d$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/c/d;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Le/a/d/d/c/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.contacts.data.VoipContactsDataProviderImpl$fetchVoipContacts$2$1"
    f = "VoipContactsDataProvider.kt"
    l = {
        0x42,
        0x4a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/d/c/d;

.field public final synthetic i:Ls1/z/c/c0;

.field public final synthetic j:Ls1/z/c/y;

.field public final synthetic k:Ls1/z/c/c0;

.field public final synthetic l:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/d/d/c/d;Ls1/z/c/c0;Ls1/z/c/y;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/d/c/d$a;->h:Le/a/d/d/c/d;

    iput-object p2, p0, Le/a/d/d/c/d$a;->i:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/d/d/c/d$a;->j:Ls1/z/c/y;

    iput-object p4, p0, Le/a/d/d/c/d$a;->k:Ls1/z/c/c0;

    iput-object p5, p0, Le/a/d/d/c/d$a;->l:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/d/d/c/d$a;

    iget-object v1, p0, Le/a/d/d/c/d$a;->h:Le/a/d/d/c/d;

    iget-object v2, p0, Le/a/d/d/c/d$a;->i:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/d/d/c/d$a;->j:Ls1/z/c/y;

    iget-object v4, p0, Le/a/d/d/c/d$a;->k:Ls1/z/c/c0;

    iget-object v5, p0, Le/a/d/d/c/d$a;->l:Ls1/z/c/c0;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/d/d/c/d$a;-><init>(Le/a/d/d/c/d;Ls1/z/c/c0;Ls1/z/c/y;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/d/d/c/d$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/d/d/c/d$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/d/c/d$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/d/c/d$a;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/d/d/c/d$a;->f:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/c/c;

    iget-object v1, p0, Le/a/d/d/c/d$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/d/c/d$a;->e:Ljava/lang/Object;

    check-cast v1, Le/a/d/d/c/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/d/c/d$a;->h:Le/a/d/d/c/d;

    iget-object v1, p1, Le/a/d/d/c/d;->g:Le/a/d/d/c/c;

    iget-object p1, p0, Le/a/d/d/c/d$a;->i:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lq3/a/n0;

    iput-object v1, p0, Le/a/d/d/c/d$a;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/d/d/c/d$a;->g:I

    invoke-interface {p1, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    move-object v3, v1

    .line 5
    move-object v4, p1

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x1

    .line 6
    iget-object p1, p0, Le/a/d/d/c/d$a;->h:Le/a/d/d/c/d;

    iget-boolean v6, p1, Le/a/d/d/c/d;->j:Z

    .line 7
    iget-object v1, p0, Le/a/d/d/c/d$a;->j:Ls1/z/c/y;

    iget-boolean v7, v1, Ls1/z/c/y;->a:Z

    .line 8
    iget-object v1, p0, Le/a/d/d/c/d$a;->k:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Ljava/util/HashSet;

    .line 9
    iget-boolean v9, p1, Le/a/d/d/c/d;->k:Z

    .line 10
    invoke-static/range {v3 .. v9}, Le/a/d/d/c/c;->a(Le/a/d/d/c/c;Ljava/util/List;ZZZLjava/util/HashSet;Z)Ljava/util/List;

    move-result-object v1

    .line 11
    iget-object p1, p0, Le/a/d/d/c/d$a;->h:Le/a/d/d/c/d;

    iget-object p1, p1, Le/a/d/d/c/d;->g:Le/a/d/d/c/c;

    iget-object v3, p0, Le/a/d/d/c/d$a;->l:Ls1/z/c/c0;

    iget-object v3, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v3, Lq3/a/n0;

    iput-object v1, p0, Le/a/d/d/c/d$a;->e:Ljava/lang/Object;

    iput-object p1, p0, Le/a/d/d/c/d$a;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/d/d/c/d$a;->g:I

    invoke-interface {v3, p0}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    move-object v7, v1

    move-object p1, v2

    .line 12
    :goto_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 13
    iget-object p1, p0, Le/a/d/d/c/d$a;->h:Le/a/d/d/c/d;

    iget-boolean v3, p1, Le/a/d/d/c/d;->j:Z

    .line 14
    iget-object v4, p0, Le/a/d/d/c/d$a;->j:Ls1/z/c/y;

    iget-boolean v4, v4, Ls1/z/c/y;->a:Z

    .line 15
    iget-object v5, p0, Le/a/d/d/c/d$a;->k:Ls1/z/c/c0;

    iget-object v5, v5, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/HashSet;

    .line 16
    iget-boolean v6, p1, Le/a/d/d/c/d;->k:Z

    .line 17
    invoke-static/range {v0 .. v6}, Le/a/d/d/c/c;->a(Le/a/d/d/c/c;Ljava/util/List;ZZZLjava/util/HashSet;Z)Ljava/util/List;

    move-result-object p1

    .line 18
    sget-object v0, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 19
    invoke-static {v7, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
