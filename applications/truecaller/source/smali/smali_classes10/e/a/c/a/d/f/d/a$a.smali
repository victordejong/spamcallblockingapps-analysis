.class public final Le/a/c/a/d/f/d/a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/f/d/a;->onTextChanged(Ljava/lang/CharSequence;III)V
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
    c = "com.truecaller.insights.ui.financepage.search.utils.DebouncedTextWatcher$onTextChanged$1"
    f = "DebouncedTextWatcher.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/a/d/f/d/a;

.field public final synthetic g:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Le/a/c/a/d/f/d/a;Ljava/lang/CharSequence;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/f/d/a$a;->f:Le/a/c/a/d/f/d/a;

    iput-object p2, p0, Le/a/c/a/d/f/d/a$a;->g:Ljava/lang/CharSequence;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/d/f/d/a$a;

    iget-object v0, p0, Le/a/c/a/d/f/d/a$a;->f:Le/a/c/a/d/f/d/a;

    iget-object v1, p0, Le/a/c/a/d/f/d/a$a;->g:Ljava/lang/CharSequence;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/d/f/d/a$a;-><init>(Le/a/c/a/d/f/d/a;Ljava/lang/CharSequence;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/d/f/d/a$a;

    iget-object v0, p0, Le/a/c/a/d/f/d/a$a;->f:Le/a/c/a/d/f/d/a;

    iget-object v1, p0, Le/a/c/a/d/f/d/a$a;->g:Ljava/lang/CharSequence;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/d/f/d/a$a;-><init>(Le/a/c/a/d/f/d/a;Ljava/lang/CharSequence;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/d/f/d/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/a/d/f/d/a$a;->e:I

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

    const-wide/16 v3, 0x1f4

    .line 4
    iput v2, p0, Le/a/c/a/d/f/d/a$a;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/c/a/d/f/d/a$a;->f:Le/a/c/a/d/f/d/a;

    .line 6
    iget-object p1, p1, Le/a/c/a/d/f/d/a;->c:Ls1/z/b/l;

    .line 7
    iget-object v0, p0, Le/a/c/a/d/f/d/a$a;->g:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
