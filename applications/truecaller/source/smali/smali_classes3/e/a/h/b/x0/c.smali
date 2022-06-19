.class public final Le/a/h/b/x0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/x0/b;


# instance fields
.field public final a:Le/a/o5/f0;

.field public final b:Le/a/l/a/x;

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/l/a/y;

.field public final e:Le/a/z4/d;

.field public final f:Le/a/b0/q/l0;

.field public final g:Le/a/o5/b0;

.field public final h:Le/a/l/a/o;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/l/a/x;Le/a/l/p2/v0;Le/a/l/a/y;Le/a/z4/d;Le/a/b0/q/l0;Le/a/o5/b0;Le/a/l/a/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPromotionEnabledCheck"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paidPremiumCheck"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/x0/c;->a:Le/a/o5/f0;

    iput-object p2, p0, Le/a/h/b/x0/c;->b:Le/a/l/a/x;

    iput-object p3, p0, Le/a/h/b/x0/c;->c:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/h/b/x0/c;->d:Le/a/l/a/y;

    iput-object p5, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    iput-object p6, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    iput-object p7, p0, Le/a/h/b/x0/c;->g:Le/a/o5/b0;

    iput-object p8, p0, Le/a/h/b/x0/c;->h:Le/a/l/a/o;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    iget-object v1, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    const-string v3, "suggestedPremiumDismissedTimeStamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public b()Z
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/h/b/x0/c;->a:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/a/h/b/x0/c;->b:Le/a/l/a/x;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Le/a/j4/b/a/h;->p()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_7

    .line 4
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    const-string v3, "premiumHasConsumable"

    invoke-interface {v0, v3}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5
    iget-object v0, p0, Le/a/h/b/x0/c;->h:Le/a/l/a/o;

    invoke-virtual {v0}, Le/a/l/a/o;->a()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Le/a/h/b/x0/c;->d:Le/a/l/a/y;

    invoke-virtual {v0}, Le/a/l/a/y;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/a/h/b/x0/c;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/b/x0/c;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gold"

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    const-string v3, "suggestedPremiumLastShownTimeStamp"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 7
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    const-string v8, "suggestedPremiumDismissedTimeStamp"

    invoke-interface {v0, v8, v4, v5}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    iget-object v1, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    return v2

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/h/b/x0/c;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Le/a/h/b/x0/c;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v0

    const-string v11, "regular"

    invoke-static {v0, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmp-long v0, v9, v4

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Le/a/h/b/x0/c;->g:Le/a/o5/b0;

    iget-object v1, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v1

    invoke-interface {v0, v6, v7, v1, v2}, Le/a/o5/b0;->u(JJ)Z

    move-result v1

    :cond_2
    return v1

    :cond_3
    cmp-long v0, v9, v4

    if-nez v0, :cond_6

    .line 11
    iget-object v0, p0, Le/a/h/b/x0/c;->g:Le/a/o5/b0;

    iget-object v4, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v4}, Le/a/b0/q/l0;->c()J

    move-result-wide v4

    invoke-interface {v0, v6, v7, v4, v5}, Le/a/o5/b0;->u(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    move v1, v2

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Le/a/h/b/x0/c;->g:Le/a/o5/b0;

    invoke-interface {v0, v6, v7}, Le/a/o5/b0;->r(J)I

    move-result v0

    iget-object v4, p0, Le/a/h/b/x0/c;->g:Le/a/o5/b0;

    iget-object v5, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v5}, Le/a/b0/q/l0;->c()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Le/a/o5/b0;->r(J)I

    move-result v4

    if-eq v0, v4, :cond_5

    .line 13
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    iget-object v1, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    :goto_1
    return v1

    .line 14
    :cond_6
    iget-object v0, p0, Le/a/h/b/x0/c;->g:Le/a/o5/b0;

    invoke-interface {v0, v6, v7}, Le/a/o5/b0;->r(J)I

    move-result v0

    iget-object v6, p0, Le/a/h/b/x0/c;->g:Le/a/o5/b0;

    iget-object v7, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v7}, Le/a/b0/q/l0;->c()J

    move-result-wide v9

    invoke-interface {v6, v9, v10}, Le/a/o5/b0;->r(J)I

    move-result v6

    if-eq v0, v6, :cond_7

    .line 15
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    iget-object v1, p0, Le/a/h/b/x0/c;->f:Le/a/b0/q/l0;

    invoke-virtual {v1}, Le/a/b0/q/l0;->c()J

    move-result-wide v6

    invoke-interface {v0, v3, v6, v7}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    .line 16
    iget-object v0, p0, Le/a/h/b/x0/c;->e:Le/a/z4/d;

    invoke-interface {v0, v8, v4, v5}, Le/a/z4/d;->putLong(Ljava/lang/String;J)V

    move v1, v2

    :cond_7
    :goto_2
    return v1
.end method

.method public c()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/h/b/x0/a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/h/b/x0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/h/b/x0/c;->c:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x33af38

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Le/a/h/b/x0/a;

    const v1, 0x7f080780

    const v2, 0x7f120759

    const-string v3, "premium"

    invoke-direct {v0, v1, v2, v3}, Le/a/h/b/x0/a;-><init>(IILjava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Le/a/h/b/x0/a;

    const v1, 0x7f080722

    const v2, 0x7f120758

    const-string v3, "gold"

    invoke-direct {v0, v1, v2, v3}, Le/a/h/b/x0/a;-><init>(IILjava/lang/String;)V

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 5
    :cond_2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    return-object v0
.end method
