.class public final Le/a/l/c/a/b3;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/b2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/c2;",
        ">;",
        "Le/a/l/c/a/b2;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/a2;

.field public final e:Le/a/q5/d;

.field public final f:Le/a/q5/k/a;

.field public final g:Le/a/l/c/n/d;


# direct methods
.method public constructor <init>(Le/a/l/c/a/a2;Le/a/q5/d;Le/a/q5/k/a;Le/a/l/c/n/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppCallerIdManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whatsAppCallerIdEventLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumNewFeatureLabelHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p1, p0, Le/a/l/c/a/b3;->d:Le/a/l/c/a/a2;

    iput-object p2, p0, Le/a/l/c/a/b3;->e:Le/a/q5/d;

    iput-object p3, p0, Le/a/l/c/a/b3;->f:Le/a/q5/k/a;

    iput-object p4, p0, Le/a/l/c/a/b3;->g:Le/a/l/c/n/d;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/l/c/a/c2;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Le/a/l/c/a/f;->G(Ljava/lang/Object;I)V

    .line 4
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/c/a/p;

    .line 5
    iget-object v0, v0, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 6
    instance-of v1, v0, Le/a/l/c/a/t$n;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/l/c/a/t$n;

    if-eqz v0, :cond_1

    .line 7
    iget-boolean v0, v0, Le/a/l/c/a/t$n;->a:Z

    .line 8
    invoke-interface {p1, v0}, Le/a/l/c/a/c2;->M0(Z)V

    .line 9
    :cond_1
    iget-object p1, p0, Le/a/l/c/a/b3;->f:Le/a/q5/k/a;

    invoke-interface {p1, p2}, Le/a/q5/k/a;->l(I)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    const p1, 0x7f0a13a6

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
    instance-of p1, p1, Le/a/l/c/a/t$n;

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x169dbd6f

    const/4 v3, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x713f35eb

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ItemEvent.WHATSAPP_CALLER_ID_SWITCH_ACTION"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Le/a/l/c/a/b3;->e:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Le/a/l/c/a/b3;->d:Le/a/l/c/a/a2;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/l/c/a/b3;->e:Le/a/q5/d;

    invoke-interface {v0}, Le/a/q5/d;->u()Le/a/q5/c;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Le/a/q5/c;->a()Z

    move-result v1

    xor-int/2addr v1, v3

    .line 8
    iget-object v2, p0, Le/a/l/c/a/b3;->e:Le/a/q5/d;

    invoke-interface {v2, v1}, Le/a/q5/d;->s(Z)V

    .line 9
    instance-of v0, v0, Le/a/q5/c$c;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Le/a/l/c/a/b3;->d:Le/a/l/c/a/a2;

    .line 11
    iget p1, p1, Le/a/o2/h;->b:I

    .line 12
    invoke-interface {v0, p1}, Le/a/l/c/a/a2;->Xc(I)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/l/c/a/b3;->f:Le/a/q5/k/a;

    sget-object v2, Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;->PREMIUM_USER_TAB:Lcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;

    .line 14
    iget p1, p1, Le/a/o2/h;->b:I

    .line 15
    invoke-interface {v0, v1, v2, p1}, Le/a/q5/k/a;->b(ZLcom/truecaller/whatsappcallerid/analytics/event/WhatsAppCallerIdSourceParam;I)V

    .line 16
    iget-object p1, p0, Le/a/l/c/a/b3;->d:Le/a/l/c/a/a2;

    invoke-interface {p1}, Le/a/l/c/a/a2;->T2()V

    goto :goto_0

    :cond_3
    const-string p1, "ItemEvent.NEW_FEATURE_LABEL_DISMISSED"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p1, p0, Le/a/l/c/a/b3;->g:Le/a/l/c/n/d;

    sget-object v0, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->WHATS_APP_CALLER_ID:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {p1, v0}, Le/a/l/c/n/d;->g(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V

    .line 19
    iget-object p1, p0, Le/a/l/c/a/b3;->d:Le/a/l/c/a/a2;

    invoke-interface {p1, v0}, Le/a/l/c/a/l1;->V7(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V

    :cond_4
    :goto_0
    return v3
.end method
