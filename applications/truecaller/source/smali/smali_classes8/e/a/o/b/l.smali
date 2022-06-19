.class public final Le/a/o/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/k;


# instance fields
.field public final a:Le/a/p5/c;

.field public final b:Le/a/o/b/o;

.field public final c:Le/a/u3/i;


# direct methods
.method public constructor <init>(Le/a/p5/c;Le/a/o/b/o;Le/a/u3/i;)V
    .locals 1
    .param p3    # Le/a/u3/i;
        .annotation runtime Ljavax/inject/Named;
            value = "contextCallHomePromoInterval"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "clock"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "homePromoIntervalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/l;->a:Le/a/p5/c;

    iput-object p2, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    iput-object p3, p0, Le/a/o/b/l;->c:Le/a/u3/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "onBoardingIsShown"

    invoke-interface {v0, v1}, Le/a/o/b/o;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "onBoardingIsShown"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    iget-object v1, p0, Le/a/o/b/l;->a:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    const-string v3, "homePromoShownAt"

    invoke-interface {v0, v3, v1, v2}, Le/a/o/b/o;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "onBoardingIsShown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "pref_contextCallIsEnabled"

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Z)Lcom/truecaller/contextcall/utils/ContextCallPromoType;
    .locals 6

    const-string v0, "homePromoDismissed"

    const-string v1, "onBoardingIsShown"

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    invoke-interface {v2, v1}, Le/a/o/b/o;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object v2, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/o/b/l;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    invoke-interface {p1, v0}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/truecaller/contextcall/utils/ContextCallPromoType;->REMINDER:Lcom/truecaller/contextcall/utils/ContextCallPromoType;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    invoke-interface {p1, v1}, Le/a/o/b/o;->contains(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {p0}, Le/a/o/b/l;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    invoke-interface {p1, v0}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/truecaller/contextcall/utils/ContextCallPromoType;->NEW_USER:Lcom/truecaller/contextcall/utils/ContextCallPromoType;

    goto :goto_0

    .line 10
    :cond_1
    sget-object p1, Lcom/truecaller/contextcall/utils/ContextCallPromoType;->NONE:Lcom/truecaller/contextcall/utils/ContextCallPromoType;

    :goto_0
    return-object p1
.end method

.method public final f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "homePromoDismissed"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Le/a/m0/a1$k;->F(Le/a/o/b/o;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Le/a/o/b/l;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/o/b/l;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v3, "homePromoShownAt"

    const-wide/16 v4, 0x0

    .line 3
    invoke-interface {v0, v3, v4, v5}, Le/a/o/b/o;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/o/b/l;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    iget-object v8, p0, Le/a/o/b/l;->a:Le/a/p5/c;

    invoke-interface {v8}, Le/a/p5/c;->c()J

    move-result-wide v8

    invoke-interface {v0, v3, v8, v9}, Le/a/o/b/o;->putLong(Ljava/lang/String;J)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/o/b/l;->a:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 7
    iget-object v0, p0, Le/a/o/b/l;->c:Le/a/u3/i;

    invoke-interface {v0, v4, v5}, Le/a/u3/i;->d(J)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v3

    cmp-long v0, v6, v3

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "homePromoDismissed"

    invoke-interface {v0, v1}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "onBoardingIsShown"

    invoke-interface {v0, v1}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "homePromoShownAt"

    invoke-interface {v0, v1}, Le/a/o/b/o;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/b/l;->b:Le/a/o/b/o;

    const-string v1, "homePromoDismissed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/o/b/o;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
