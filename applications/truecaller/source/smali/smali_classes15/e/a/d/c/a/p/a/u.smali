.class public final Le/a/d/c/a/p/a/u;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/a/p/a/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/c/a/p/a/p;",
        ">;",
        "Le/a/d/c/a/p/a/o;"
    }
.end annotation


# instance fields
.field public d:Le/a/d/c0/z1/e;

.field public e:Le/a/d/v/l/a;

.field public f:Z

.field public g:Z

.field public h:Lq3/a/p1;

.field public i:Lq3/a/p1;

.field public final j:Ls1/w/f;

.field public final k:Le/a/d/v/d;

.field public final l:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/v/d;Le/a/p5/c0;)V
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

    const-string v0, "groupCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/c/a/p/a/u;->j:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c/a/p/a/u;->k:Le/a/d/v/d;

    iput-object p3, p0, Le/a/d/c/a/p/a/u;->l:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public final Ij()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/d/c/a/p/a/u;->Kj(Ls1/k;Z)V

    return-void
.end method

.method public Jj(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Le/a/d/c/a/p/a/u;->g:Z

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_c

    .line 3
    iget-boolean v1, p0, Le/a/d/c/a/p/a/u;->f:Z

    if-eqz v1, :cond_5

    if-eqz p1, :cond_0

    .line 4
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_size_big:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_size_small:I

    :goto_0
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setViewSize(I)V

    if-eqz p1, :cond_1

    .line 5
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_profile_size_big:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_profile_size_small:I

    :goto_1
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setAvatarSize(I)V

    if-eqz p1, :cond_2

    .line 6
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_invite_sender_size_big:I

    goto :goto_2

    :cond_2
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_invite_sender_size_small:I

    .line 7
    :goto_2
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setInviteSenderSize(I)V

    if-eqz p1, :cond_3

    .line 8
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_text_size_big:I

    goto :goto_3

    :cond_3
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_text_size_small:I

    :goto_3
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setNameSize(I)V

    if-eqz p1, :cond_4

    .line 9
    sget p1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_loader_name_width_big:I

    goto :goto_4

    .line 10
    :cond_4
    sget p1, Lcom/truecaller/voip/R$dimen;->voip_contact_incoming_tile_loader_name_width_small:I

    .line 11
    :goto_4
    invoke-interface {v0, p1}, Le/a/d/c/a/p/a/p;->setLoaderNameWidth(I)V

    goto :goto_b

    :cond_5
    if-eqz p1, :cond_6

    .line 12
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_size_big:I

    goto :goto_5

    :cond_6
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_size_small:I

    :goto_5
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setViewSize(I)V

    if-eqz p1, :cond_7

    .line 13
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_profile_size_big:I

    goto :goto_6

    :cond_7
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_profile_size_small:I

    :goto_6
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setAvatarSize(I)V

    if-eqz p1, :cond_8

    .line 14
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_mute_size_big:I

    goto :goto_7

    :cond_8
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_mute_size_small:I

    :goto_7
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setMuteSize(I)V

    if-eqz p1, :cond_9

    .line 15
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_invite_sender_size_big:I

    goto :goto_8

    :cond_9
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_invite_sender_size_small:I

    :goto_8
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setInviteSenderSize(I)V

    if-eqz p1, :cond_a

    .line 16
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_text_size_big:I

    goto :goto_9

    :cond_a
    sget v1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_text_size_small:I

    :goto_9
    invoke-interface {v0, v1}, Le/a/d/c/a/p/a/p;->setNameSize(I)V

    if-eqz p1, :cond_b

    .line 17
    sget p1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_loader_name_width_big:I

    goto :goto_a

    :cond_b
    sget p1, Lcom/truecaller/voip/R$dimen;->voip_contact_tile_loader_name_width_small:I

    :goto_a
    invoke-interface {v0, p1}, Le/a/d/c/a/p/a/p;->setLoaderNameWidth(I)V

    .line 18
    :goto_b
    invoke-interface {v0}, Le/a/d/c/a/p/a/p;->a()V

    :cond_c
    return-void
.end method

.method public final Kj(Ls1/k;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/p;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/d/c/a/p/a/p;->s1()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 4
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 5
    iget-object v2, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Le/a/d/c/a/p/a/p;->l(II)V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_1
    invoke-interface {v0, p1}, Le/a/d/c/a/p/a/p;->x0(Z)V

    .line 8
    invoke-interface {v0, p2}, Le/a/d/c/a/p/a/p;->o(Z)V

    :cond_2
    return-void
.end method

.method public final Lj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c/a/p/a/u;->d:Le/a/d/c0/z1/e;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Le/a/d/c0/z1/e;->c:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    .line 4
    iget-boolean v1, p0, Le/a/d/c/a/p/a/u;->f:Z

    .line 5
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/p;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v0}, Le/a/d/c/a/p/a/p;->c0(Z)V

    :cond_2
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/d/c/a/p/a/p;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/d/c/a/p/a/u;->Ij()V

    return-void
.end method
