.class public final Le/a/f/y/m;
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
    c = "com.truecaller.incallui.service.InCallUIServicePresenter$handleBusinessCallsWithVideoCallerID$1"
    f = "InCallUIServicePresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/f/y/o;

.field public final synthetic f:Le/a/f/a/g;

.field public final synthetic g:Landroid/telecom/Call;


# direct methods
.method public constructor <init>(Le/a/f/y/o;Le/a/f/a/g;Landroid/telecom/Call;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    iput-object p2, p0, Le/a/f/y/m;->f:Le/a/f/a/g;

    iput-object p3, p0, Le/a/f/y/m;->g:Landroid/telecom/Call;

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

    new-instance p1, Le/a/f/y/m;

    iget-object v0, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    iget-object v1, p0, Le/a/f/y/m;->f:Le/a/f/a/g;

    iget-object v2, p0, Le/a/f/y/m;->g:Landroid/telecom/Call;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/f/y/m;-><init>(Le/a/f/y/o;Le/a/f/a/g;Landroid/telecom/Call;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/y/m;

    iget-object v0, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    iget-object v1, p0, Le/a/f/y/m;->f:Le/a/f/a/g;

    iget-object v2, p0, Le/a/f/y/m;->g:Landroid/telecom/Call;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/f/y/m;-><init>(Le/a/f/y/o;Le/a/f/a/g;Landroid/telecom/Call;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/f/y/m;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 3
    iget-object p1, p1, Le/a/f/y/o;->E:Le/a/k/h;

    .line 4
    invoke-interface {p1}, Le/a/k/h;->A()Le/a/k/c/c2;

    move-result-object p1

    .line 5
    iget-object v1, p0, Le/a/f/y/m;->f:Le/a/f/a/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 7
    :goto_0
    invoke-interface {p1, v1}, Le/a/k/c/c2;->e(Lcom/truecaller/data/entity/Contact;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 8
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 9
    iget-object p1, p1, Le/a/f/y/o;->v:Le/a/p5/c;

    .line 10
    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v3

    .line 11
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_1

    .line 12
    iget-object p1, p0, Le/a/f/y/m;->g:Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object p1

    const-string v1, "call.details"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v7

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 14
    iget-object p1, p1, Le/a/f/y/o;->v:Le/a/p5/c;

    .line 15
    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v7

    :goto_1
    cmp-long p1, v7, v3

    if-lez p1, :cond_3

    .line 16
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 17
    iget-object v3, p1, Le/a/f/y/o;->K:Le/a/k/d;

    .line 18
    iget-object p1, p0, Le/a/f/y/m;->f:Le/a/f/a/g;

    if-eqz p1, :cond_2

    .line 19
    iget-object v2, p1, Le/a/f/a/g;->e:Ljava/lang/String;

    .line 20
    :cond_2
    sget-object p1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->INCALL_NOTIF_SERVICE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->getValue()Ljava/lang/String;

    move-result-object p1

    move-wide v4, v7

    move-object v7, v2

    move-object v8, p1

    .line 21
    invoke-interface/range {v3 .. v8}, Le/a/k/d;->e(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_3
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 23
    iget-object p1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    .line 24
    invoke-virtual {p1}, Le/a/f/z/f0;->b()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 26
    iget-object p1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    .line 27
    invoke-virtual {p1}, Le/a/f/z/f0;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 28
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 29
    iget-object p1, p1, Le/a/f/y/o;->u:Le/a/f/z/f0;

    .line 30
    invoke-virtual {p1}, Le/a/f/z/f0;->c()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 31
    :cond_4
    iget-object p1, p0, Le/a/f/y/m;->f:Le/a/f/a/g;

    if-eqz p1, :cond_5

    .line 32
    iget-object v1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2, v2}, Le/a/f/y/o;->Uj(ZZ)V

    .line 34
    iget-object v1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 35
    iget-object v2, p1, Le/a/f/a/g;->a:Ljava/lang/String;

    .line 36
    invoke-static {v1, v2}, Le/a/f/y/o;->Jj(Le/a/f/y/o;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    invoke-static {v1, p1}, Le/a/f/y/o;->Ij(Le/a/f/y/o;Le/a/f/a/g;)V

    .line 38
    :cond_5
    iget-object p1, p0, Le/a/f/y/m;->e:Le/a/f/y/o;

    .line 39
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_6

    .line 40
    invoke-interface {p1}, Le/a/f/y/k;->x()V

    :cond_6
    :goto_2
    return-object v0
.end method
