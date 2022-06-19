.class public final Le/a/e/c/c2;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/e/c/z1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/e/c/a2;",
        ">;",
        "Le/a/e/c/z1;"
    }
.end annotation


# instance fields
.field public d:Z

.field public e:Le/a/b0/a/b/a;

.field public final f:Ls1/w/f;

.field public g:Le/a/g5/p;

.field public h:Le/a/b0/p/d;

.field public i:Le/a/l4/c;

.field public j:Le/a/l/p2/v0;

.field public final k:Le/a/a0/n;

.field public final l:Le/a/k5/a;

.field public final m:Le/a/x4/g;

.field public final n:Le/a/x4/l/b;

.field public final o:Le/a/z2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/g5/p;Le/a/b0/p/d;Le/a/l4/c;Le/a/l/p2/v0;Le/a/a0/n;Le/a/k5/a;Le/a/x4/g;Le/a/x4/l/b;Le/a/z2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryFetcher"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezoneHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsPresenter"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/e/c/c2;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/e/c/c2;->g:Le/a/g5/p;

    iput-object p3, p0, Le/a/e/c/c2;->h:Le/a/b0/p/d;

    iput-object p4, p0, Le/a/e/c/c2;->i:Le/a/l4/c;

    iput-object p5, p0, Le/a/e/c/c2;->j:Le/a/l/p2/v0;

    iput-object p6, p0, Le/a/e/c/c2;->k:Le/a/a0/n;

    iput-object p7, p0, Le/a/e/c/c2;->l:Le/a/k5/a;

    iput-object p8, p0, Le/a/e/c/c2;->m:Le/a/x4/g;

    iput-object p9, p0, Le/a/e/c/c2;->n:Le/a/x4/l/b;

    iput-object p10, p0, Le/a/e/c/c2;->o:Le/a/z2/a;

    return-void
.end method


