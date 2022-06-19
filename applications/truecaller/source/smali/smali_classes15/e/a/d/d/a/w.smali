.class public final Le/a/d/d/a/w;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/d/a/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/d/a/u;",
        ">;",
        "Le/a/d/d/a/s;"
    }
.end annotation


# instance fields
.field public final A:Le/a/p5/c0;

.field public final B:Le/a/l4/c;

.field public final C:Le/a/d/f;

.field public final D:Le/a/u3/g;

.field public final d:Le/a/b0/q/v;

.field public e:Lq3/a/p1;

.field public f:Z

.field public g:Z

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

.field public n:Le/a/b0/q/v;

.field public o:Ljava/lang/String;

.field public p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

.field public final q:Ls1/w/f;

.field public final r:Ls1/w/f;

.field public final s:Le/a/d/d/c/b;

.field public final t:Le/a/d/d/a/a/a/b;

.field public final u:Le/a/d/d/a/a/d/d;

.field public final v:Le/a/d/d/a/a/c/a;

.field public final w:Le/a/d/d/a/a/d/a;

.field public final x:Le/a/d/d/a/a/b/a;

.field public final y:Le/a/q2/a;

.field public final z:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/d/d/c/b;Le/a/d/d/a/a/a/b;Le/a/d/d/a/a/d/d;Le/a/d/d/a/a/c/a;Le/a/d/d/a/a/d/a;Le/a/d/d/a/a/b/a;Le/a/q2/a;Le/a/r2/f;Le/a/p5/c0;Le/a/l4/c;Le/a/d/f;Le/a/u3/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p12    # Le/a/l4/c;
        .annotation runtime Ljavax/inject/Named;
            value = "VOIP_CONTACTS_AVAILABILITY_MANAGER"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/d/d/c/b;",
            "Le/a/d/d/a/a/a/b;",
            "Le/a/d/d/a/a/d/d;",
            "Le/a/d/d/a/a/c/a;",
            "Le/a/d/d/a/a/d/a;",
            "Le/a/d/d/a/a/b/a;",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/p5/c0;",
            "Le/a/l4/c;",
            "Le/a/d/f;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipContactsDataProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsAdapterPresenter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedContactsAdapterPresenter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupBannerPresenter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedContactsBarPresenter"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupSelectedContactsAdapterPresenter"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voip"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureRegistry"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/d/a/w;->q:Ls1/w/f;

    iput-object p2, p0, Le/a/d/d/a/w;->r:Ls1/w/f;

    iput-object p3, p0, Le/a/d/d/a/w;->s:Le/a/d/d/c/b;

    iput-object p4, p0, Le/a/d/d/a/w;->t:Le/a/d/d/a/a/a/b;

    iput-object p5, p0, Le/a/d/d/a/w;->u:Le/a/d/d/a/a/d/d;

    iput-object p6, p0, Le/a/d/d/a/w;->v:Le/a/d/d/a/a/c/a;

    iput-object p7, p0, Le/a/d/d/a/w;->w:Le/a/d/d/a/a/d/a;

    iput-object p8, p0, Le/a/d/d/a/w;->x:Le/a/d/d/a/a/b/a;

    iput-object p9, p0, Le/a/d/d/a/w;->y:Le/a/q2/a;

    iput-object p10, p0, Le/a/d/d/a/w;->z:Le/a/r2/f;

    iput-object p11, p0, Le/a/d/d/a/w;->A:Le/a/p5/c0;

    iput-object p12, p0, Le/a/d/d/a/w;->B:Le/a/l4/c;

    iput-object p13, p0, Le/a/d/d/a/w;->C:Le/a/d/f;

    iput-object p14, p0, Le/a/d/d/a/w;->D:Le/a/u3/g;

    .line 2
    new-instance p1, Le/a/b0/q/v;

    new-instance p2, Le/a/d/d/a/w$a;

    invoke-direct {p2, p0}, Le/a/d/d/a/w$a;-><init>(Le/a/d/d/a/w;)V

    invoke-direct {p1, p2}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;)V

    iput-object p1, p0, Le/a/d/d/a/w;->d:Le/a/b0/q/v;

    .line 3
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/d/d/a/w;->h:Ljava/util/List;

    .line 4
    iput-object p1, p0, Le/a/d/d/a/w;->i:Ljava/util/List;

    .line 5
    iput-object p1, p0, Le/a/d/d/a/w;->j:Ljava/util/List;

    .line 6
    iput-object p1, p0, Le/a/d/d/a/w;->k:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/d/d/a/w;->l:Ljava/util/List;

    .line 8
    sget-object p1, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;->HIDDEN:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    iput-object p1, p0, Le/a/d/d/a/w;->m:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    return-void
