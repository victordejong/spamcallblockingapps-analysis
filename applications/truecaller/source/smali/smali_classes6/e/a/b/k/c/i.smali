.class public final Le/a/b/k/c/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/k/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/k/c/e;",
        ">;",
        "Le/a/b/k/c/d;"
    }
.end annotation


# instance fields
.field public d:I

.field public final e:Le/a/b/k/a/a;

.field public final f:Le/a/b/k/b/a/c;

.field public final g:Le/a/p5/c0;

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/q2/a;

.field public final k:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/u3/g;

.field public final m:Le/a/b/p/c;


# direct methods
.method public constructor <init>(Le/a/b/k/a/a;Le/a/b/k/b/a/c;Le/a/p5/c0;Ls1/w/f;Ls1/w/f;Le/a/q2/a;Le/a/r2/f;Le/a/u3/g;Le/a/b/p/c;)V
    .locals 1
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b/k/a/a;",
            "Le/a/b/k/b/a/c;",
            "Le/a/p5/c0;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/u3/g;",
            "Le/a/b/p/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "districtDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncIOContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizMonSettings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/k/c/i;->e:Le/a/b/k/a/a;

    iput-object p2, p0, Le/a/b/k/c/i;->f:Le/a/b/k/b/a/c;

    iput-object p3, p0, Le/a/b/k/c/i;->g:Le/a/p5/c0;

    iput-object p4, p0, Le/a/b/k/c/i;->h:Ls1/w/f;

    iput-object p5, p0, Le/a/b/k/c/i;->i:Ls1/w/f;

    iput-object p6, p0, Le/a/b/k/c/i;->j:Le/a/q2/a;

    iput-object p7, p0, Le/a/b/k/c/i;->k:Le/a/r2/f;

    iput-object p8, p0, Le/a/b/k/c/i;->l:Le/a/u3/g;

    iput-object p9, p0, Le/a/b/k/c/i;->m:Le/a/b/p/c;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 11

    .line 1
    check-cast p1, Le/a/b/k/c/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/b/k/c/e;->g4()V

    .line 5
    iget-object v0, p0, Le/a/b/k/c/i;->l:Le/a/u3/g;

    .line 6
    iget-object v1, v0, Le/a/u3/g;->F4:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x128

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Le/a/b/k/c/i;->e:Le/a/b/k/a/a;

    check-cast v0, Le/a/b/k/a/d;

    invoke-virtual {v0}, Le/a/b/k/a/d;->a()Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryBanner;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryBanner;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p1, v3}, Le/a/b/k/c/e;->Nq(Z)V

    .line 10
    invoke-interface {p1, v0}, Le/a/b/k/c/e;->Jg(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-interface {p1, v1}, Le/a/b/k/c/e;->Nq(Z)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1, v1}, Le/a/b/k/c/e;->Nq(Z)V

    .line 13
    :goto_1
    new-instance v8, Le/a/b/k/c/f;

    invoke-direct {v8, p0, v1, v4}, Le/a/b/k/c/f;-><init>(Le/a/b/k/c/i;ZLs1/w/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 14
    invoke-interface {p1}, Le/a/b/k/c/e;->getSource()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "others"

    :goto_2
    const-string v0, "source"

    .line 15
    invoke-static {v0, p1}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 16
    iget-object v6, p0, Le/a/b/k/c/i;->j:Le/a/q2/a;

    const-string v7, "COVID_DIRECTORY_DISTRICT_LIST"

    const-string v5, "eventBuilder.build()"

    move-object v1, v7

    move-object v2, v4

    .line 17
    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 18
    iget-object v1, p0, Le/a/b/k/c/i;->k:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/q2/a0;

    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v7}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 20
    new-instance v3, Ls1/k;

    invoke-direct {v3, v0, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    invoke-static {v3}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 22
    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 23
    invoke-interface {v1, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
