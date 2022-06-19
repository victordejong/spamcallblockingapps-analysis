.class public final Le/a/l/g/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/l/p2/v0;

.field public final c:Le/a/l/c2;

.field public final d:Le/a/b0/q/z;

.field public final e:Le/a/l/u2/a;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/l/p2/v0;Le/a/l/c2;Le/a/b0/q/z;Le/a/l/u2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productStoreProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/g/t;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/l/g/t;->b:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/g/t;->c:Le/a/l/c2;

    iput-object p4, p0, Le/a/l/g/t;->d:Le/a/b0/q/z;

    iput-object p5, p0, Le/a/l/g/t;->e:Le/a/l/u2/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizedNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/g/t;->d:Le/a/b0/q/z;

    const-string v1, "-1"

    invoke-static {p2, v0, v1}, Lcom/truecaller/data/entity/messaging/Participant;->d(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    const-string v0, "Participant.buildFromNum\u2026anager.SIM_TOKEN_UNKNOWN)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string p2, "participants"

    .line 3
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "launch_source"

    const-string p2, "detailView"

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/l/g/t;->b:Le/a/l/p2/v0;

    .line 2
    invoke-virtual {p0}, Le/a/l/g/t;->c()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/a/l/g/t;->c:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->e3()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Le/a/l/g/t;->c:Le/a/l/c2;

    invoke-interface {v1}, Le/a/l/c2;->n2()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v1

    const-string v4, "gold"

    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Le/a/l/p2/v0;->s1()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    invoke-interface {v0}, Le/a/l/p2/v0;->H2()Lcom/truecaller/premium/data/ProductKind;

    move-result-object v1

    .line 4
    sget-object v4, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 5
    invoke-interface {v0}, Le/a/l/p2/v0;->A0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    return v2
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/g/t;->a:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->p:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xc

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/g/t;->e:Le/a/l/u2/a;

    invoke-interface {v0}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v0

    sget-object v1, Lcom/truecaller/premium/provider/Store;->GOOGLE_PLAY:Lcom/truecaller/premium/provider/Store;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/l/g/t;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/g/t;->c:Le/a/l/c2;

    invoke-interface {v0}, Le/a/l/c2;->e3()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/l/g/t;->a:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->o:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xb

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
