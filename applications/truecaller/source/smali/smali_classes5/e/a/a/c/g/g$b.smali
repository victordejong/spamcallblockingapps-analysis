.class public final Le/a/a/c/g/g$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/g/g;->Ij()V
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
    c = "com.truecaller.messaging.conversation.imgrouplinkinvite.GroupInvitePresenter$joinGroup$1"
    f = "GroupInvitePresenter.kt"
    l = {
        0x57,
        0x62,
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/c/g/g;


# direct methods
.method public constructor <init>(Le/a/a/c/g/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

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

    new-instance v0, Le/a/a/c/g/g$b;

    iget-object v1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    invoke-direct {v0, v1, p2}, Le/a/a/c/g/g$b;-><init>(Le/a/a/c/g/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/a/c/g/g$b;

    iget-object v1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    invoke-direct {v0, v1, p2}, Le/a/a/c/g/g$b;-><init>(Le/a/a/c/g/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/a/c/g/g$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a/c/g/g$b;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v1

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v2, p0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lq3/a/i0;

    .line 4
    iget-object p1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Le/a/a/c/g/g$b$a;

    invoke-direct {v10, p0, v5}, Le/a/a/c/g/g$b$a;-><init>(Le/a/a/c/g/g$b;Ls1/w/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v2

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v7

    .line 5
    iput-object v7, p1, Le/a/a/c/g/g;->e:Lq3/a/p1;

    .line 6
    iget-object p1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    .line 7
    iget-object p1, p1, Le/a/a/c/g/g;->h:Ls1/w/f;

    .line 8
    new-instance v7, Le/a/a/c/g/g$b$b;

    invoke-direct {v7, p0, v5}, Le/a/a/c/g/g$b$b;-><init>(Le/a/a/c/g/g$b;Ls1/w/d;)V

    iput-object v2, p0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    iput v6, p0, Le/a/a/c/g/g$b;->f:I

    invoke-static {p1, v7, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast p1, Ls1/k;

    .line 9
    iget-object v7, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 10
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 11
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    iget-object v7, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    .line 14
    iput-object v8, v7, Le/a/a/c/g/g;->d:Ljava/lang/String;

    if-nez v8, :cond_5

    .line 15
    invoke-virtual {v7, v6, p1}, Le/a/a/c/g/g;->Mj(ZLjava/lang/String;)V

    return-object v0

    .line 16
    :cond_5
    new-instance v9, Ls1/z/c/c0;

    invoke-direct {v9}, Ls1/z/c/c0;-><init>()V

    .line 17
    iget-object p1, v7, Le/a/a/c/g/g;->o:Le/a/a/i0;

    .line 18
    invoke-interface {p1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string v7, "settings.imPeerId ?: return@let"

    invoke-static {p1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v9, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    .line 20
    iget-object p1, p1, Le/a/a/c/g/g;->h:Ls1/w/f;

    .line 21
    new-instance v13, Le/a/a/c/g/g$b$c;

    const/4 v10, 0x0

    move-object v7, v13

    move-object v11, p0

    move-object v12, v2

    invoke-direct/range {v7 .. v12}, Le/a/a/c/g/g$b$c;-><init>(Ljava/lang/String;Ls1/z/c/c0;Ls1/w/d;Le/a/a/c/g/g$b;Lq3/a/i0;)V

    iput-object v2, p0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    iput v4, p0, Le/a/a/c/g/g$b;->f:I

    invoke-static {p1, v13, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    check-cast p1, Ljava/lang/Integer;

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_7
    move p1, v4

    :goto_2
    if-lez p1, :cond_8

    goto :goto_3

    :cond_8
    move v6, v4

    :goto_3
    if-eqz v6, :cond_a

    .line 22
    iget-object p1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    .line 23
    iget-object v4, p1, Le/a/a/c/g/g;->d:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Le/a/a/c/g/g$b;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/a/c/g/g$b;->f:I

    invoke-virtual {p1, v4, p0}, Le/a/a/c/g/g;->Kj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v6, v2

    .line 25
    :goto_4
    iget-object p1, p0, Le/a/a/c/g/g$b;->g:Le/a/a/c/g/g;

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Le/a/a/c/g/g$b$d;

    invoke-direct {v9, v5, p0, v6}, Le/a/a/c/g/g$b$d;-><init>(Ls1/w/d;Le/a/a/c/g/g$b;Lq3/a/i0;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v1

    .line 26
    iput-object v1, p1, Le/a/a/c/g/g;->f:Lq3/a/p1;

    :cond_a
    return-object v0
.end method
