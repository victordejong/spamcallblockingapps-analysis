.class public final Le/a/r/q/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/q/h;


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Z

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/q2/a;

.field public final k:Le/a/p5/c;

.field public final l:Le/a/w2/a;

.field public final m:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/p5/c;Le/a/w2/a;Ls1/w/f;)V
    .locals 10
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsFlyerEventsTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/q/j;->j:Le/a/q2/a;

    iput-object p2, p0, Le/a/r/q/j;->k:Le/a/p5/c;

    iput-object p3, p0, Le/a/r/q/j;->l:Le/a/w2/a;

    iput-object p4, p0, Le/a/r/q/j;->m:Ls1/w/f;

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Le/a/r/q/j;->a:Ljava/util/Queue;

    .line 3
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/r/q/j;->b:Ljava/util/LinkedHashSet;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/r/q/j;->c:Ljava/util/List;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/a/r/q/j;->f:Z

    const-string v0, "WizardStarted"

    const-string v1, "EnterNumber"

    const-string v2, "Privacy"

    const-string v3, "Verification"

    const-string v4, "Profile"

    const-string v5, "AdsChoices"

    const-string v6, "EnhancedSearch"

    const-string v7, "DrawPermission"

    const-string v8, "DrawPermissionDetails"

    const-string v9, "WizardDone"

    .line 6
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Le/a/r/q/j;->g:Ljava/util/List;

    const/16 p2, 0xa

    new-array p2, p2, [Ls1/k;

    .line 8
    new-instance p3, Ls1/k;

    const-string p4, "Page_Welcome"

    const-string v0, "WizardStarted"

    invoke-direct {p3, p4, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p4, 0x0

    aput-object p3, p2, p4

    .line 9
    new-instance p3, Ls1/k;

    const-string p4, "Page_EnterNumber"

    const-string v0, "EnterNumber"

    invoke-direct {p3, p4, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p3, p2, p1

    .line 10
    new-instance p1, Ls1/k;

    const-string p3, "Page_Privacy"

    const-string p4, "Privacy"

    invoke-direct {p1, p3, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x2

    aput-object p1, p2, p3

    .line 11
    new-instance p1, Ls1/k;

    const-string p3, "Page_Verification"

    const-string p4, "Verification"

    invoke-direct {p1, p3, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x3

    aput-object p1, p2, p3

    .line 12
    new-instance p1, Ls1/k;

    const-string p3, "Page_Success"

    invoke-direct {p1, p3, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x4

    aput-object p1, p2, p3

    .line 13
    new-instance p1, Ls1/k;

    const-string p3, "Page_Profile"

    const-string p4, "Profile"

    invoke-direct {p1, p3, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x5

    aput-object p1, p2, p3

    .line 14
    new-instance p1, Ls1/k;

    const-string p3, "Page_AdsChoices"

    const-string p4, "AdsChoices"

    invoke-direct {p1, p3, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x6

    aput-object p1, p2, p3

    .line 15
    new-instance p1, Ls1/k;

    const-string p3, "Page_AccessContacts"

    const-string v0, "EnhancedSearch"

    invoke-direct {p1, p3, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p3, 0x7

    aput-object p1, p2, p3

    .line 16
    new-instance p1, Ls1/k;

    const-string p3, "Page_DrawPermission"

    const-string v1, "DrawPermission"

    invoke-direct {p1, p3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p3, 0x8

    aput-object p1, p2, p3

    .line 17
    new-instance p1, Ls1/k;

    const-string p3, "Page_DrawPermissionDetails"

    const-string v2, "DrawPermissionDetails"

    invoke-direct {p1, p3, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p3, 0x9

    aput-object p1, p2, p3

    .line 18
    invoke-static {p2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/r/q/j;->h:Ljava/util/Map;

    const-string p1, "WizardDone"

    .line 19
    filled-new-array {p4, v0, v1, v2, p1}, [Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/r/q/j;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/q/j;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 2
    iget-object v0, p0, Le/a/r/q/j;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const-string v0, "WizardStarted"

    .line 3
    invoke-virtual {p0, v0}, Le/a/r/q/j;->i(Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/r/q/j;->c:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    invoke-static/range {v0 .. v7}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/r/q/j;->f:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/q/j;->j:Le/a/q2/a;

    new-instance v1, Le/a/r/q/f;

    iget-object v2, p0, Le/a/r/q/j;->e:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Le/a/r/q/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "WizardDone"

    .line 1
    invoke-virtual {p0, v0}, Le/a/r/q/j;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/r/q/j;->l:Le/a/w2/a;

    .line 3
    sget-object v1, Ls1/u/t;->a:Ls1/u/t;

    const-string v2, "af_complete_registration"

    invoke-virtual {v0, v2, v1}, Le/a/w2/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    const-string v0, "page"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/q/j;->j:Le/a/q2/a;

    new-instance v1, Le/a/r/q/g;

    invoke-direct {v1, p1}, Le/a/r/q/g;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/q/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Le/a/r/q/j;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Le/a/r/q/j;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Le/a/r/q/j;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/q/j;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/r/q/j;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Le/a/r/q/j;->j:Le/a/q2/a;

    new-instance v2, Le/a/r/q/a;

    invoke-direct {v2, p1, v0}, Le/a/r/q/a;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 3
    iget-object p1, p0, Le/a/r/q/j;->k:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/r/q/j;->d:J

    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/r/q/j;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Le/a/r/q/j;->b:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ls1/u/i;->R(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Le/a/r/q/j;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p0}, Le/a/r/q/j;->a()V

    .line 4
    invoke-virtual {p0, p1}, Le/a/r/q/j;->i(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Le/a/r/q/j;->g:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v3, p0, Le/a/r/q/j;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    iget-object v1, p0, Le/a/r/q/j;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Le/a/r/q/j;->k:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->a()J

    move-result-wide v1

    iget-wide v3, p0, Le/a/r/q/j;->d:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v1, v1, v3

    if-lez v1, :cond_5

    .line 11
    invoke-virtual {p0, v0}, Le/a/r/q/j;->h(Ljava/lang/String;)V

    goto :goto_3

    .line 12
    :cond_5
    iget-object v1, p0, Le/a/r/q/j;->a:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Le/a/r/q/j;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v2, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v3, p0, Le/a/r/q/j;->m:Ls1/w/f;

    const/4 v4, 0x0

    new-instance v5, Le/a/r/q/i;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v1}, Le/a/r/q/i;-><init>(Le/a/r/q/j;Ls1/w/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_3

    .line 15
    :cond_6
    iget-object v1, p0, Le/a/r/q/j;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    :goto_3
    iget-object v1, p0, Le/a/r/q/j;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void
.end method
