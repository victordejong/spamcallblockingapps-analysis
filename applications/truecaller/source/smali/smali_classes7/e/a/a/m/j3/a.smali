.class public final Le/a/a/m/j3/a;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/o0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Ljava/lang/Object;",
        ">;",
        "Le/a/a/m/o0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/j2;

.field public final d:Le/a/a/m/s1;

.field public final e:Le/a/l/c2;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/s1;Le/a/l/c2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p1, p0, Le/a/a/m/j3/a;->c:Le/a/a/m/j2;

    iput-object p2, p0, Le/a/a/m/j3/a;->d:Le/a/a/m/s1;

    iput-object p3, p0, Le/a/a/m/j3/a;->e:Le/a/l/c2;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$s;

    return p1
.end method

.method public m(I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/a/m/j3/a;->c:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->Ge()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PromoInboxSpamTab"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/a/m/j3/a;->c:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->Ge()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PromoCallTab"

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/m/j3/a;->c:Le/a/a/m/j2;

    invoke-interface {p1}, Le/a/a/m/j2;->ze()Le/a/a/m/d1;

    move-result-object p1

    .line 3
    instance-of p1, p1, Le/a/a/m/d1$s;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x66f66590

    const-string v3, "DateTime.now()"

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const p1, 0x7dd86994    # 3.595768E37f

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ItemEvent.ACTION_DISMISS_PREMIUM_BLOCKING"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Le/a/a/m/j3/a;->d:Le/a/a/m/s1;

    invoke-interface {p1}, Le/a/a/m/s1;->Ha()V

    .line 5
    iget-object p1, p0, Le/a/a/m/j3/a;->e:Le/a/l/c2;

    invoke-interface {p1}, Le/a/l/c2;->e1()I

    move-result v0

    add-int/2addr v0, v4

    invoke-interface {p1, v0}, Le/a/l/c2;->C2(I)V

    .line 6
    iget-object p1, p0, Le/a/a/m/j3/a;->e:Le/a/l/c2;

    .line 7
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 8
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 10
    invoke-interface {p1, v0, v1}, Le/a/l/c2;->j1(J)V

    goto :goto_1

    :cond_1
    const-string v1, "ItemEvent.ACTION_PREMIUM_BLOCKING_LEARN_MORE"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Le/a/a/m/j3/a;->d:Le/a/a/m/s1;

    .line 13
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.truecaller.premium.PremiumLaunchContext"

    .line 14
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, p1}, Le/a/a/m/s1;->Ta(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 15
    iget-object p1, p0, Le/a/a/m/j3/a;->e:Le/a/l/c2;

    .line 16
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 17
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 19
    invoke-interface {p1, v0, v1}, Le/a/l/c2;->j1(J)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method
