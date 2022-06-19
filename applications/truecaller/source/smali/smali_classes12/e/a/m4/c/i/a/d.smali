.class public final Le/a/m4/c/i/a/d;
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
    c = "com.truecaller.profile.data.dto.businessV2.BizProfileLocalFileManagerImpl$readAndParseBizProfileAsync$1"
    f = "BizProfileLocalFileManager.kt"
    l = {
        0x39
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/m4/c/i/a/c;

.field public final synthetic g:Le/a/e/c0;


# direct methods
.method public constructor <init>(Le/a/m4/c/i/a/c;Le/a/e/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/m4/c/i/a/d;->f:Le/a/m4/c/i/a/c;

    iput-object p2, p0, Le/a/m4/c/i/a/d;->g:Le/a/e/c0;

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

    new-instance p1, Le/a/m4/c/i/a/d;

    iget-object v0, p0, Le/a/m4/c/i/a/d;->f:Le/a/m4/c/i/a/c;

    iget-object v1, p0, Le/a/m4/c/i/a/d;->g:Le/a/e/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/m4/c/i/a/d;-><init>(Le/a/m4/c/i/a/c;Le/a/e/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/m4/c/i/a/d;

    iget-object v0, p0, Le/a/m4/c/i/a/d;->f:Le/a/m4/c/i/a/c;

    iget-object v1, p0, Le/a/m4/c/i/a/d;->g:Le/a/e/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/m4/c/i/a/d;-><init>(Le/a/m4/c/i/a/c;Le/a/e/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/m4/c/i/a/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/m4/c/i/a/d;->e:I

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
    iget-object p1, p0, Le/a/m4/c/i/a/d;->f:Le/a/m4/c/i/a/c;

    .line 5
    iget-object p1, p1, Le/a/m4/c/i/a/c;->e:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/m4/c/i/a/d$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/m4/c/i/a/d$a;-><init>(Le/a/m4/c/i/a/d;Ls1/w/d;)V

    iput v2, p0, Le/a/m4/c/i/a/d;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;

    .line 8
    iget-object v0, p0, Le/a/m4/c/i/a/d;->g:Le/a/e/c0;

    .line 9
    iget-object v0, v0, Le/a/e/c0;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 10
    iget-object v0, v0, Lcom/truecaller/ui/TruecallerInit;->o:Lcom/truecaller/ui/components/DrawerHeaderView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/components/DrawerHeaderView;->h1(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/ui/components/DrawerHeaderView;->f1()V

    .line 13
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