.end method


# virtual methods
.method public Ch(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V
    .locals 2

    const-string v0, "voipContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Ij()V

    .line 2
    iget-boolean v0, p1, Le/a/d/d/c/a;->e:Z

    if-eqz v0, :cond_3

    .line 3
    iget-boolean v0, p1, Le/a/d/d/c/a;->d:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/d/d/a/w;->Kj()I

    move-result v0

    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x7

    if-ne v1, v0, :cond_2

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/d/a/u;

    if-eqz p1, :cond_1

    const p2, 0x7f121096

    invoke-interface {p1, p2}, Le/a/d/d/a/u;->d(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Le/a/d/d/c/a;->d:Z

    .line 7
    iget-object v0, p0, Le/a/d/d/a/w;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Le/a/d/d/a/w;->Qj(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    return-void

    :cond_3
    :goto_0
    const-string p1, "Contact is already in the call or already selected"

    .line 9
    invoke-virtual {p0, p1}, Le/a/d/d/a/w;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method public Fa()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/u;->e0()V

    :cond_0
    return-void
.end method

.method public Fh(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Le/a/d/d/a/w;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/d/a/w;->e:Lq3/a/p1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_1
    iput-object v2, p0, Le/a/d/d/a/w;->e:Lq3/a/p1;

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/d/d/a/u;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Le/a/d/d/a/u;->e0()V

    :cond_2
    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p2

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 6
    iput-boolean p2, p0, Le/a/d/d/a/w;->f:Z

    .line 7
    invoke-virtual {p0}, Le/a/d/d/a/w;->Tj()V

    .line 8
    invoke-virtual {p0}, Le/a/d/d/a/w;->Rj()V

    .line 9
    invoke-virtual {p0}, Le/a/d/d/a/w;->Oj()V

    .line 10
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/d/a/u;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/d/d/a/u;->D0()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 p2, 0x0

    .line 11
    new-instance v3, Le/a/d/d/a/w$b;

    invoke-direct {v3, p0, p1, v2}, Le/a/d/d/a/w$b;-><init>(Le/a/d/d/a/w;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/d/a/w;->e:Lq3/a/p1;

    :cond_6
    :goto_1
    return-void
.end method

.method public final Ij()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Nj()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Should not be used when not in mode group picker"

    .line 2
    invoke-virtual {p0, v0}, Le/a/d/d/a/w;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Jj()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getPeers()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    invoke-static {v0, v2}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const-string v0, "voipContactsScreenParams"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Kj()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Jj()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Le/a/d/d/a/w;->Mj()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final Lj()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public Mb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->k:Ljava/util/List;

    return-object v0
.end method

.method public Mh()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Ij()V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_4

    .line 3
    iget-object v1, p0, Le/a/d/d/a/w;->l:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 6
    check-cast v3, Le/a/d/d/c/a;

    .line 7
    iget-object v3, v3, Le/a/d/d/c/a;->b:Lcom/truecaller/data/entity/Number;

    .line 8
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 9
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    check-cast v1, [Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Le/a/d/d/a/w;->Mj()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, p0, Le/a/d/d/a/w;->C:Le/a/d/f;

    invoke-static {v1}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getCallAnalyticsContext()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Le/a/d/f;->l(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, "voipContactsScreenParams"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 13
    :cond_3
    invoke-interface {v0, v1}, Le/a/d/d/a/u;->q8([Ljava/lang/String;)V

    .line 14
    :goto_2
    invoke-interface {v0}, Le/a/d/d/a/u;->t()V

    :cond_4
    return-void
.end method

.method public final Mj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getInitiateCall()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "voipContactsScreenParams"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Nh()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->m:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    sget-object v1, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;->COLLAPSED:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Le/a/b0/q/v;

    new-instance v1, Le/a/d/d/a/w$c;

    invoke-direct {v1, p0}, Le/a/d/d/a/w$c;-><init>(Le/a/d/d/a/w;)V

    invoke-direct {v0, v1}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;)V

    iput-object v0, p0, Le/a/d/d/a/w;->n:Le/a/b0/q/v;

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/d/a/u;->q2()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Le/a/d/d/a/u;->c9(Z)V

    .line 6
    invoke-interface {v0}, Le/a/d/d/a/u;->Z7()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Nj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getModeGroupPicker()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "voipContactsScreenParams"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Oj()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Nj()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v1, p0, Le/a/d/d/a/w;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0, v2}, Le/a/d/d/a/u;->A2(Z)V

    .line 5
    invoke-interface {v0, v2}, Le/a/d/d/a/u;->P3(Z)V

    .line 6
    invoke-interface {v0, v2}, Le/a/d/d/a/u;->Y9(Z)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Le/a/d/d/a/u;->A2(Z)V

    .line 8
    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    :cond_3
    invoke-interface {v0, v2}, Le/a/d/d/a/u;->P3(Z)V

    .line 9
    invoke-interface {v0, v3}, Le/a/d/d/a/u;->Y9(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public P8()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getGroupPickerMode()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    move-result-object v0

    sget-object v1, Lcom/truecaller/voip/contacts/ui/GroupPickerMode;->CREATE_GROUP:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/d/a/u;->o7()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/d/d/a/u;->t()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "voipContactsScreenParams"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Pj()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Kj()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x7

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v3

    .line 3
    :goto_2
    iget-object v2, p0, Le/a/d/d/a/w;->A:Le/a/p5/c0;

    const v5, 0x7f100063

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v2, v5, v1, v6}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getQuan\u2026cher_person, personCount)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/d/a/u;

    if-eqz v2, :cond_4

    .line 5
    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_3

    iget-object v5, p0, Le/a/d/d/a/w;->A:Le/a/p5/c0;

    const v7, 0x7f121097

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    aput-object v1, v6, v3

    .line 7
    invoke-interface {v5, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 8
    :cond_3
    iget-object v5, p0, Le/a/d/d/a/w;->A:Le/a/p5/c0;

    const v7, 0x7f121098

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v4

    aput-object v1, v8, v3

    .line 10
    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    .line 11
    invoke-interface {v5, v7, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string v1, "if (groupTotalSelectedPe\u2026lectedPeers\n            )"

    .line 12
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v2, v0}, Le/a/d/d/a/u;->c(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final Qj(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->j:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/d/d/c/a;

    .line 4
    iget-boolean v4, v4, Le/a/d/d/c/a;->d:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iput-object v1, p0, Le/a/d/d/a/w;->k:Ljava/util/List;

    .line 7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Le/a/d/d/a/u;->m1()V

    .line 9
    sget-object v2, Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;->CONTACTS_LIST:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;

    if-ne p3, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Le/a/d/d/a/w;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 10
    :goto_1
    invoke-interface {v0, p2}, Le/a/d/d/a/u;->P8(I)V

    .line 11
    invoke-interface {v0, v1}, Le/a/d/d/a/u;->P8(I)V

    .line 12
    iget-object p1, p0, Le/a/d/d/a/w;->w:Le/a/d/d/a/a/d/a;

    invoke-virtual {p1}, Le/a/d/d/a/a/d/a;->B0()V

    .line 13
    invoke-virtual {p0}, Le/a/d/d/a/w;->Rj()V

    .line 14
    :cond_3
    invoke-virtual {p0}, Le/a/d/d/a/w;->Pj()V

    .line 15
    invoke-virtual {p0}, Le/a/d/d/a/w;->Oj()V

    .line 16
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/d/a/u;

    if-eqz p1, :cond_9

    .line 17
    iget-object p2, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getGroupPickerMode()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    move-result-object p2

    sget-object p3, Lcom/truecaller/voip/contacts/ui/GroupPickerMode;->CREATE_GROUP:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    if-ne p2, p3, :cond_5

    .line 18
    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result p2

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    invoke-interface {p1, p2}, Le/a/d/d/a/u;->j3(Z)V

    .line 19
    invoke-interface {p1, v1}, Le/a/d/d/a/u;->h4(Z)V

    goto :goto_4

    .line 20
    :cond_5
    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result p2

    if-eqz p2, :cond_6

    move p2, v3

    goto :goto_3

    :cond_6
    move p2, v1

    :goto_3
    invoke-interface {p1, p2}, Le/a/d/d/a/u;->h4(Z)V

    .line 21
    invoke-interface {p1, v1}, Le/a/d/d/a/u;->j3(Z)V

    .line 22
    :goto_4
    invoke-virtual {p0}, Le/a/d/d/a/w;->Lj()I

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->W1(Z)V

    goto :goto_6

    :cond_8
    const-string p1, "voipContactsScreenParams"

    .line 23
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_9
    :goto_6
    return-void
.end method

.method public final Rj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->w:Le/a/d/d/a/a/d/a;

    iget-boolean v1, p0, Le/a/d/d/a/w;->f:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Le/a/d/d/a/w;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Le/a/d/d/a/a/d/a;->A(Z)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/u;->X1()V

    :cond_0
    return-void
.end method

.method public Sg()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/d/d/a/u;->c9(Z)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Le/a/d/d/a/u;->C1()V

    .line 4
    invoke-interface {v0}, Le/a/d/d/a/u;->e0()V

    .line 5
    invoke-interface {v0}, Le/a/d/d/a/u;->l0()V

    :cond_1
    return-void
.end method

.method public final Sj(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    return-void
.end method

.method public final Tj()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->D:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->V5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x16d

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a/d/d/a/w;->Nj()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/d/d/a/w;->v:Le/a/d/d/a/a/c/a;

    .line 5
    iget-boolean v1, p0, Le/a/d/d/a/w;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Le/a/d/d/a/w;->h:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Le/a/d/d/a/w;->i:Ljava/util/List;

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Le/a/d/d/a/a/c/a;->C(Z)V

    return-void

    .line 7
    :cond_2
    :goto_1
    iget-object v0, p0, Le/a/d/d/a/w;->v:Le/a/d/d/a/a/c/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/d/d/a/a/c/a;->C(Z)V

    return-void
.end method

.method public X6()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/u;->Y3()V

    :cond_0
    const-string v0, "voipLauncherCreateGroupBanner"

    const/4 v1, 0x4

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v1, "voiceLauncherV2"

    :goto_0
    const-string v3, "action"

    .line 2
    invoke-static {v0, v3, v0, v2, v1}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/d/d/a/w;->y:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/d/d/a/u;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/d/d/a/w;->t:Le/a/d/d/a/a/a/b;

    invoke-virtual {p0}, Le/a/d/d/a/w;->Nj()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Le/a/d/d/a/a/a/b;->A(Le/a/d/d/a/t;Z)V

    .line 5
    iget-object v0, p0, Le/a/d/d/a/w;->v:Le/a/d/d/a/a/c/a;

    invoke-virtual {v0, p0}, Le/a/d/d/a/a/c/a;->A(Le/a/d/d/a/t;)V

    .line 6
    iget-object v0, p0, Le/a/d/d/a/w;->u:Le/a/d/d/a/a/d/d;

    invoke-virtual {p0}, Le/a/d/d/a/w;->Nj()Z

    move-result v1

    invoke-virtual {v0, p0, v1}, Le/a/d/d/a/a/d/d;->A(Le/a/d/d/a/t;Z)V

    .line 7
    iget-object v0, p0, Le/a/d/d/a/w;->x:Le/a/d/d/a/a/b/a;

    invoke-virtual {v0, p0}, Le/a/d/d/a/a/b/a;->A(Le/a/d/d/a/t;)V

    .line 8
    iget-object v0, p0, Le/a/d/d/a/w;->B:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->I1()V

    .line 9
    invoke-virtual {p0}, Le/a/d/d/a/w;->Nj()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    const-string v4, "voipContactsScreenParams"

    if-eqz v0, :cond_2

    .line 11
    iget-object v5, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getGroupPickerMode()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    move-result-object v5

    sget-object v6, Lcom/truecaller/voip/contacts/ui/GroupPickerMode;->CREATE_GROUP:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    if-ne v5, v6, :cond_0

    const v5, 0x7f0806bf

    goto :goto_0

    :cond_0
    const v5, 0x7f0806e9

    .line 12
    :goto_0
    invoke-interface {v0, v5}, Le/a/d/d/a/u;->N9(I)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_2
    :goto_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_5

    iget-object v5, p0, Le/a/d/d/a/w;->A:Le/a/p5/c0;

    .line 15
    iget-object v6, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getGroupPickerMode()Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    move-result-object v4

    sget-object v6, Lcom/truecaller/voip/contacts/ui/GroupPickerMode;->CREATE_GROUP:Lcom/truecaller/voip/contacts/ui/GroupPickerMode;

    if-ne v4, v6, :cond_3

    const v4, 0x7f121094

    goto :goto_2

    :cond_3
    const v4, 0x7f121099

    :goto_2
    new-array v6, v3, [Ljava/lang/Object;

    .line 16
    invoke-interface {v5, v4, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resourceProvider.getString(getToolbarTitle())"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Le/a/d/d/a/u;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 17
    :cond_4
    invoke-static {v4}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_5
    :goto_3
    invoke-virtual {p0}, Le/a/d/d/a/w;->Pj()V

    .line 19
    invoke-interface {p1}, Le/a/d/d/a/u;->fa()V

    .line 20
    invoke-virtual {p0}, Le/a/d/d/a/w;->Mj()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 21
    iget-object v0, p0, Le/a/d/d/a/w;->C:Le/a/d/f;

    invoke-virtual {p0}, Le/a/d/d/a/w;->Jj()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Le/a/d/f;->g(Ljava/util/Set;)V

    goto :goto_4

    .line 22
    :cond_6
    iget-object v0, p0, Le/a/d/d/a/w;->A:Le/a/p5/c0;

    const v4, 0x7f1210a1

    new-array v5, v2, [Ljava/lang/Object;

    const v6, 0x7f1210cb

    new-array v7, v3, [Ljava/lang/Object;

    invoke-interface {v0, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-interface {v0, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "resourceProvider.getStri\u2026.string.voip_text_voice))"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/d/d/a/u;->setTitle(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Le/a/d/d/a/w;->A:Le/a/p5/c0;

    const v4, 0x7f1210a0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "resourceProvider.getStri\u2026g.voip_launcher_subtitle)"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/d/d/a/u;->c(Ljava/lang/String;)V

    .line 24
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->Y9(Z)V

    .line 25
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->A2(Z)V

    .line 26
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->P3(Z)V

    .line 27
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->h4(Z)V

    .line 28
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->j3(Z)V

    .line 29
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->W1(Z)V

    .line 30
    :cond_7
    :goto_4
    invoke-interface {p1, v3}, Le/a/d/d/a/u;->G2(Z)V

    .line 31
    invoke-interface {p1, v2}, Le/a/d/d/a/u;->i(Z)V

    .line 32
    invoke-virtual {p0}, Le/a/d/d/a/w;->Nj()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "voiceLauncher"

    const-string v0, "viewId"

    .line 33
    invoke-static {p1, v0, p1, v1, v1}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object v0

    .line 34
    iget-object v1, p0, Le/a/d/d/a/w;->y:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 35
    iget-object v0, p0, Le/a/d/d/a/w;->z:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 36
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v1

    .line 37
    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 38
    iget-object p1, p0, Le/a/d/d/a/w;->o:Ljava/lang/String;

    .line 39
    invoke-virtual {v1, p1}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    .line 40
    invoke-virtual {v1}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1

    .line 41
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_8
    return-void
.end method

.method public Z5(Le/a/d/d/c/a;)V
    .locals 4

    const-string v0, "voipContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_3

    .line 2
    iget-object p1, p1, Le/a/d/d/c/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 3
    iget-object v1, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getCallAnalyticsContext()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v2, v1

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "voiceLauncher"

    .line 4
    :goto_0
    invoke-interface {v0, p1, v2}, Le/a/d/d/a/u;->f4(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "voipContactsScreenParams"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    return-void
.end method

.method public ai(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V
    .locals 1

    const-string v0, "voipContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/w;->Ij()V

    .line 2
    iget-boolean v0, p1, Le/a/d/d/c/a;->e:Z

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p1, Le/a/d/d/c/a;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Le/a/d/d/c/a;->d:Z

    .line 5
    iget-object v0, p0, Le/a/d/d/a/w;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Le/a/d/d/a/w;->Qj(Le/a/d/d/c/a;ILcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipContactSelectionSource;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Contact is already in the call or already deselected"

    .line 7
    invoke-virtual {p0, p1}, Le/a/d/d/a/w;->Sj(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/d/d/a/w;->B:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->Y()V

    .line 3
    iget-object v0, p0, Le/a/d/d/a/w;->t:Le/a/d/d/a/a/a/b;

    invoke-virtual {v0}, Le/a/d/d/a/a/a/b;->B()V

    .line 4
    iget-object v0, p0, Le/a/d/d/a/w;->v:Le/a/d/d/a/a/c/a;

    invoke-virtual {v0}, Le/a/d/d/a/a/c/a;->B()V

    .line 5
    iget-object v0, p0, Le/a/d/d/a/w;->u:Le/a/d/d/a/a/d/d;

    invoke-virtual {v0}, Le/a/d/d/a/a/d/d;->B()V

    .line 6
    iget-object v0, p0, Le/a/d/d/a/w;->x:Le/a/d/d/a/a/b/a;

    invoke-virtual {v0}, Le/a/d/d/a/a/b/a;->B()V

    return-void
.end method

.method public f3(Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/d/a/w;->m:Lcom/truecaller/voip/contacts/ui/VoipContactsMvp$VoipBottomSheetState;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/d/d/a/w;->d:Le/a/b0/q/v;

    invoke-virtual {p1}, Le/a/b0/q/v;->a()V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean p1, p0, Le/a/d/d/a/w;->g:Z

    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/d/a/u;

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Le/a/d/d/a/u;->C1()V

    .line 7
    invoke-interface {p1}, Le/a/d/d/a/u;->e0()V

    .line 8
    invoke-interface {p1}, Le/a/d/d/a/u;->l0()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/d/a/u;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/d/d/a/u;->t()V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p1, p0, Le/a/d/d/a/w;->n:Le/a/b0/q/v;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Le/a/b0/q/v;->a()V

    :cond_4
    :goto_0
    return-void
.end method

.method public fi()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/u;->t()V

    :cond_0
    return-void
.end method

.method public h9(Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;)V
    .locals 3

    const-string v0, "voipContactsScreenParams"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getPeers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x7

    if-le v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;->getInitiateCall()Z

    move-result v2

    xor-int/2addr v1, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Le/a/d/d/a/w;->p:Lcom/truecaller/voip/contacts/ui/VoipContactsScreenParams;

    return-void

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Peers in the call exceeds the max group size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/d/a/u;->t()V

    :cond_0
    return-void
.end method

.method public oj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/a/d/d/a/w;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/d/d/a/w;->h:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/d/d/a/w;->i:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public wj(Le/a/d/d/c/a;)V
    .locals 1

    const-string v0, "voipContact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/u;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Le/a/d/d/c/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 3
    invoke-interface {v0, p1}, Le/a/d/d/a/u;->x2(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void
.end method

.method public x9(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/d/d/a/w;->o:Ljava/lang/String;

    return-void
.end method

.method public y3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/d/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/d/a/w;->l:Ljava/util/List;

    return-object v0
.end method
