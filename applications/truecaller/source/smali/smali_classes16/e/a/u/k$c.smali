.class public final Le/a/u/k$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/k;->Yb(Landroid/view/View;)V
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
    c = "com.truecaller.yearincalling.YearInCallingPresenter$onShareButtonClicked$1"
    f = "YearInCallingPresenter.kt"
    l = {
        0x61
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/u/k;

.field public final synthetic h:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/u/k;Landroid/view/View;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/u/k$c;->g:Le/a/u/k;

    iput-object p2, p0, Le/a/u/k$c;->h:Landroid/view/View;

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

    new-instance p1, Le/a/u/k$c;

    iget-object v0, p0, Le/a/u/k$c;->g:Le/a/u/k;

    iget-object v1, p0, Le/a/u/k$c;->h:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Le/a/u/k$c;-><init>(Le/a/u/k;Landroid/view/View;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/u/k$c;

    iget-object v0, p0, Le/a/u/k$c;->g:Le/a/u/k;

    iget-object v1, p0, Le/a/u/k$c;->h:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Le/a/u/k$c;-><init>(Le/a/u/k;Landroid/view/View;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/u/k$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/u/k$c;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/u/k$c;->e:Ljava/lang/Object;

    check-cast v1, Le/a/u/k;

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
    iget-object p1, p0, Le/a/u/k$c;->g:Le/a/u/k;

    .line 5
    iget-object v2, p1, Le/a/u/k;->g:Le/a/b0/q/q;

    .line 6
    iget-object v4, p0, Le/a/u/k$c;->h:Landroid/view/View;

    iput-object p1, p0, Le/a/u/k$c;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/u/k$c;->f:I

    const/16 v3, 0x280

    invoke-interface {v2, v4, v3, v3, p0}, Le/a/b0/q/q;->a(Landroid/view/View;IILs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move-object v1, p1

    move-object p1, v2

    :goto_0
    check-cast p1, Landroid/net/Uri;

    .line 7
    iput-object p1, v1, Le/a/u/k;->d:Landroid/net/Uri;

    .line 8
    iget-object p1, p0, Le/a/u/k$c;->g:Le/a/u/k;

    .line 9
    iget-object p1, p1, Le/a/u/k;->j:Le/a/q2/a;

    .line 10
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    const-string v2, "YearInReviewShare"

    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v2, "GenericAnalyticsEvent.ne\u2026arInReview.SHARE).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 11
    iget-object p1, p0, Le/a/u/k$c;->g:Le/a/u/k;

    .line 12
    iget-object v1, p1, Le/a/u/k;->d:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 13
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/u/f;

    if-eqz v2, :cond_3

    .line 14
    iget-object p1, p1, Le/a/u/k;->e:Ljava/lang/String;

    const-string v3, "image/png"

    .line 15
    invoke-interface {v2, p1, v1, v3}, Le/a/u/f;->de(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
