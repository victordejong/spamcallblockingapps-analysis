.class public final Le/a/c/x/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/x/b;->a(JLs1/z/b/l;)V
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
    c = "com.truecaller.insights.search.MessageInfoLoaderImpl$loadMessageInfoIntoUiContext$1"
    f = "MessageInfoLoader.kt"
    l = {
        0x20,
        0x21
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/x/b;

.field public final synthetic g:J

.field public final synthetic h:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/c/x/b;JLs1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/x/b$a;->f:Le/a/c/x/b;

    iput-wide p2, p0, Le/a/c/x/b$a;->g:J

    iput-object p4, p0, Le/a/c/x/b$a;->h:Ls1/z/b/l;

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

    new-instance p1, Le/a/c/x/b$a;

    iget-object v1, p0, Le/a/c/x/b$a;->f:Le/a/c/x/b;

    iget-wide v2, p0, Le/a/c/x/b$a;->g:J

    iget-object v4, p0, Le/a/c/x/b$a;->h:Ls1/z/b/l;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/x/b$a;-><init>(Le/a/c/x/b;JLs1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v5, p2

    check-cast v5, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/x/b$a;

    iget-object v1, p0, Le/a/c/x/b$a;->f:Le/a/c/x/b;

    iget-wide v2, p0, Le/a/c/x/b$a;->g:J

    iget-object v4, p0, Le/a/c/x/b$a;->h:Ls1/z/b/l;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/c/x/b$a;-><init>(Le/a/c/x/b;JLs1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/x/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/x/b$a;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/x/b$a;->f:Le/a/c/x/b;

    .line 5
    iget-object p1, p1, Le/a/c/x/b;->e:Le/a/c/c/f/j;

    .line 6
    iget-wide v4, p0, Le/a/c/x/b$a;->g:J

    iput v3, p0, Le/a/c/x/b$a;->e:I

    .line 7
    iget-object p1, p1, Le/a/c/c/f/j;->a:Le/a/c/c/d/d0;

    invoke-virtual {p1, v4, v5, p0}, Le/a/c/c/d/d0;->O(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 8
    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/insights/models/pdo/SmsBackupMessage;

    if-eqz p1, :cond_4

    .line 9
    iget-object v1, p0, Le/a/c/x/b$a;->f:Le/a/c/x/b;

    .line 10
    iget-object v1, v1, Le/a/c/x/b;->d:Ls1/w/f;

    .line 11
    new-instance v3, Le/a/c/x/b$a$a;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, p0}, Le/a/c/x/b$a$a;-><init>(Lcom/truecaller/insights/models/pdo/SmsBackupMessage;Ls1/w/d;Le/a/c/x/b$a;)V

    iput v2, p0, Le/a/c/x/b$a;->e:I

    invoke-static {v1, v3, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 12
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
