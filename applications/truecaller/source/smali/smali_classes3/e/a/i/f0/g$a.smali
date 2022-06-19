.class public final Le/a/i/f0/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/g;->c(J)V
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
    c = "com.truecaller.ads.provider.DefaultAdsLoader$invalidateAllDelayed$1"
    f = "DefaultAdsLoader.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/i/f0/g;

.field public final synthetic g:J


# direct methods
.method public constructor <init>(Le/a/i/f0/g;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/g$a;->f:Le/a/i/f0/g;

    iput-wide p2, p0, Le/a/i/f0/g$a;->g:J

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

    new-instance p1, Le/a/i/f0/g$a;

    iget-object v0, p0, Le/a/i/f0/g$a;->f:Le/a/i/f0/g;

    iget-wide v1, p0, Le/a/i/f0/g$a;->g:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/f0/g$a;-><init>(Le/a/i/f0/g;JLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/i/f0/g$a;

    iget-object v0, p0, Le/a/i/f0/g$a;->f:Le/a/i/f0/g;

    iget-wide v1, p0, Le/a/i/f0/g$a;->g:J

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/i/f0/g$a;-><init>(Le/a/i/f0/g;JLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/f0/g$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/f0/g$a;->e:I

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
    iget-wide v3, p0, Le/a/i/f0/g$a;->g:J

    iput v2, p0, Le/a/i/f0/g$a;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/i/f0/g$a;->f:Le/a/i/f0/g;

    .line 6
    iget-object p1, p1, Le/a/i/f0/g;->c:Ln3/g/i;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1}, Ln3/g/i;->j()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Ln3/g/i;->h(I)I

    move-result v2

    .line 9
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    invoke-virtual {p1, v0}, Ln3/g/i;->k(I)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "valueAt(i)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/i/f0/m/d;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 11
    iget-object v3, p0, Le/a/i/f0/g$a;->f:Le/a/i/f0/g;

    .line 12
    iget-object v3, v3, Le/a/i/f0/g;->e:Ljava/util/HashSet;

    .line 13
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 14
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Le/a/i/f0/g$a;->f:Le/a/i/f0/g;

    .line 16
    iget-object p1, p1, Le/a/i/f0/g;->c:Ln3/g/i;

    .line 17
    invoke-virtual {p1}, Ln3/g/i;->b()V

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
