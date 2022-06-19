.class public final Le/a/c/a/d/a/a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/d/a/a;->d()V
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
    c = "com.truecaller.insights.ui.financepage.presentation.FinancePageViewModel$configureLiveData$4"
    f = "FinancePageViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/a/d/a/a;


# direct methods
.method public constructor <init>(Le/a/c/a/d/a/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/a/a$b;->e:Le/a/c/a/d/a/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/c/a/d/a/a$b;

    iget-object v0, p0, Le/a/c/a/d/a/a$b;->e:Le/a/c/a/d/a/a;

    invoke-direct {p1, v0, p2}, Le/a/c/a/d/a/a$b;-><init>(Le/a/c/a/d/a/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/a/d/a/a$b;

    iget-object v0, p0, Le/a/c/a/d/a/a$b;->e:Le/a/c/a/d/a/a;

    invoke-direct {p1, v0, p2}, Le/a/c/a/d/a/a$b;-><init>(Le/a/c/a/d/a/a;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/a/d/a/a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/d/a/a$b;->e:Le/a/c/a/d/a/a;

    .line 3
    iget-object v0, p1, Le/a/c/a/d/a/a;->e:Ln3/v/i0;

    .line 4
    iget-object p1, p1, Le/a/c/a/d/a/a;->o:Le/a/c/a/d/d/j;

    .line 5
    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, v1}, Le/a/c/a/i/c;->c(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    invoke-static {p1, v2, v3, v4, v5}, Ln3/v/r;->a(Lq3/a/x2/f;Ls1/w/f;JI)Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v2, Le/a/c/a/d/a/a$b$a;

    invoke-direct {v2, p0}, Le/a/c/a/d/a/a$b$a;-><init>(Le/a/c/a/d/a/a$b;)V

    invoke-virtual {v0, p1, v2}, Ln3/v/i0;->m(Landroidx/lifecycle/LiveData;Ln3/v/l0;)V

    return-object v1
.end method
