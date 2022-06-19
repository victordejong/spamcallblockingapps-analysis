.class public final Le/a/k/c/d2$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/d2;->h(Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoPlayerConfigProviderImpl$shouldShowFullVideoCallerId$4"
    f = "VideoPlayerConfigProvider.kt"
    l = {
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/c/d2;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Le/a/k/c/d2;Ljava/lang/String;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/d2$e;->f:Le/a/k/c/d2;

    iput-object p2, p0, Le/a/k/c/d2$e;->g:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/k/c/d2$e;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/d2$e;

    iget-object v0, p0, Le/a/k/c/d2$e;->f:Le/a/k/c/d2;

    iget-object v1, p0, Le/a/k/c/d2$e;->g:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/k/c/d2$e;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k/c/d2$e;-><init>(Le/a/k/c/d2;Ljava/lang/String;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/d2$e;

    iget-object v0, p0, Le/a/k/c/d2$e;->f:Le/a/k/c/d2;

    iget-object v1, p0, Le/a/k/c/d2$e;->g:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/k/c/d2$e;->h:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/k/c/d2$e;-><init>(Le/a/k/c/d2;Ljava/lang/String;ZLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/c/d2$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/c/d2$e;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/c/d2$e;->f:Le/a/k/c/d2;

    .line 5
    iget-object p1, p1, Le/a/k/c/d2;->f:Le/a/b0/q/z;

    .line 6
    iget-object v1, p0, Le/a/k/c/d2$e;->g:Ljava/lang/String;

    invoke-interface {p1, v1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 7
    iget-object p1, p0, Le/a/k/c/d2$e;->f:Le/a/k/c/d2;

    .line 8
    iget-object p1, p1, Le/a/k/c/d2;->c:Le/a/k/j;

    .line 9
    check-cast p1, Le/a/k/k;

    invoke-virtual {p1, v5}, Le/a/k/k;->d(Ljava/lang/String;)Z

    move-result v4

    .line 10
    iget-object v3, p0, Le/a/k/c/d2$e;->f:Le/a/k/c/d2;

    iget-boolean v6, p0, Le/a/k/c/d2$e;->h:Z

    const/4 v7, 0x0

    const/16 v9, 0x8

    iput v2, p0, Le/a/k/c/d2$e;->e:I

    move-object v8, p0

    invoke-static/range {v3 .. v9}, Le/a/k/c/d2;->n(Le/a/k/c/d2;ZLjava/lang/String;ZZLs1/w/d;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 11
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
