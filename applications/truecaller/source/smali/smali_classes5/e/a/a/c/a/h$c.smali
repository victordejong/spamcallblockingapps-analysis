.class public final Le/a/a/c/a/h$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/a/h;->l(JILs1/z/b/a;)V
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
    c = "com.truecaller.messaging.conversation.smartcards.SmartCardManagerImpl$loadRowFeedback$1"
    f = "SmartCardsManager.kt"
    l = {
        0x112
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/a/c/a/h;

.field public final synthetic h:J

.field public final synthetic i:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/c/a/h;JLs1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/h$c;->g:Le/a/a/c/a/h;

    iput-wide p2, p0, Le/a/a/c/a/h$c;->h:J

    iput-object p4, p0, Le/a/a/c/a/h$c;->i:Ls1/z/b/a;

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

    new-instance p1, Le/a/a/c/a/h$c;

    iget-object v1, p0, Le/a/a/c/a/h$c;->g:Le/a/a/c/a/h;

    iget-wide v2, p0, Le/a/a/c/a/h$c;->h:J

    iget-object v4, p0, Le/a/a/c/a/h$c;->i:Ls1/z/b/a;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/h$c;-><init>(Le/a/a/c/a/h;JLs1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/c/a/h$c;

    iget-object v1, p0, Le/a/a/c/a/h$c;->g:Le/a/a/c/a/h;

    iget-wide v2, p0, Le/a/a/c/a/h$c;->h:J

    iget-object v4, p0, Le/a/a/c/a/h$c;->i:Ls1/z/b/a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/h$c;-><init>(Le/a/a/c/a/h;JLs1/z/b/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/c/a/h$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a/c/a/h$c;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/a/c/a/h$c;->e:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/a/h;

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
    iget-object p1, p0, Le/a/a/c/a/h$c;->g:Le/a/a/c/a/h;

    invoke-virtual {p1}, Le/a/a/c/a/h;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/a/c/a/h$c;->g:Le/a/a/c/a/h;

    .line 5
    iget-object v1, p1, Le/a/a/c/a/h;->h:Ljava/util/Map;

    if-nez v1, :cond_3

    .line 6
    iget-boolean v1, p1, Le/a/a/c/a/h;->i:Z

    if-nez v1, :cond_3

    .line 7
    iput-boolean v2, p1, Le/a/a/c/a/h;->i:Z

    .line 8
    iget-object v1, p1, Le/a/a/c/a/h;->u:Le/a/c/i/e/c;

    .line 9
    iget-wide v3, p0, Le/a/a/c/a/h$c;->h:J

    iput-object p1, p0, Le/a/a/c/a/h$c;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/a/c/a/h$c;->f:I

    invoke-interface {v1, v3, v4, p0}, Le/a/c/i/e/c;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 10
    iput-object p1, v0, Le/a/a/c/a/h;->h:Ljava/util/Map;

    .line 11
    iget-object p1, p0, Le/a/a/c/a/h$c;->i:Ls1/z/b/a;

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Le/a/a/c/a/h$c;->g:Le/a/a/c/a/h;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p1, Le/a/a/c/a/h;->i:Z

    .line 14
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
