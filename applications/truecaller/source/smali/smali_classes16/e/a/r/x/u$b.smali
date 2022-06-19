.class public final Le/a/r/x/u$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/x/u;->Kj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.truecaller.wizard.profile.ProfileInputPresenter$saveProfile$1"
    f = "ProfileInputPresenter.kt"
    l = {
        0x80,
        0x96,
        0x9b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/r/x/u;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r/x/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    iput-object p2, p0, Le/a/r/x/u$b;->g:Ljava/lang/String;

    iput-object p3, p0, Le/a/r/x/u$b;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/r/x/u$b;->i:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    new-instance p1, Le/a/r/x/u$b;

    iget-object v1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    iget-object v2, p0, Le/a/r/x/u$b;->g:Ljava/lang/String;

    iget-object v3, p0, Le/a/r/x/u$b;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/r/x/u$b;->i:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/r/x/u$b;-><init>(Le/a/r/x/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/r/x/u$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/r/x/u$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/r/x/u$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/r/x/u$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 5
    iget-boolean v2, p1, Le/a/r/x/u;->e:Z

    if-nez v2, :cond_7

    .line 6
    iput v6, p0, Le/a/r/x/u$b;->e:I

    .line 7
    iget-object v2, p1, Le/a/r/x/u;->g:Ls1/w/f;

    new-instance v7, Le/a/r/x/v;

    invoke-direct {v7, p1, v3}, Le/a/r/x/v;-><init>(Le/a/r/x/u;Ls1/w/d;)V

    invoke-static {v2, v7, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_0
    check-cast p1, Le/a/b0/n/c;

    .line 9
    iget-object v2, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 10
    iget-boolean v7, p1, Le/a/b0/n/c;->a:Z

    .line 11
    iput-boolean v7, v2, Le/a/r/x/u;->e:Z

    if-nez v7, :cond_7

    .line 12
    iget p1, p1, Le/a/b0/n/c;->b:I

    .line 13
    iget-object v1, v2, Le/a/r/x/u;->k:Le/a/r/q/c;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "FetchProfile"

    invoke-interface {v1, v4, v3}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, v2, Le/a/r/x/u;->j:Le/a/r/x/y/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "GetProfile"

    invoke-virtual {v1, v3, p1}, Le/a/r/x/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/r/x/t;->sm()V

    .line 16
    :cond_5
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/r/x/t;->b0()V

    :cond_6
    return-object v0

    .line 17
    :cond_7
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    new-array v2, v4, [Ls1/k;

    .line 18
    iget-object v7, p0, Le/a/r/x/u$b;->g:Ljava/lang/String;

    const-string v8, ""

    if-eqz v7, :cond_8

    goto :goto_1

    :cond_8
    move-object v7, v8

    .line 19
    :goto_1
    new-instance v9, Ls1/k;

    const-string v10, "first_name"

    invoke-direct {v9, v10, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v9, v2, v7

    .line 20
    iget-object v9, p0, Le/a/r/x/u$b;->h:Ljava/lang/String;

    if-eqz v9, :cond_9

    goto :goto_2

    :cond_9
    move-object v9, v8

    .line 21
    :goto_2
    new-instance v10, Ls1/k;

    const-string v11, "last_name"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v6

    .line 22
    iget-object v9, p0, Le/a/r/x/u$b;->i:Ljava/lang/String;

    if-eqz v9, :cond_a

    move-object v8, v9

    .line 23
    :cond_a
    new-instance v9, Ls1/k;

    const-string v10, "email"

    invoke-direct {v9, v10, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v5

    .line 24
    invoke-static {v2}, Ls1/u/i;->I([Ls1/k;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 25
    iget-object v8, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 26
    iget-object v8, v8, Le/a/r/x/u;->d:Le/a/r/x/u$a;

    .line 27
    instance-of v9, v8, Le/a/r/x/u$a$b;

    if-eqz v9, :cond_d

    move-object v9, v8

    check-cast v9, Le/a/r/x/u$a$b;

    .line 28
    iget-object v10, v9, Le/a/r/x/u$a$b;->b:Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 29
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_b

    goto :goto_3

    :cond_b
    move v6, v7

    :cond_c
    :goto_3
    if-nez v6, :cond_d

    .line 30
    iget-object v6, v9, Le/a/r/x/u$a$b;->b:Ljava/lang/String;

    const-string v7, "avatar_url"

    .line 31
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 32
    :cond_d
    instance-of v2, v8, Le/a/r/x/u$a$a;

    if-eqz v2, :cond_e

    check-cast v8, Le/a/r/x/u$a$a;

    .line 33
    iget-object v2, v8, Le/a/r/x/u$a$a;->b:Landroid/net/Uri;

    .line 34
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    new-instance v2, Ljava/io/File;

    .line 35
    iget-object v6, v8, Le/a/r/x/u$a$a;->b:Landroid/net/Uri;

    .line 36
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v6, Le/a/b0/b/a/c;->b:Lu3/c0;

    const-string v7, "$this$asRequestBody"

    .line 37
    invoke-static {v2, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v7, Lu3/h0;

    invoke-direct {v7, v2, v6}, Lu3/h0;-><init>(Ljava/io/File;Lu3/c0;)V

    goto :goto_5

    :cond_e
    :goto_4
    move-object v7, v3

    .line 39
    :goto_5
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    .line 40
    iget-object v6, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 41
    iget-object v6, v6, Le/a/r/x/u;->d:Le/a/r/x/u$a;

    .line 42
    iget-boolean v6, v6, Le/a/r/x/u$a;->a:Z

    if-eqz v6, :cond_f

    if-eqz v7, :cond_f

    .line 43
    new-instance v6, Le/a/b0/n/d$b;

    sget-object v8, Lcom/truecaller/common/profile/ImageSource;->TRUECALLER:Lcom/truecaller/common/profile/ImageSource;

    invoke-direct {v6, v7, v8}, Le/a/b0/n/d$b;-><init>(Lu3/j0;Lcom/truecaller/common/profile/ImageSource;)V

    goto :goto_6

    :cond_f
    if-eqz v6, :cond_10

    .line 44
    sget-object v6, Le/a/b0/n/d$a;->a:Le/a/b0/n/d$a;

    goto :goto_6

    .line 45
    :cond_10
    sget-object v6, Le/a/b0/n/d$c;->a:Le/a/b0/n/d$c;

    .line 46
    :goto_6
    iput-object v6, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 47
    iget-object v6, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 48
    iget-object v6, v6, Le/a/r/x/u;->g:Ls1/w/f;

    .line 49
    new-instance v7, Le/a/r/x/u$b$a;

    invoke-direct {v7, p0, v2, p1, v3}, Le/a/r/x/u$b$a;-><init>(Le/a/r/x/u$b;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    iput v5, p0, Le/a/r/x/u$b;->e:I

    invoke-static {v6, v7, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_11

    return-object v1

    .line 50
    :cond_11
    :goto_7
    check-cast p1, Le/a/b0/n/h;

    .line 51
    iget-boolean v2, p1, Le/a/b0/n/h;->a:Z

    if-eqz v2, :cond_18

    .line 52
    iget-object p1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 53
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_12

    .line 54
    invoke-interface {p1}, Le/a/r/x/t;->e3()V

    .line 55
    :cond_12
    iget-object p1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 56
    iget-object p1, p1, Le/a/r/x/u;->m:Le/a/r/c/o;

    .line 57
    iput v4, p0, Le/a/r/x/u$b;->e:I

    invoke-interface {p1, p0}, Le/a/r/c/o;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_13

    return-object v1

    .line 58
    :cond_13
    :goto_8
    iget-object p1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 59
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_14

    .line 60
    invoke-interface {p1}, Le/a/r/x/t;->b0()V

    .line 61
    :cond_14
    iget-object p1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 62
    iget-object v1, p1, Le/a/r/x/u;->p:Le/a/r/x/k;

    invoke-virtual {v1}, Le/a/r/x/k;->a()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 63
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Le/a/r/x/t;->Bo()V

    goto :goto_9

    .line 64
    :cond_15
    iget-object v1, p1, Le/a/r/x/u;->n:Le/a/r/g$a;

    invoke-virtual {v1}, Le/a/r/g$a;->a()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 65
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Le/a/r/x/t;->h3()V

    goto :goto_9

    .line 66
    :cond_16
    iget-object v1, p1, Le/a/r/x/u;->o:Le/a/p5/a0;

    invoke-interface {v1}, Le/a/p5/a0;->k()Z

    move-result v1

    if-nez v1, :cond_17

    .line 67
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Le/a/r/x/t;->Qg()V

    goto :goto_9

    .line 68
    :cond_17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/x/t;

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Le/a/r/x/t;->O5()V

    goto :goto_9

    .line 69
    :cond_18
    iget-object v1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 70
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/r/x/t;

    if-eqz v1, :cond_19

    .line 71
    invoke-interface {v1}, Le/a/r/x/t;->b0()V

    .line 72
    :cond_19
    iget-object v1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 73
    iget-object v1, v1, Le/a/r/x/u;->k:Le/a/r/q/c;

    .line 74
    iget v2, p1, Le/a/b0/n/h;->b:I

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SaveProfile"

    invoke-interface {v1, v3, v2}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 77
    iget-object v1, v1, Le/a/r/x/u;->j:Le/a/r/x/y/a;

    .line 78
    iget v2, p1, Le/a/b0/n/h;->b:I

    .line 79
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Le/a/r/x/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Le/a/r/x/u$b;->f:Le/a/r/x/u;

    .line 81
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/r/x/t;

    if-eqz v2, :cond_1a

    .line 82
    iget-object v1, v1, Le/a/r/x/u;->l:Le/a/b0/n/b;

    .line 83
    invoke-virtual {v1, p1}, Le/a/b0/n/b;->a(Le/a/b0/n/h;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Le/a/r/x/t;->a5(Ljava/lang/String;)V

    :cond_1a
    :goto_9
    return-object v0
.end method
