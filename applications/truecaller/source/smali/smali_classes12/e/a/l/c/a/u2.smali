.class public final Le/a/l/c/a/u2;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/t1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/u1;",
        ">;",
        "Le/a/l/c/a/t1;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/s1;

.field public final e:Le/a/l/p2/v0;

.field public final f:Le/a/h0/m;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h0/p;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/l/c/a/j2;


# direct methods
.method public constructor <init>(Le/a/l/c/a/s1;Le/a/l/p2/v0;Le/a/h0/m;Lo3/a;Lo3/a;Lo3/a;Le/a/l/c/a/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/c/a/s1;",
            "Le/a/l/p2/v0;",
            "Le/a/h0/m;",
            "Lo3/a<",
            "Ln3/m0/y;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Lo3/a<",
            "Le/a/h0/p;",
            ">;",
            "Le/a/l/c/a/j2;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "neighbourhoodDigitsAdjuster"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "router"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    iput-object p2, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    iput-object p4, p0, Le/a/l/c/a/u2;->g:Lo3/a;

    iput-object p5, p0, Le/a/l/c/a/u2;->h:Lo3/a;

    iput-object p6, p0, Le/a/l/c/a/u2;->i:Lo3/a;

    iput-object p7, p0, Le/a/l/c/a/u2;->j:Le/a/l/c/a/j2;

    return-void
.end method


# virtual methods
.method public final B(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string p1, "Enabled"

    goto :goto_0

    :cond_0
    const-string p1, "Disabled"

    .line 1
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "BlocktabSettings_Action"

    .line 2
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/a/l/c/a/u2;->h:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a;

    .line 4
    new-instance v1, Le/a/q2/g$b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v0, v2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p2, "event.build()"

    .line 5
    invoke-static {v1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/l/c/a/u1;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Le/a/l/c/a/f;->G(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/c/a/p;

    .line 5
    iget-object p2, p2, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 6
    instance-of v0, p2, Le/a/l/c/a/t$k;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/l/c/a/t$k;

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p2, Le/a/l/c/a/t$k;->a:Ljava/util/List;

    .line 8
    invoke-interface {p1, p2}, Le/a/l/c/a/u1;->P3(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    const p1, 0x7f0a13a3

    int-to-long v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/p;

    .line 2
    iget-object p1, p1, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 3
    instance-of p1, p1, Le/a/l/c/a/t$k;

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 8

    sget-object v0, Ln3/m0/q;->b:Ln3/m0/q;

    const-class v1, Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;

    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    const-string v3, "event"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x78caa63c

    const-string v6, "null cannot be cast to non-null type com.truecaller.filters.blockedevents.BlockingSwitch"

    const/4 v7, 0x1

    if-eq v4, v5, :cond_10

    const v5, -0x2cc5be42    # -7.9996689E11f

    if-eq v4, v5, :cond_f

    const v5, 0x74bbc71a

    if-eq v4, v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v4, "ItemEvent.SWITCH_ACTION"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 5
    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/v;

    .line 6
    sget-object v3, Le/a/h0/a/v$a;->i:Le/a/h0/a/v$a;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_2

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->h()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    xor-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/h0/m;->t(Ljava/lang/Boolean;)V

    .line 10
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->u2()V

    goto/16 :goto_2

    .line 11
    :cond_2
    sget-object v3, Le/a/h0/a/v$j;->i:Le/a/h0/a/v$j;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "FilterSettingsUploadWorker"

    const-string v5, "workManager"

    const-string v6, "workManager.get()"

    if-eqz v3, :cond_4

    .line 12
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->u()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {p1, v3}, Le/a/h0/m;->k(Z)V

    .line 15
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1, v7}, Le/a/h0/m;->c(Z)V

    .line 16
    iget-object p1, p0, Le/a/l/c/a/u2;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/y;

    .line 17
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 19
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 20
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 21
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 22
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 23
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 24
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 25
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->u2()V

    .line 26
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->u()Z

    move-result p1

    const-string v0, "BLOCKSETTINGS_BlockSpammers"

    invoke-virtual {p0, p1, v0}, Le/a/l/c/a/u2;->B(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 27
    :cond_4
    sget-object v3, Le/a/h0/a/v$i;->i:Le/a/h0/a/v$i;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 28
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_5

    .line 29
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_2

    .line 30
    :cond_5
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->b()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {p1, v3}, Le/a/h0/m;->m(Z)V

    .line 31
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1, v7}, Le/a/h0/m;->c(Z)V

    .line 32
    iget-object p1, p0, Le/a/l/c/a/u2;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/y;

    .line 33
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 35
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 36
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 37
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 38
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 39
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 40
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 41
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->u2()V

    .line 42
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->b()Z

    move-result p1

    const-string v0, "BLOCKSETTINGS_BlockNonPhonebook"

    invoke-virtual {p0, p1, v0}, Le/a/l/c/a/u2;->B(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 43
    :cond_6
    sget-object v3, Le/a/h0/a/v$f;->i:Le/a/h0/a/v$f;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 44
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_7

    .line 45
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_2

    .line 46
    :cond_7
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->x()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {p1, v3}, Le/a/h0/m;->g(Z)V

    .line 47
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1, v7}, Le/a/h0/m;->c(Z)V

    .line 48
    iget-object p1, p0, Le/a/l/c/a/u2;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/y;

    .line 49
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 51
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 52
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 53
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 54
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 55
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 56
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 57
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->u2()V

    .line 58
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->x()Z

    move-result p1

    const-string v0, "BLOCKSETTINGS_BlockForeignNumbers"

    invoke-virtual {p0, p1, v0}, Le/a/l/c/a/u2;->B(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 59
    :cond_8
    sget-object v3, Le/a/h0/a/v$h;->i:Le/a/h0/a/v$h;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 60
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_9

    .line 61
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_2

    .line 62
    :cond_9
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->f()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {p1, v3}, Le/a/h0/m;->o(Z)V

    .line 63
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1, v7}, Le/a/h0/m;->c(Z)V

    .line 64
    iget-object p1, p0, Le/a/l/c/a/u2;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/y;

    .line 65
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 67
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 68
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 69
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 70
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 71
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 72
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 73
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->u2()V

    .line 74
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->f()Z

    move-result p1

    const-string v0, "BLOCKSETTINGS_BlockNeighbourSpoofing"

    invoke-virtual {p0, p1, v0}, Le/a/l/c/a/u2;->B(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 75
    :cond_a
    sget-object v3, Le/a/h0/a/v$k;->i:Le/a/h0/a/v$k;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 76
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_b

    .line 77
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_2

    .line 78
    :cond_b
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->r()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {p1, v3}, Le/a/h0/m;->j(Z)V

    .line 79
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1, v7}, Le/a/h0/m;->c(Z)V

    .line 80
    iget-object p1, p0, Le/a/l/c/a/u2;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/y;

    .line 81
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 83
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 84
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 85
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 86
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 87
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 88
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 89
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->u2()V

    .line 90
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->r()Z

    move-result p1

    const-string v0, "BLOCKSETTINGS_BlockHiddenNumbers"

    invoke-virtual {p0, p1, v0}, Le/a/l/c/a/u2;->B(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 91
    :cond_c
    sget-object v3, Le/a/h0/a/v$g;->i:Le/a/h0/a/v$g;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 92
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_d

    .line 93
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_2

    .line 94
    :cond_d
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->s()Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {p1, v3}, Le/a/h0/m;->a(Z)V

    .line 95
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1, v7}, Le/a/h0/m;->c(Z)V

    .line 96
    iget-object p1, p0, Le/a/l/c/a/u2;->g:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/y;

    .line 97
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v3, Ln3/m0/r$a;

    invoke-direct {v3, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 99
    new-instance v1, Ln3/m0/d$a;

    invoke-direct {v1}, Ln3/m0/d$a;-><init>()V

    .line 100
    iput-object v0, v1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 101
    new-instance v0, Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 102
    iget-object v1, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 103
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 104
    invoke-virtual {p1, v4, v2, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 105
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->u2()V

    .line 106
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->s()Z

    move-result p1

    const-string v0, "BLOCKSETTINGS_BlockIndianTelemarketers"

    invoke-virtual {p0, p1, v0}, Le/a/l/c/a/u2;->B(ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 107
    :cond_e
    sget-object v0, Le/a/h0/a/v$e;->i:Le/a/h0/a/v$e;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 108
    iget-object p1, p0, Le/a/l/c/a/u2;->e:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_13

    .line 109
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto :goto_2

    :cond_f
    const-string v0, "ItemEvent.LEARN_MORE_ACTION"

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 111
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 112
    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/v;

    instance-of p1, p1, Le/a/h0/a/v$h;

    if-eqz p1, :cond_13

    .line 113
    iget-object p1, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    invoke-interface {p1}, Le/a/l/c/a/s1;->pg()V

    goto :goto_2

    :cond_10
    const-string v0, "ItemEvent.EDIT_ACTION"

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 115
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 116
    invoke-static {p1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/h0/a/v;

    instance-of p1, p1, Le/a/h0/a/v$h;

    if-eqz p1, :cond_13

    .line 117
    iget-object p1, p0, Le/a/l/c/a/u2;->f:Le/a/h0/m;

    invoke-interface {p1}, Le/a/h0/m;->i()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object v0, p0, Le/a/l/c/a/u2;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h0/p;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Le/a/h0/p;->a(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_11
    const/4 p1, 0x0

    .line 118
    :goto_0
    iget-object v0, p0, Le/a/l/c/a/u2;->d:Le/a/l/c/a/s1;

    iget-object v1, p0, Le/a/l/c/a/u2;->i:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h0/p;

    invoke-virtual {v1}, Le/a/h0/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Le/a/l/c/a/s1;->Na(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_2

    .line 119
    :cond_12
    :goto_1
    iget-object p1, p0, Le/a/l/c/a/u2;->j:Le/a/l/c/a/j2;

    invoke-interface {p1}, Le/a/l/c/a/j2;->X4()V

    :cond_13
    :goto_2
    return v7
.end method
