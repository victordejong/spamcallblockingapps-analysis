.class public final Le/a/a4/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a4/g;->j(Ljava/lang/String;Ls1/w/f;Le/a/a4/m;JLs1/z/b/l;)Ljava/lang/Object;
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
    c = "com.truecaller.init.BaseApplicationInitManager$initWithContext$1"
    f = "BaseApplicationInitManager.kt"
    l = {
        0x6b,
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a4/g;

.field public final synthetic g:J

.field public final synthetic h:Ls1/z/b/l;

.field public final synthetic i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a4/g;JLs1/z/b/l;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a4/g$a;->f:Le/a/a4/g;

    iput-wide p2, p0, Le/a/a4/g$a;->g:J

    iput-object p4, p0, Le/a/a4/g$a;->h:Ls1/z/b/l;

    iput-object p5, p0, Le/a/a4/g$a;->i:Ljava/lang/String;

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

    new-instance p1, Le/a/a4/g$a;

    iget-object v1, p0, Le/a/a4/g$a;->f:Le/a/a4/g;

    iget-wide v2, p0, Le/a/a4/g$a;->g:J

    iget-object v4, p0, Le/a/a4/g$a;->h:Ls1/z/b/l;

    iget-object v5, p0, Le/a/a4/g$a;->i:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/a4/g$a;-><init>(Le/a/a4/g;JLs1/z/b/l;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/a4/g$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/a4/g$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a4/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/a4/g$a;->e:I

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
    iget-wide v4, p0, Le/a/a4/g$a;->g:J

    iput v3, p0, Le/a/a4/g$a;->e:I

    invoke-static {v4, v5, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Le/a/a4/g$a;->h:Ls1/z/b/l;

    iget-object v1, p0, Le/a/a4/g$a;->i:Ljava/lang/String;

    iget-object v3, p0, Le/a/a4/g$a;->f:Le/a/a4/g;

    .line 6
    iget-object v3, v3, Le/a/a4/g;->g:Le/a/p5/m0;

    .line 7
    iput v2, p0, Le/a/a4/g$a;->e:I

    invoke-static {p1, v1, v3, p0}, Le/a/m0/a1$k;->r0(Ls1/z/b/l;Ljava/lang/String;Le/a/p5/m0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
