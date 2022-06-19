.class public final Le/a/d/b/b/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/b/b;->Pj(Lcom/truecaller/voip/VoipState;Lcom/truecaller/voip/VoipStateReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/b/b/b$a;->b:I

    iput-object p2, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/d/b/b/b$a;->b:I

    const-string v2, "voipUser"

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    throw v6

    .line 1
    :pswitch_0
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 2
    iget-boolean v3, v1, Le/a/d/b/b/b;->g:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, v1, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v3, :cond_1

    .line 4
    iget-object v2, v3, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Le/a/d/b/b/b;->Lj(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 6
    :pswitch_1
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1, v4, v5, v3}, Le/a/d/b/b/b;->Jj(Le/a/d/b/b/b;JI)Lq3/a/p1;

    return-object v0

    .line 7
    :pswitch_2
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1}, Le/a/d/b/b/b;->Ij(Le/a/d/b/b/b;)V

    .line 8
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    sget-object v2, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->END:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    .line 9
    invoke-virtual {v1, v2}, Le/a/d/b/b/b;->Nj(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;)Lq3/a/p1;

    return-object v0

    .line 10
    :pswitch_3
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1, v4, v5, v3}, Le/a/d/b/b/b;->Jj(Le/a/d/b/b/b;JI)Lq3/a/p1;

    return-object v0

    .line 11
    :pswitch_4
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1}, Le/a/d/b/b/b;->Ij(Le/a/d/b/b/b;)V

    .line 12
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    sget-object v2, Lcom/truecaller/voip/manager/rtm/RtmMsgAction;->REJECT:Lcom/truecaller/voip/manager/rtm/RtmMsgAction;

    .line 13
    invoke-virtual {v1, v2}, Le/a/d/b/b/b;->Nj(Lcom/truecaller/voip/manager/rtm/RtmMsgAction;)Lq3/a/p1;

    return-object v0

    .line 14
    :pswitch_5
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 15
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d/b/b/i;

    if-eqz v3, :cond_4

    .line 16
    iget-object v4, v1, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v4, :cond_3

    .line 17
    iget-object v2, v1, Le/a/d/b/b/b;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 18
    iget-boolean v1, v1, Le/a/d/b/b/b;->f:Z

    .line 19
    invoke-interface {v3, v4, v2, v1}, Le/a/d/b/b/i;->l(Lcom/truecaller/voip/VoipUser;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string v0, "channelId"

    .line 20
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 21
    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 22
    :cond_4
    :goto_1
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 23
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/i;

    if-eqz v1, :cond_5

    .line 24
    invoke-interface {v1}, Le/a/d/b/b/i;->t()V

    :cond_5
    return-object v0

    .line 25
    :pswitch_6
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Le/a/d/b/b/b;

    .line 26
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v10, Le/a/d/b/b/r;

    invoke-direct {v10, v7, v6}, Le/a/d/b/b/r;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0

    .line 28
    :pswitch_7
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 29
    iget-object v1, v1, Le/a/d/b/b/b;->r:Le/a/d/c0/o;

    .line 30
    invoke-interface {v1}, Le/a/d/c0/o;->b()V

    .line 31
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 32
    iget-object v1, v1, Le/a/d/b/b/b;->p:Le/a/d/c0/x1/e;

    .line 33
    invoke-interface {v1}, Le/a/d/c0/x1/e;->a()V

    .line 34
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 35
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/i;

    if-eqz v1, :cond_6

    .line 36
    invoke-interface {v1}, Le/a/d/b/b/i;->k()V

    .line 37
    :cond_6
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 38
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d/b/b/i;

    if-eqz v3, :cond_9

    .line 39
    iget-object v4, v1, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v4, :cond_8

    .line 40
    iget-object v4, v4, Lcom/truecaller/voip/VoipUser;->c:Ljava/lang/String;

    .line 41
    invoke-interface {v3, v4}, Le/a/d/b/b/i;->h(Ljava/lang/String;)V

    .line 42
    iget-object v1, v1, Le/a/d/b/b/b;->e:Lcom/truecaller/voip/VoipUser;

    if-eqz v1, :cond_7

    invoke-static {v1}, Le/a/p5/s0/g;->H(Lcom/truecaller/voip/VoipUser;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    invoke-interface {v3, v1}, Le/a/d/b/b/i;->m3(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    goto :goto_2

    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 43
    :cond_8
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_9
    :goto_2
    return-object v0

    .line 44
    :pswitch_8
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Le/a/d/b/b/b;

    .line 45
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v10, Le/a/d/b/b/q;

    invoke-direct {v10, v7, v6}, Le/a/d/b/b/q;-><init>(Le/a/d/b/b/b;Ls1/w/d;)V

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-object v0

    .line 47
    :pswitch_9
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1, v4, v5, v3}, Le/a/d/b/b/b;->Jj(Le/a/d/b/b/b;JI)Lq3/a/p1;

    return-object v0

    .line 48
    :pswitch_a
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1}, Le/a/d/b/b/b;->Ij(Le/a/d/b/b/b;)V

    return-object v0

    .line 49
    :pswitch_b
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1, v4, v5, v3}, Le/a/d/b/b/b;->Jj(Le/a/d/b/b/b;JI)Lq3/a/p1;

    return-object v0

    .line 50
    :pswitch_c
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    invoke-static {v1}, Le/a/d/b/b/b;->Ij(Le/a/d/b/b/b;)V

    return-object v0

    .line 51
    :pswitch_d
    iget-object v1, p0, Le/a/d/b/b/b$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/b;

    .line 52
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/b/b/i;

    if-eqz v1, :cond_a

    .line 53
    invoke-interface {v1}, Le/a/d/b/b/i;->t()V

    :cond_a
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
