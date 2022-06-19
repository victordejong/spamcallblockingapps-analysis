.class public final Le/a/l/c/a/h0;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/f1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Le/a/l/c/a/g1;",
        ">;",
        "Le/a/l/c/a/f1;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/e1;

.field public final e:Le/a/x/w;

.field public final f:Le/a/x/h0/a;

.field public final g:Le/a/x/l;

.field public final h:Le/a/l/c/n/d;


# direct methods
.method public constructor <init>(Le/a/l/c/a/e1;Le/a/x/w;Le/a/x/h0/a;Le/a/x/l;Le/a/l/c/n/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "model"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallEventLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ghostCallManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumNewFeatureLabelHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p1, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    iput-object p2, p0, Le/a/l/c/a/h0;->e:Le/a/x/w;

    iput-object p3, p0, Le/a/l/c/a/h0;->f:Le/a/x/h0/a;

    iput-object p4, p0, Le/a/l/c/a/h0;->g:Le/a/x/l;

    iput-object p5, p0, Le/a/l/c/a/h0;->h:Le/a/l/c/n/d;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    check-cast p1, Le/a/l/c/a/g1;

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
    instance-of v0, p2, Le/a/l/c/a/t$d;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Le/a/l/c/a/t$d;

    if-eqz p2, :cond_2

    .line 7
    iget-object p2, p2, Le/a/l/c/a/t$d;->a:Le/a/x/i;

    if-eqz p2, :cond_2

    .line 8
    iget-object v0, p2, Le/a/x/i;->a:Ljava/lang/String;

    .line 9
    invoke-interface {p1, v0}, Le/a/l/c/a/g1;->setPhoneNumber(Ljava/lang/String;)V

    .line 10
    iget-object v0, p2, Le/a/x/i;->b:Ljava/lang/String;

    .line 11
    invoke-interface {p1, v0}, Le/a/l/c/a/g1;->setProfileName(Ljava/lang/String;)V

    .line 12
    iget-object v0, p2, Le/a/x/i;->c:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v0}, Le/a/l/c/a/g1;->L4(Ljava/lang/String;)V

    .line 14
    iget-object v0, p2, Le/a/x/i;->d:Lcom/truecaller/ghost_call/ScheduleDuration;

    .line 15
    invoke-interface {p1, v0}, Le/a/l/c/a/g1;->D4(Lcom/truecaller/ghost_call/ScheduleDuration;)V

    .line 16
    iget-wide v0, p2, Le/a/x/i;->e:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_1

    .line 17
    invoke-interface {p1, v0, v1}, Le/a/l/c/a/g1;->B3(J)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-interface {p1}, Le/a/l/c/a/g1;->q3()V

    .line 19
    :cond_2
    :goto_0
    iget-object p2, p0, Le/a/l/c/a/h0;->f:Le/a/x/h0/a;

    .line 20
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    .line 21
    iget-object v0, p0, Le/a/l/c/a/h0;->h:Le/a/l/c/n/d;

    sget-object v1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->GHOST_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v0, v1}, Le/a/l/c/n/d;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v0

    .line 22
    new-instance v1, Le/a/x/h0/b/c;

    .line 23
    iget-object v2, p2, Le/a/x/h0/a;->d:Le/a/l/a/v;

    invoke-virtual {v2}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-direct {v1, p1, v2, v0}, Le/a/x/h0/b/c;-><init>(ILjava/lang/String;Z)V

    .line 25
    invoke-static {v1, p2}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public getItemId(I)J
    .locals 2

    const p1, 0x7f0a139c

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
    instance-of p1, p1, Le/a/l/c/a/t$d;

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

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    const-string p1, "ItemEvent.EDIT_CONTACT_AVATAR"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 4
    iget-object p1, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    invoke-interface {p1}, Le/a/l/c/a/e1;->v4()V

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "ItemEvent.PICTURE_CHANGED"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6
    iget-object v0, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.DataChangeHolder"

    .line 7
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/l/c/a/b0;

    .line 8
    iget-object v0, v0, Le/a/l/c/a/b0;->a:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Le/a/l/c/a/h0;->e:Le/a/x/w;

    invoke-interface {v2}, Le/a/x/w;->S0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Le/a/l/c/a/h0;->f:Le/a/x/h0/a;

    .line 11
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 12
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/b0;

    .line 13
    iget p1, p1, Le/a/l/c/a/b0;->b:I

    .line 14
    sget-object v1, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->PhotoChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    .line 15
    iget-object v3, p0, Le/a/l/c/a/h0;->h:Le/a/l/c/n/d;

    sget-object v5, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->GHOST_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v3, v5}, Le/a/l/c/n/d;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v3

    .line 16
    invoke-virtual {v2, p1, v1, v3}, Le/a/x/h0/a;->q(ILcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;Z)V

    .line 17
    iget-object p1, p0, Le/a/l/c/a/h0;->e:Le/a/x/w;

    invoke-interface {p1, v0}, Le/a/x/w;->Y(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v1, "ItemEvent.CANCEL_CALL"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 19
    iget-object v0, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    .line 20
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 21
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/l/c/a/e1;->G4(I)V

    goto :goto_0

    :sswitch_3
    const-string v1, "ItemEvent.PICK_CONTACT"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    iget-object v0, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    .line 24
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    .line 25
    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/l/c/a/e1;->ch(I)V

    goto :goto_0

    :sswitch_4
    const-string p1, "ItemEvent.NEW_FEATURE_LABEL_DISMISSED"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 27
    iget-object p1, p0, Le/a/l/c/a/h0;->h:Le/a/l/c/n/d;

    sget-object v0, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->GHOST_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {p1, v0}, Le/a/l/c/n/d;->g(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V

    .line 28
    iget-object p1, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    invoke-interface {p1, v0}, Le/a/l/c/a/l1;->V7(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)V

    :cond_0
    :goto_0
    move v3, v4

    goto/16 :goto_6

    :sswitch_5
    const-string v1, "ItemEvent.SCHEDULE_CALL"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type com.truecaller.ghost_call.GhostCallConfig"

    .line 31
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/x/i;

    .line 32
    iget-object v0, p0, Le/a/l/c/a/h0;->h:Le/a/l/c/n/d;

    sget-object v1, Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;->GHOST_CALL:Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;

    invoke-interface {v0, v1}, Le/a/l/c/n/d;->h(Lcom/truecaller/premium/premiumusertab/newfeaturelabel/NewFeatureLabelType;)Z

    move-result v0

    .line 33
    iget-object v1, p0, Le/a/l/c/a/h0;->e:Le/a/x/w;

    invoke-interface {v1}, Le/a/x/w;->V0()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p1, Le/a/x/i;->b:Ljava/lang/String;

    .line 35
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 36
    iget-object v1, p1, Le/a/x/i;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 38
    iget-object v2, p0, Le/a/l/c/a/h0;->f:Le/a/x/h0/a;

    sget-object v5, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->NameChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    invoke-virtual {v2, v1, v5, v0}, Le/a/x/h0/a;->q(ILcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;Z)V

    .line 39
    :cond_1
    iget-object v1, p0, Le/a/l/c/a/h0;->e:Le/a/x/w;

    invoke-interface {v1}, Le/a/x/w;->w()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v2, p1, Le/a/x/i;->a:Ljava/lang/String;

    .line 41
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p1, Le/a/x/i;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 43
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 44
    iget-object v2, p0, Le/a/l/c/a/h0;->f:Le/a/x/h0/a;

    sget-object v5, Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;->NumberChanged:Lcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;

    invoke-virtual {v2, v1, v5, v0}, Le/a/x/h0/a;->q(ILcom/truecaller/ghost_call/analytics/events/GhostCallCardAction;Z)V

    .line 45
    :cond_2
    iget-object v0, p0, Le/a/l/c/a/h0;->g:Le/a/x/l;

    invoke-interface {v0}, Le/a/x/l;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, p1, Le/a/x/i;->a:Ljava/lang/String;

    .line 47
    iget-object v1, p1, Le/a/x/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v4

    :goto_2
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v4

    :goto_4
    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v3, v4

    :goto_5
    if-eqz v3, :cond_8

    .line 49
    iget-object v0, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    invoke-interface {v0, p1}, Le/a/l/c/a/e1;->ii(Le/a/x/i;)V

    goto/16 :goto_0

    .line 50
    :cond_8
    iget-object p1, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    invoke-interface {p1}, Le/a/l/c/a/e1;->C9()V

    goto/16 :goto_0

    .line 51
    :cond_9
    iget-object p1, p0, Le/a/l/c/a/h0;->d:Le/a/l/c/a/e1;

    invoke-interface {p1}, Le/a/l/c/a/l1;->ee()V

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "ItemEvent.DURATION_CHANGED"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    iget-object v0, p0, Le/a/l/c/a/h0;->e:Le/a/x/w;

    .line 54
    iget-object p1, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type com.truecaller.ghost_call.ScheduleDuration"

    .line 55
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v0, p1}, Le/a/x/w;->h0(I)V

    goto/16 :goto_0

    :cond_a
    :goto_6
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14d86530 -> :sswitch_6
        -0x14640b81 -> :sswitch_5
        0x169dbd6f -> :sswitch_4
        0x2a65c549 -> :sswitch_3
        0x34d7d4bc -> :sswitch_2
        0x41988b6c -> :sswitch_1
        0x6ade7c06 -> :sswitch_0
    .end sparse-switch
.end method
