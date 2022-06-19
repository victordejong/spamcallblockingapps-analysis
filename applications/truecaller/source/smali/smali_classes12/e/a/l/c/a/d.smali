.class public final Le/a/l/c/a/d;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/b1;",
        ">;",
        "Le/a/l/c/a/a1;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/z0;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/s2/c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/s2/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/l/c/n/d;

.field public final h:Le/a/l/c/a/j2;


# direct methods
.method public constructor <init>(Le/a/l/c/a/z0;Lo3/a;Lo3/a;Le/a/l/c/n/d;Le/a/l/c/a/j2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/c/a/z0;",
            "Lo3/a<",
            "Le/a/s2/c;",
            ">;",
            "Lo3/a<",
            "Le/a/s2/g/a;",
            ">;",
            "Le/a/l/c/n/d;",
            "Le/a/l/c/a/j2;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announceCallerIdEventLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumNewFeatureLabelHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "router"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p1, p0, Le/a/l/c/a/d;->d:Le/a/l/c/a/z0;

    iput-object p2, p0, Le/a/l/c/a/d;->e:Lo3/a;

    iput-object p3, p0, Le/a/l/c/a/d;->f:Lo3/a;

    iput-object p4, p0, Le/a/l/c/a/d;->g:Le/a/l/c/n/d;

    iput-object p5, p0, Le/a/l/c/a/d;->h:Le/a/l/c/a/j2;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/l/c/a/b1;

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
    instance-of v0, p2, Le/a/l/c/a/t$a;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/l/c/a/t$a;

    if-eqz p2, :cond_1

    .line 7
    iget-boolean p2, p2, Le/a/l/c/a/t$a;->a:Z

    .line 8
    invoke-interface {p1, p2}, Le/a/l/c/a/b1;->e2(Z)V

    .line 9
    :cond_1
    iget-object p2, p0, Le/a/l/c/a/d;->f:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/s2/g/a;

    .line 10
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    .line 11
    iget-object v0, p0, Le/a/l/c/a/d;->g:Le/a/l/c/n/d;

    sget-object v1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->ANNOUNCE_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v0, v1}, Le/a/l/c/n/d;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v0

    .line 12
    invoke-interface {p2, p1, v0}, Le/a/s2/g/a;->d(IZ)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    const p1, 0x7f0a1399

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
    instance-of p1, p1, Le/a/l/c/a/t$a;

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x169dbd6f

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x79670bc2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ItemEvent.ANNOUNCE_CALLER_ID_SWITCH_ACTION"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Le/a/l/c/a/d;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/c;

    invoke-interface {v0}, Le/a/s2/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/l/c/a/d;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/c;

    invoke-interface {v0}, Le/a/s2/c;->m()Z

    move-result v0

    xor-int/2addr v0, v4

    .line 6
    iget-object v1, p0, Le/a/l/c/a/d;->f:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/s2/g/a;

    .line 7
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 8
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 9
    sget-object v2, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;->PREMIUM_USER_TAB:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;

    .line 10
    iget-object v3, p0, Le/a/l/c/a/d;->g:Le/a/l/c/n/d;

    sget-object v5, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->ANNOUNCE_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v3, v5}, Le/a/l/c/n/d;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v3

    .line 11
    invoke-interface {v1, p1, v2, v0, v3}, Le/a/s2/g/a;->c(Ljava/lang/Integer;Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;ZZ)V

    .line 12
    iget-object p1, p0, Le/a/l/c/a/d;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/s2/c;

    invoke-interface {p1, v0}, Le/a/s2/c;->k(Z)V

    .line 13
    iget-object p1, p0, Le/a/l/c/a/d;->d:Le/a/l/c/a/z0;

    invoke-interface {p1, v0}, Le/a/l/c/a/z0;->j3(Z)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Le/a/l/c/a/d;->d:Le/a/l/c/a/z0;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    return v4

    :cond_2
    const-string v1, "ItemEvent.NEW_FEATURE_LABEL_DISMISSED"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object p1, p0, Le/a/l/c/a/d;->g:Le/a/l/c/n/d;

    sget-object v0, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->ANNOUNCE_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {p1, v0}, Le/a/l/c/n/d;->g(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V

    .line 17
    iget-object p1, p0, Le/a/l/c/a/d;->d:Le/a/l/c/a/z0;

    invoke-interface {p1, v0}, Le/a/l/c/a/l1;->V7(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V

    goto :goto_1

    .line 18
    :cond_3
    :goto_0
    iget-object v0, p0, Le/a/l/c/a/d;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/s2/g/a;

    .line 19
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 20
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/s2/g/a;->e(I)V

    .line 21
    iget-object p1, p0, Le/a/l/c/a/d;->h:Le/a/l/c/a/j2;

    invoke-interface {p1}, Le/a/l/c/a/j2;->Zc()V

    :goto_1
    return v4
.end method
