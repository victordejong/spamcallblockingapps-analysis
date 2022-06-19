.class public final Le/a/c/a/e/c/b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.insights.ui.semicard.domain.SemicardViewModel$disableScreenGotItClick$1"
    f = "SemicardViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/a/e/c/e;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/a/e/c/e;Ljava/lang/String;ZLjava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/e/c/b;->e:Le/a/c/a/e/c/e;

    iput-object p2, p0, Le/a/c/a/e/c/b;->f:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/c/a/e/c/b;->g:Z

    iput-object p4, p0, Le/a/c/a/e/c/b;->h:Ljava/lang/String;

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

    new-instance p1, Le/a/c/a/e/c/b;

    iget-object v1, p0, Le/a/c/a/e/c/b;->e:Le/a/c/a/e/c/e;

    iget-object v2, p0, Le/a/c/a/e/c/b;->f:Ljava/lang/String;

    iget-boolean v3, p0, Le/a/c/a/e/c/b;->g:Z

    iget-object v4, p0, Le/a/c/a/e/c/b;->h:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/a/e/c/b;-><init>(Le/a/c/a/e/c/e;Ljava/lang/String;ZLjava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/a/e/c/b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/a/e/c/b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/e/c/b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/e/c/b;->e:Le/a/c/a/e/c/e;

    new-instance v0, Le/a/c/a/e/d/a$a$a;

    iget-object v1, p0, Le/a/c/a/e/c/b;->f:Ljava/lang/String;

    iget-boolean v2, p0, Le/a/c/a/e/c/b;->g:Z

    iget-object v3, p0, Le/a/c/a/e/c/b;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Le/a/c/a/e/d/a$a$a;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, v0}, Le/a/c/a/e/c/e;->c(Le/a/c/a/e/d/a;)V

    .line 3
    iget-object p1, p0, Le/a/c/a/e/c/b;->e:Le/a/c/a/e/c/e;

    .line 4
    iget-object p1, p1, Le/a/c/a/e/c/e;->a:Ln3/v/k0;

    .line 5
    sget-object v0, Le/a/c/a/e/c/f$b;->a:Le/a/c/a/e/c/f$b;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
