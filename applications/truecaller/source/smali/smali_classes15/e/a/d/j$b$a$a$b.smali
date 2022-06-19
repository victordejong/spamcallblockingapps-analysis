.class public final Le/a/d/j$b$a$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/j$b$a$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipImpl$getGroupCallState$2$1$1$namesFlow$1"
    f = "Voip.kt"
    l = {
        0x2c9
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/j$b$a$a;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/d/j$b$a$a;)V
    .locals 0

    iput-object p2, p0, Le/a/d/j$b$a$a$b;->g:Le/a/d/j$b$a$a;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance v0, Le/a/d/j$b$a$a$b;

    iget-object v1, p0, Le/a/d/j$b$a$a$b;->g:Le/a/d/j$b$a$a;

    invoke-direct {v0, p2, v1}, Le/a/d/j$b$a$a$b;-><init>(Ls1/w/d;Le/a/d/j$b$a$a;)V

    iput-object p1, v0, Le/a/d/j$b$a$a$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/d/j$b$a$a$b;

    iget-object v1, p0, Le/a/d/j$b$a$a$b;->g:Le/a/d/j$b$a$a;

    invoke-direct {v0, p2, v1}, Le/a/d/j$b$a$a$b;-><init>(Ls1/w/d;Le/a/d/j$b$a$a;)V

    iput-object p1, v0, Le/a/d/j$b$a$a$b;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/d/j$b$a$a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/j$b$a$a$b;->f:I

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

    iget-object p1, p0, Le/a/d/j$b$a$a$b;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    .line 4
    iget-object v1, p0, Le/a/d/j$b$a$a$b;->g:Le/a/d/j$b$a$a;

    iget-object v1, v1, Le/a/d/j$b$a$a;->c:Le/a/d/v/b;

    invoke-interface {v1}, Le/a/d/v/b;->d()Le/a/d/c0/z1/d;

    move-result-object v1

    .line 5
    iget-object v3, p0, Le/a/d/j$b$a$a$b;->g:Le/a/d/j$b$a$a;

    iget-object v3, v3, Le/a/d/j$b$a$a;->a:Le/a/d/j$b$a;

    iget-object v3, v3, Le/a/d/j$b$a;->i:Le/a/d/j$b;

    iget-object v4, v3, Le/a/d/j$b;->h:Le/a/d/j;

    .line 6
    iget-object v4, v4, Le/a/d/j;->y:Le/a/p5/c0;

    .line 7
    iget v3, v3, Le/a/d/j$b;->i:I

    invoke-static {v1, v4, v3}, Le/a/p5/s0/g;->J0(Le/a/d/c0/z1/d;Le/a/p5/c0;I)Lq3/a/x2/f;

    move-result-object v1

    .line 8
    new-instance v3, Le/a/d/j$b$a$a$b$a;

    invoke-direct {v3, p1}, Le/a/d/j$b$a$a$b$a;-><init>(Lq3/a/x2/g;)V

    iput v2, p0, Le/a/d/j$b$a$a$b;->f:I

    check-cast v1, Le/a/d/c0/b0;

    invoke-virtual {v1, v3, p0}, Le/a/d/c0/b0;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
