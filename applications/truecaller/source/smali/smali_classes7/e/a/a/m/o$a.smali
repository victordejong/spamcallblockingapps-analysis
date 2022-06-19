.class public final Le/a/a/m/o$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/m/o;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.promo.InboxCleanerSpamTabPresenter$onBindItem$1$1"
    f = "PromoPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/m/o;

.field public final synthetic f:Ls1/z/c/a0;


# direct methods
.method public constructor <init>(Le/a/a/m/o;Ls1/z/c/a0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/m/o$a;->e:Le/a/a/m/o;

    iput-object p2, p0, Le/a/a/m/o$a;->f:Ls1/z/c/a0;

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

    new-instance p1, Le/a/a/m/o$a;

    iget-object v0, p0, Le/a/a/m/o$a;->e:Le/a/a/m/o;

    iget-object v1, p0, Le/a/a/m/o$a;->f:Ls1/z/c/a0;

    invoke-direct {p1, v0, v1, p2}, Le/a/a/m/o$a;-><init>(Le/a/a/m/o;Ls1/z/c/a0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/m/o$a;->e:Le/a/a/m/o;

    iget-object v1, p0, Le/a/a/m/o$a;->f:Ls1/z/c/a0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, v0, Le/a/a/m/o;->i:Le/a/a/m/n1;

    iget-object v0, v0, Le/a/a/m/o;->h:Le/a/a/m/p;

    .line 4
    iget-object v0, v0, Le/a/a/m/p;->e:Le/a/p5/c0;

    const v2, 0x7f1206cb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    iget v1, v1, Ls1/z/c/a0;->a:I

    .line 6
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    .line 7
    invoke-interface {v0, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026abBannerTitle, spamCount)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Le/a/a/m/n1;->setTitle(Ljava/lang/String;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/m/o$a;->e:Le/a/a/m/o;

    iget-object v0, p1, Le/a/a/m/o;->i:Le/a/a/m/n1;

    iget-object p1, p1, Le/a/a/m/o;->h:Le/a/a/m/p;

    .line 2
    iget-object p1, p1, Le/a/a/m/p;->e:Le/a/p5/c0;

    const v1, 0x7f1206cb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Le/a/a/m/o$a;->f:Ls1/z/c/a0;

    iget v4, v4, Ls1/z/c/a0;->a:I

    .line 4
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    .line 5
    invoke-interface {p1, v1, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "resourceProvider.getStri\u2026abBannerTitle, spamCount)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/a/m/n1;->setTitle(Ljava/lang/String;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