# virtual methods
.method public D1(Lcom/truecaller/data/entity/Contact;ZZZ)V
    .locals 11

    const-string p2, "contact"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/e/c/a2;->E0()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Le/a/e/c/c2;->d:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/e/c/a2;->getAvatarPresenter()Le/a/b0/a/b/a;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Le/a/e/c/c2;->e:Le/a/b0/a/b/a;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v3

    if-eqz p3, :cond_2

    .line 4
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/e/c/a2;->Q0()V

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/e/c/a2;->L0()V

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Le/a/e/c/a2;->M0()Z

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/e/c/a2;->T0()V

    goto :goto_3

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Le/a/e/c/a2;->Q0()V

    :cond_6
    :goto_3
    const/4 v0, 0x6

    .line 8
    invoke-static {p1, p3, v1, v2, v0}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    .line 9
    iget-object v3, p0, Le/a/e/c/c2;->e:Le/a/b0/a/b/a;

    const/4 v4, 0x2

    if-eqz v3, :cond_7

    invoke-static {v3, v0, v1, v4, v2}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 10
    :cond_7
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    :goto_4
    move v0, v3

    :goto_5
    if-nez v0, :cond_a

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 11
    :cond_a
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->t()Ljava/lang/String;

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_c

    .line 12
    iget-object v5, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/e/c/a2;

    if-eqz v5, :cond_b

    invoke-interface {v5, v0}, Le/a/e/c/a2;->setNameOrNumber(Ljava/lang/String;)V

    sget-object v0, Ls1/s;->a:Ls1/s;

    goto :goto_7

    :cond_b
    move-object v0, v2

    :goto_7
    if-eqz v0, :cond_c

    goto :goto_8

    .line 13
    :cond_c
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_d

    const v5, 0x104000e

    invoke-interface {v0, v5}, Le/a/e/c/a2;->setNameOrNumber(I)V

    .line 14
    :cond_d
    :goto_8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->f0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->m()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_f

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_e

    goto :goto_9

    :cond_e
    move v6, v1

    goto :goto_a

    :cond_f
    :goto_9
    move v6, v3

    :goto_a
    if-nez v6, :cond_10

    iget-object v5, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/e/c/a2;

    if-eqz v5, :cond_14

    invoke-interface {v5, v0}, Le/a/e/c/a2;->setAltName(Ljava/lang/String;)V

    goto :goto_d

    :cond_10
    if-eqz v5, :cond_12

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_b

    :cond_11
    move v0, v1

    goto :goto_c

    :cond_12
    :goto_b
    move v0, v3

    :goto_c
    if-nez v0, :cond_13

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_14

    invoke-interface {v0, v5}, Le/a/e/c/a2;->setAltName(Ljava/lang/String;)V

    goto :goto_d

    .line 17
    :cond_13
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Le/a/e/c/a2;->G()V

    .line 18
    :cond_14
    :goto_d
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Le/a/e/c/c2;->o:Le/a/z2/a;

    invoke-interface {v0, p1}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 20
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Le/a/e/c/a2;->H0()V

    goto :goto_e

    .line 21
    :cond_15
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/a2;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Le/a/e/c/a2;->P0()V

    .line 22
    :cond_16
    :goto_e
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_19

    if-eqz v0, :cond_18

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_17

    goto :goto_f

    :cond_17
    move p4, v1

    goto :goto_10

    :cond_18
    :goto_f
    move p4, v3

    :goto_10
    if-nez p4, :cond_19

    .line 24
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/e/c/a2;

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Le/a/e/c/a2;->O0()V

    goto :goto_11

    .line 25
    :cond_19
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/e/c/a2;

    if-eqz p4, :cond_1a

    invoke-interface {p4}, Le/a/e/c/a2;->N0()V

    .line 26
    :cond_1a
    :goto_11
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v6, p0, Le/a/e/c/c2;->f:Ls1/w/f;

    new-instance v8, Le/a/e/c/b2;

    invoke-direct {v8, p0, p1, p3, v2}, Le/a/e/c/b2;-><init>(Le/a/e/c/c2;Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)V

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 28
    iget-boolean p4, p0, Le/a/e/c/c2;->d:Z

    .line 29
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Le/a/e/c/c2;->g:Le/a/g5/p;

    invoke-interface {v0, p1}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 31
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/e/c/a2;

    if-eqz p4, :cond_1c

    invoke-interface {p4, v0}, Le/a/e/c/a2;->G0(Le/a/b0/p/c;)V

    goto :goto_12

    .line 32
    :cond_1b
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz p4, :cond_1c

    iget-object p4, p0, Le/a/e/c/c2;->h:Le/a/b0/p/d;

    invoke-interface {p4}, Le/a/b0/p/d;->d()Z

    move-result p4

    if-eqz p4, :cond_1c

    .line 33
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/e/c/a2;

    if-eqz p4, :cond_1c

    const v0, 0x7f120143

    invoke-interface {p4, v0}, Le/a/e/c/a2;->K0(I)V

    .line 34
    :cond_1c
    :goto_12
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_25

    .line 35
    iget-object p3, p0, Le/a/e/c/c2;->i:Le/a/l4/c;

    invoke-static {p3, p1}, Le/a/e/a2;->C(Le/a/l4/c;Lcom/truecaller/data/entity/Contact;)Le/a/l4/e;

    move-result-object p3

    if-eqz p3, :cond_25

    .line 36
    iget-object p4, p3, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz p4, :cond_1d

    .line 37
    invoke-virtual {p4}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object p4

    goto :goto_13

    :cond_1d
    move-object p4, v2

    :goto_13
    if-nez p4, :cond_1e

    goto :goto_14

    :cond_1e
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eq p4, v3, :cond_24

    if-eq p4, v4, :cond_1f

    .line 38
    :goto_14
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/e/c/a2;

    if-eqz p3, :cond_26

    invoke-interface {p3}, Le/a/e/c/a2;->W0()V

    goto :goto_16

    .line 39
    :cond_1f
    iget-object p4, p3, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz p4, :cond_20

    .line 40
    invoke-virtual {p4}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object p4

    goto :goto_15

    :cond_20
    move-object p4, v2

    :goto_15
    if-nez p4, :cond_21

    goto :goto_16

    :cond_21
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    if-eq p4, v3, :cond_23

    const/4 v0, 0x3

    if-eq p4, v0, :cond_22

    goto :goto_16

    .line 41
    :cond_22
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/e/c/a2;

    if-eqz p4, :cond_26

    invoke-interface {p4, p3}, Le/a/e/c/a2;->setSleepStatus(Le/a/l4/e;)V

    goto :goto_16

    .line 42
    :cond_23
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/e/c/a2;

    if-eqz p4, :cond_26

    invoke-interface {p4, p3}, Le/a/e/c/a2;->setBusyStatus(Le/a/l4/e;)V

    goto :goto_16

    .line 43
    :cond_24
    iget-object p4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p4, Le/a/e/c/a2;

    if-eqz p4, :cond_26

    invoke-interface {p4, p3}, Le/a/e/c/a2;->setAvailableStatus(Le/a/l4/e;)V

    goto :goto_16

    .line 44
    :cond_25
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/e/c/a2;

    if-eqz p3, :cond_26

    invoke-interface {p3}, Le/a/e/c/a2;->W0()V

    .line 45
    :cond_26
    :goto_16
    iget-boolean p3, p0, Le/a/e/c/c2;->d:Z

    .line 46
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_28

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_27

    goto :goto_17

    :cond_27
    move v3, v1

    :cond_28
    :goto_17
    if-eqz v3, :cond_29

    .line 48
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result p4

    if-eqz p4, :cond_2a

    if-eqz p3, :cond_2a

    .line 49
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/e/c/a2;

    if-eqz p3, :cond_2a

    const p4, 0x7f120142

    invoke-interface {p3, p4}, Le/a/e/c/a2;->V0(I)V

    goto :goto_18

    .line 50
    :cond_29
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/e/c/a2;

    if-eqz p3, :cond_2a

    invoke-interface {p3}, Le/a/e/c/a2;->J0()V

    .line 51
    :cond_2a
    :goto_18
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->x0()Z

    move-result p3

    if-eqz p3, :cond_2b

    invoke-static {p1, v1}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_2b

    iget-object p3, p0, Le/a/e/c/c2;->j:Le/a/l/p2/v0;

    invoke-interface {p3}, Le/a/l/p2/v0;->H()Z

    move-result p3

    if-eqz p3, :cond_2b

    .line 53
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/e/c/a2;

    if-eqz p3, :cond_2c

    invoke-interface {p3}, Le/a/e/c/a2;->S0()V

    goto :goto_19

    .line 54
    :cond_2b
    iget-object p3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/e/c/a2;

    if-eqz p3, :cond_2c

    invoke-interface {p3}, Le/a/e/c/a2;->I0()V

    .line 55
    :cond_2c
    :goto_19
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p2

    if-nez p2, :cond_2d

    move-object p2, p1

    goto :goto_1a

    :cond_2d
    move-object p2, v2

    :goto_1a
    if-eqz p2, :cond_2e

    .line 57
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/c/a2;

    if-eqz p2, :cond_2e

    invoke-interface {p2, p1}, Le/a/e/c/a2;->F0(Lcom/truecaller/data/entity/Contact;)V

    .line 58
    :cond_2e
    new-instance v6, Le/a/e/c/d2;

    invoke-direct {v6, p0, p1, v2}, Le/a/e/c/d2;-><init>(Le/a/e/c/c2;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 59
    new-instance p2, Le/a/x4/l/a$c;

    invoke-direct {p2, p1}, Le/a/x4/l/a$c;-><init>(Lcom/truecaller/data/entity/Contact;)V

    .line 60
    iget-object p3, p0, Le/a/e/c/c2;->n:Le/a/x4/l/b;

    invoke-virtual {p3, p2}, Le/a/x4/l/b;->Kj(Le/a/x4/l/a;)V

    .line 61
    iget-object p2, p0, Le/a/e/c/c2;->m:Le/a/x4/g;

    invoke-interface {p2, p1}, Le/a/x4/g;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/c/a2;

    if-eqz p1, :cond_30

    iget-object p2, p0, Le/a/e/c/c2;->n:Le/a/x4/l/b;

    invoke-interface {p1, p2}, Le/a/e/c/a2;->setTrueContext(Le/a/m5/c;)V

    goto :goto_1b

    .line 62
    :cond_2f
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/c/a2;

    if-eqz p1, :cond_30

    invoke-interface {p1}, Le/a/e/c/a2;->n()V

    :cond_30
    :goto_1b
    return-void
.end method

.method public final synthetic Ij(Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/e/c/c2$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/e/c/c2$a;

    iget v1, v0, Le/a/e/c/c2$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/e/c/c2$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/e/c/c2$a;

    invoke-direct {v0, p0, p3}, Le/a/e/c/c2$a;-><init>(Le/a/e/c/c2;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/e/c/c2$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/e/c/c2$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p2, v0, Le/a/e/c/c2$a;->i:Z

    iget-object p1, v0, Le/a/e/c/c2$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iget-object v0, v0, Le/a/e/c/c2$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/e/c/c2;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/e/c/c2;->k:Le/a/a0/n;

    iput-object p0, v0, Le/a/e/c/c2$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/e/c/c2$a;->h:Ljava/lang/Object;

    iput-boolean p2, v0, Le/a/e/c/c2$a;->i:Z

    iput v3, v0, Le/a/e/c/c2$a;->e:I

    invoke-static {p3, p1, v0}, Le/a/l4/k;->Y(Le/a/a0/n;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p3, Lcom/truecaller/data/entity/SpamCategoryModel;

    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result p2

    if-lez p2, :cond_5

    .line 7
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/e/c/a2;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result p1

    invoke-interface {p2, p1, p3}, Le/a/e/c/a2;->R0(ILcom/truecaller/data/entity/SpamCategoryModel;)V

    .line 8
    :cond_4
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/c/a2;

    if-eqz p1, :cond_6

    invoke-interface {p1, p3}, Le/a/e/c/a2;->setSpamCategoryIcon(Lcom/truecaller/data/entity/SpamCategoryModel;)V

    goto :goto_2

    .line 9
    :cond_5
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e/c/a2;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/e/c/a2;->U0()V

    .line 10
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
