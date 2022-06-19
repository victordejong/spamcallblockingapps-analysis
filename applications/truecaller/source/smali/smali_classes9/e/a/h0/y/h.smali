.class public Le/a/h0/y/h;
.super Le/a/h0/y/g;
.source "SourceFile"

# interfaces
.implements Le/a/i/m;


# instance fields
.field public final b:Le/a/h0/m;

.field public final c:Le/a/o5/b0;

.field public final d:Le/a/p5/u;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/i/f0/d;

.field public final g:Le/a/i/s;

.field public final h:Le/a/q2/a;

.field public final i:Le/a/h0/t;

.field public final j:Le/a/l/p2/v0;

.field public k:Le/a/i/f0/m/d;


# direct methods
.method public constructor <init>(Le/a/h0/m;Le/a/o5/b0;Le/a/p5/u;Le/a/q2/a;Le/a/p5/c0;Le/a/i/f0/d;Le/a/i/s;Le/a/h0/t;Le/a/l/p2/v0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/h0/y/g;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/h0/y/h;->k:Le/a/i/f0/m/d;

    .line 3
    iput-object p1, p0, Le/a/h0/y/h;->b:Le/a/h0/m;

    .line 4
    iput-object p2, p0, Le/a/h0/y/h;->c:Le/a/o5/b0;

    .line 5
    iput-object p3, p0, Le/a/h0/y/h;->d:Le/a/p5/u;

    .line 6
    iput-object p4, p0, Le/a/h0/y/h;->h:Le/a/q2/a;

    .line 7
    iput-object p5, p0, Le/a/h0/y/h;->e:Le/a/p5/c0;

    .line 8
    iput-object p6, p0, Le/a/h0/y/h;->f:Le/a/i/f0/d;

    .line 9
    iput-object p7, p0, Le/a/h0/y/h;->g:Le/a/i/s;

    .line 10
    iput-object p8, p0, Le/a/h0/y/h;->i:Le/a/h0/t;

    .line 11
    iput-object p9, p0, Le/a/h0/y/h;->j:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/h0/y/i;

    sget-object v1, Lcom/truecaller/premium/PremiumLaunchContext;->UPDATE_SPAMMERS_DIALOG:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, v1}, Le/a/h0/y/i;->W0(Lcom/truecaller/premium/PremiumLaunchContext;)V

    :cond_0
    return-void
.end method

.method public Ij(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/h0/y/h;->d:Le/a/p5/u;

    invoke-interface {p1}, Le/a/p5/u;->d()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/y/i;

    invoke-interface {p1}, Le/a/h0/y/i;->I6()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/y/i;

    invoke-interface {p1}, Le/a/h0/y/i;->y8()V

    .line 5
    iget-object p1, p0, Le/a/h0/y/h;->i:Le/a/h0/t;

    invoke-interface {p1}, Le/a/h0/t;->d()V

    .line 6
    iget-object p1, p0, Le/a/h0/y/h;->b:Le/a/h0/m;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Le/a/h0/m;->p(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Jj()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/h0/y/i;

    invoke-interface {v0}, Le/a/h0/y/i;->kd()V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/h0/y/i;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/a/h0/y/h;->b:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v2, 0x0

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/h0/y/h;->e:Le/a/p5/c0;

    const v3, 0x7f120798

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Le/a/h0/y/h;->c:Le/a/o5/b0;

    invoke-interface {v6, v0, v1}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-interface {p1, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    .line 5
    :goto_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 6
    check-cast v0, Le/a/h0/y/i;

    invoke-interface {v0, p1}, Le/a/h0/y/i;->Ta(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/h0/y/h;->f:Le/a/i/f0/d;

    iget-object v0, p0, Le/a/h0/y/h;->g:Le/a/i/s;

    invoke-interface {p1, v0, p0, v2}, Le/a/i/f0/d;->l(Le/a/i/s;Le/a/i/m;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/h0/y/h;->h:Le/a/q2/a;

    const-string v0, "blockViewUpdate"

    const-string v1, "blockView"

    invoke-static {v0, v1}, Le/a/q2/y0/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 9
    iget-object p1, p0, Le/a/h0/y/h;->f:Le/a/i/f0/d;

    iget-object v0, p0, Le/a/h0/y/h;->g:Le/a/i/s;

    invoke-interface {p1, v0, v2}, Le/a/i/f0/d;->m(Le/a/i/s;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/h0/y/h;->f:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/h0/y/h;->g:Le/a/i/s;

    invoke-interface {v0, v1, p0}, Le/a/i/f0/d;->h(Le/a/i/s;Le/a/i/m;)V

    .line 3
    iget-object v0, p0, Le/a/h0/y/h;->k:Le/a/i/f0/m/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/i/f0/m/d;->destroy()V

    :cond_0
    return-void
.end method

.method public ed(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/h0/y/h;->j:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h0/y/i;

    invoke-interface {p1}, Le/a/h0/y/i;->g9()V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/y/h;->k:Le/a/i/f0/m/d;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/h0/y/h;->f:Le/a/i/f0/d;

    iget-object v1, p0, Le/a/h0/y/h;->g:Le/a/i/s;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/i/f0/d;->f(Le/a/i/s;I)Le/a/i/f0/m/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h0/y/i;

    invoke-interface {v1}, Le/a/h0/y/i;->Em()V

    .line 5
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h0/y/i;

    invoke-interface {v1, v0}, Le/a/h0/y/i;->R3(Le/a/i/f0/m/d;)V

    .line 6
    iput-object v0, p0, Le/a/h0/y/h;->k:Le/a/i/f0/m/d;

    :cond_0
    return-void
.end method

.method public xe(Le/a/i/f0/m/d;I)V
    .locals 0

    return-void
.end method
