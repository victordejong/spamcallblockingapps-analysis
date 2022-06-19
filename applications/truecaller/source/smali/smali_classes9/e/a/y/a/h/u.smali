.class public final Le/a/y/a/h/u;
.super Le/a/y/a/e/d;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/h/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/y/a/e/d<",
        "Le/a/y/a/h/v;",
        ">;",
        "Le/a/y/a/h/t;"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Ljava/lang/String;

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public final I:Ls1/w/f;

.field public final J:Le/a/y/c/b;

.field public K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/flashsdk/models/ReplyActionsItem;",
            ">;"
        }
    .end annotation
.end field

.field public L:Z

.field public M:Landroid/net/Uri;

.field public N:Z

.field public O:Lcom/truecaller/flashsdk/models/ImageFlash;

.field public P:Z

.field public final Q:Le/a/y/b/w;

.field public final R:Le/a/y/b/c;

.field public final S:Le/m/e/k;

.field public final T:Le/a/y/b/h;

.field public w:Lcom/truecaller/flashsdk/models/QueuedFlash;

.field public x:Lcom/truecaller/flashsdk/models/Flash;

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/google/firebase/messaging/FirebaseMessaging;Le/a/y/b/z;Le/a/y/b/w;Le/a/y/b/g0;Le/a/y/b/f;Le/a/y/b/c;Le/a/y/b/a;Le/a/y/i/a;Le/a/y/b/u;Le/m/e/k;Le/a/y/b/h;Le/a/y/b/m;Le/a/p5/a0;Le/a/b0/o/a;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lcom/google/firebase/messaging/FirebaseMessaging;",
            "Le/a/y/b/z<",
            "Le/a/y/e/i;",
            ">;",
            "Le/a/y/b/w;",
            "Le/a/y/b/g0;",
            "Le/a/y/b/f;",
            "Le/a/y/b/c;",
            "Le/a/y/b/a;",
            "Le/a/y/i/a;",
            "Le/a/y/b/u;",
            "Le/m/e/k;",
            "Le/a/y/b/h;",
            "Le/a/y/b/m;",
            "Le/a/p5/a0;",
            "Le/a/b0/o/a;",
            ")V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p4

    move-object/from16 v12, p7

    move-object/from16 v11, p11

    move-object/from16 v10, p12

    const-string v0, "uiContext"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messaging"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentEmojiManager"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceUtil"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUtils"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactUtils"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorProvider"

    move-object/from16 v6, p8

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolTipsManager"

    move-object/from16 v7, p9

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationFormatter"

    move-object/from16 v8, p10

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtils"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHelper"

    move-object/from16 v9, p13

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    move-object/from16 v1, p14

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    move-object/from16 v12, p15

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p11

    move-object v14, v10

    move-object/from16 v10, p13

    move-object v14, v11

    move-object/from16 v11, p14

    move-object/from16 v14, p7

    .line 1
    invoke-direct/range {v0 .. v12}, Le/a/y/a/e/d;-><init>(Ls1/w/f;Le/a/y/b/z;Lcom/google/firebase/messaging/FirebaseMessaging;Le/a/y/b/g0;Le/a/y/b/f;Le/a/y/b/a;Le/a/y/i/a;Le/a/y/b/u;Le/m/e/k;Le/a/y/b/m;Le/a/p5/a0;Le/a/b0/o/a;)V

    iput-object v15, v13, Le/a/y/a/h/u;->Q:Le/a/y/b/w;

    iput-object v14, v13, Le/a/y/a/h/u;->R:Le/a/y/b/c;

    move-object/from16 v0, p11

    iput-object v0, v13, Le/a/y/a/h/u;->S:Le/m/e/k;

    move-object/from16 v0, p12

    iput-object v0, v13, Le/a/y/a/h/u;->T:Le/a/y/b/h;

    const-string v0, ""

    .line 2
    iput-object v0, v13, Le/a/y/a/h/u;->G:Ljava/lang/String;

    .line 3
    iput-object v0, v13, Le/a/y/a/h/u;->H:Ljava/lang/String;

    move-object/from16 v0, p1

    .line 4
    iput-object v0, v13, Le/a/y/a/h/u;->I:Ls1/w/f;

    .line 5
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    iput-object v0, v13, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, v13, Le/a/y/a/h/u;->L:Z

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/y/a/e/d;->j:Z

    .line 2
    iput-boolean v0, p0, Le/a/y/a/h/u;->N:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/y/a/h/u;->P:Z

    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    invoke-super {p0}, Le/a/y/a/e/d;->B()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/y/a/h/u;->P:Z

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 4
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/e/e;->p8()V

    :cond_0
    return-void
.end method

.method public C(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/y/a/h/u;->N:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/y/a/h/u;->P:Z

    .line 3
    iput-object p1, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    .line 4
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 5
    check-cast v1, Le/a/y/a/h/v;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Le/a/y/a/h/v;->e8()V

    .line 7
    invoke-interface {v1, p1}, Le/a/y/a/h/v;->Z0(Landroid/net/Uri;)V

    .line 8
    sget p1, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_transparent_header:I

    .line 9
    iget-object v2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 10
    sget v3, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {v2, v3}, Le/a/y/b/a;->a(I)I

    move-result v2

    .line 11
    invoke-interface {v1, p1, v2}, Le/a/y/a/e/e;->q5(II)V

    .line 12
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 13
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->flash_round_button_default_v2:I

    invoke-interface {p1, v2}, Le/a/y/b/g0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/y/a/h/v;->W6(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 15
    sget v2, Lcom/truecaller/flashsdk/R$string;->flash_hint_image_caption:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p1, v2, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Le/a/y/a/e/e;->c5(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public F(Le/a/y/a/e/e;)V
    .locals 12

    .line 1
    check-cast p1, Le/a/y/a/h/v;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Le/a/y/a/e/d;->F(Le/a/y/a/e/e;)V

    .line 4
    invoke-interface {p1}, Le/a/y/a/e/e;->H9()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "flash"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/models/QueuedFlash;

    iput-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_c

    .line 6
    iget-object v2, v1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v2, :cond_c

    .line 7
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 8
    new-instance v5, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {v5}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    .line 9
    iput-wide v3, v5, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v6

    .line 11
    iput-object v6, v5, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/Flash;->e()V

    .line 13
    iput-object v5, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    .line 14
    invoke-virtual {p0}, Le/a/y/a/h/u;->L()V

    const/4 v5, 0x1

    const-string v6, "show_overlay"

    .line 15
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 16
    invoke-interface {p1, v0}, Le/a/y/a/h/v;->K9(Z)V

    .line 17
    iget-object v6, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 18
    sget v7, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_secondary_text:I

    invoke-interface {v6, v7}, Le/a/y/b/a;->b(I)I

    move-result v6

    invoke-interface {p1, v6}, Le/a/y/a/h/v;->H7(I)V

    .line 19
    invoke-virtual {p0, v0}, Le/a/y/a/h/u;->Q(Z)V

    .line 20
    iget-object v6, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 21
    check-cast v6, Le/a/y/a/h/v;

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    .line 22
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    .line 23
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->a()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 25
    iget-object v9, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 26
    invoke-interface {v9}, Le/a/y/b/f;->a()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 27
    iget-object v9, p0, Le/a/y/a/h/u;->R:Le/a/y/b/c;

    invoke-interface {v9, v2}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    iget-object v9, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    :goto_0
    iput-object v9, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 29
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 30
    :cond_1
    iget-object v2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 31
    sget v9, Lcom/truecaller/flashsdk/R$string;->red_contacts_permission:I

    new-array v10, v7, [Ljava/lang/Object;

    invoke-interface {v2, v9, v10}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    .line 32
    :cond_2
    :goto_1
    iget-object v2, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 33
    check-cast v2, Le/a/y/a/h/v;

    if-eqz v2, :cond_3

    .line 34
    iget-object v9, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 35
    sget v10, Lcom/truecaller/flashsdk/R$string;->flash_received_from:I

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    if-eqz v10, :cond_7

    invoke-interface {v2, v9, v10}, Le/a/y/a/e/e;->i5(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v8, :cond_5

    .line 36
    invoke-static {v8}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v7

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v5

    :goto_3
    if-nez v2, :cond_6

    .line 37
    invoke-interface {v6, v8}, Le/a/y/a/e/e;->S4(Ljava/lang/String;)V

    goto :goto_4

    .line 38
    :cond_6
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->ic_empty_avatar:I

    invoke-interface {v6, v2}, Le/a/y/a/e/e;->f5(I)V

    .line 39
    :cond_7
    :goto_4
    invoke-virtual {p0, v3, v4}, Le/a/y/a/e/d;->I(J)V

    .line 40
    iget-object v2, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    .line 41
    invoke-interface {p1, v2, v3, v4}, Le/a/y/a/e/e;->R4(Le/a/y/b/z;J)V

    if-eqz v0, :cond_8

    .line 42
    invoke-interface {p1, v5}, Le/a/y/a/h/v;->Z5(Z)V

    .line 43
    invoke-interface {p1, v7}, Le/a/y/a/h/v;->J8(I)V

    goto :goto_5

    .line 44
    :cond_8
    invoke-interface {p1, v7}, Le/a/y/a/h/v;->Z5(Z)V

    :goto_5
    const-wide/32 v2, 0xea60

    long-to-int v0, v2

    .line 45
    invoke-interface {p1, v0}, Le/a/y/a/h/v;->Q6(I)V

    .line 46
    iget-object v0, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_b

    .line 47
    invoke-virtual {p0, v0}, Le/a/y/a/h/u;->N(Lcom/truecaller/flashsdk/models/Flash;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 48
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    iget-object v3, v0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v3, :cond_9

    .line 50
    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    const-string v3, ""

    .line 51
    :goto_6
    iget-object v4, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 52
    invoke-interface {v4}, Le/a/y/b/f;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Le/a/y/a/h/u;->R:Le/a/y/b/c;

    invoke-interface {v4, v3}, Le/a/y/b/c;->a(Ljava/lang/String;)Z

    move-result v7

    .line 53
    :cond_a
    iget-object v4, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v5, "flash.payload"

    .line 54
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v4, v0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v5, "flashMessageId"

    .line 56
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "flashSenderId"

    .line 57
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, v0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    const-string v3, "flashThreadId"

    .line 59
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flashFromPhonebook"

    .line 60
    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    iget-object v0, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    const-string v3, "FlashReceived"

    invoke-interface {v0, v3, v2}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 62
    :cond_b
    invoke-interface {p1, v1}, Le/a/y/a/h/v;->U7(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    :cond_c
    return-void
.end method

.method public G(Le/a/y/e/i;)V
    .locals 4

    const-string v0, "emoticon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v1, v2}, Le/a/y/i/a;->b(I)V

    .line 4
    new-instance v1, Lcom/truecaller/flashsdk/models/Payload;

    .line 5
    iget-object p1, p1, Le/a/y/e/i;->a:Ljava/lang/String;

    const-string v2, "emoji"

    const/4 v3, 0x0

    .line 6
    invoke-direct {v1, v2, p1, v3, v3}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 7
    iput-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 8
    invoke-virtual {p0}, Le/a/y/a/h/u;->R()V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Le/a/y/i/a;->b(I)V

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 4
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, v1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    iget-object v3, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 10
    invoke-interface {v3}, Le/a/y/b/f;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    iget-object v3, p0, Le/a/y/a/h/u;->R:Le/a/y/b/c;

    invoke-interface {v3, v1}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v1, "name"

    .line 13
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v3, 0x2

    const-string v4, " "

    invoke-static {v2, v4, v1, v3}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 15
    :goto_0
    invoke-interface {v0, v1}, Le/a/y/a/h/v;->L6(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final L()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    .line 2
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 4
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Le/a/y/a/h/v;->v6()V

    .line 6
    invoke-interface {v0}, Le/a/y/a/h/v;->ba()V

    .line 7
    sget v1, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_header:I

    .line 8
    iget-object v2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 9
    sget v3, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_text:I

    invoke-interface {v2, v3}, Le/a/y/b/a;->b(I)I

    move-result v2

    .line 10
    invoke-interface {v0, v1, v2}, Le/a/y/a/e/e;->q5(II)V

    .line 11
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 12
    sget v2, Lcom/truecaller/flashsdk/R$drawable;->bg_solid_white_rad_24dp:I

    invoke-interface {v1, v2}, Le/a/y/b/g0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/y/a/h/v;->W6(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 14
    sget v2, Lcom/truecaller/flashsdk/R$string;->type_a_flash:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/y/a/e/e;->c5(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final M(Lcom/truecaller/flashsdk/models/ReplyActionsItem;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_4

    .line 3
    iget-object v1, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v1, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/ReplyActionsItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x6854fdf

    if-eq v3, v4, :cond_1

    const v4, 0x258156e6

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "deeplink"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/ReplyActionsItem;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/y/a/h/v;->r6(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "share"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 8
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Le/a/y/a/h/v;->s7()V

    const-string v0, "FlashShareImage"

    const-string v2, "shareImage"

    .line 10
    invoke-virtual {p0, v0, v2}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string v0, "busy"

    goto :goto_2

    :cond_3
    :goto_1
    const-string v0, "custom_flash"

    .line 11
    :goto_2
    new-instance v2, Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/ReplyActionsItem;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4, v4}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 12
    iput-object v2, v1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 13
    invoke-virtual {p0}, Le/a/y/a/h/u;->R()V

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/ReplyActionsItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlashCustomButtonClicked"

    invoke-virtual {p0, v0, p1}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public final N(Lcom/truecaller/flashsdk/models/Flash;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0, v0}, Le/a/y/a/h/u;->N(Lcom/truecaller/flashsdk/models/Flash;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 7
    :goto_0
    iget-object v3, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 8
    invoke-interface {v3}, Le/a/y/b/f;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Le/a/y/a/h/u;->R:Le/a/y/b/c;

    invoke-interface {v3, v2}, Le/a/y/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_1
    iget-object v3, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v4, "flashCopy.payload"

    .line 10
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v3, v0, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v4, "flashMessageId"

    .line 12
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v3, v0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    const-string v4, "flashSenderId"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, v0, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    const-string v3, "flashThreadId"

    .line 16
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flashFromPhonebook"

    .line 17
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "FlashMissed"

    .line 18
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "flashMissed"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "flashActionName"

    .line 19
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    invoke-interface {p2, p1, v1}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz p1, :cond_6

    .line 2
    invoke-virtual {p0, p1}, Le/a/y/a/h/u;->N(Lcom/truecaller/flashsdk/models/Flash;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, v1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 7
    :goto_0
    iget-object v2, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 8
    invoke-interface {v2}, Le/a/y/b/f;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/a/y/a/h/u;->R:Le/a/y/b/c;

    invoke-interface {v2, v1}, Le/a/y/b/c;->a(Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const/4 v4, 0x0

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move-object v5, v4

    goto :goto_2

    .line 10
    :cond_3
    iget-object v5, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v5}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string v6, "type"

    .line 12
    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "flashReceiverId"

    .line 13
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flashContext"

    const-string v5, "reply"

    .line 14
    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "flashFromPhonebook"

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v2, "flashMessageId"

    .line 17
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_4

    .line 19
    iget-object v4, v1, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    :cond_4
    const-string v1, "flashReplyId"

    .line 20
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    const-string v2, "flashThreadId"

    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-boolean v1, p0, Le/a/y/a/e/d;->k:Z

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flashFromHistory"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p1, "0"

    :goto_3
    const-string v1, "historyLength"

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    const-string v1, "FlashReplied"

    invoke-interface {p1, v1, v0}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 28
    iput-boolean v3, p0, Le/a/y/a/e/d;->k:Z

    :cond_6
    return-void
.end method

.method public final Q(Z)V
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_1e

    .line 3
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_1e

    .line 4
    iget-object v1, v1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz v1, :cond_1e

    .line 5
    invoke-interface {v0}, Le/a/y/a/h/v;->N6()V

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "emoji"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, -0x1000000

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 8
    sget v3, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_text:I

    invoke-interface {v2, v3}, Le/a/y/b/a;->b(I)I

    move-result v2

    .line 9
    :goto_0
    invoke-interface {v0, v2}, Le/a/y/a/h/v;->b6(I)V

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 11
    iget-object v4, p0, Le/a/y/a/h/u;->S:Le/m/e/k;

    const-class v5, Lcom/truecaller/flashsdk/models/FlashExtras;

    .line 12
    invoke-virtual {v4, v2, v5}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    invoke-static {v5}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 14
    check-cast v2, Lcom/truecaller/flashsdk/models/FlashExtras;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/FlashExtras;->getReplyActions()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iput-object v2, p0, Le/a/y/a/h/u;->K:Ljava/util/List;

    .line 15
    :cond_2
    iget-object v2, p0, Le/a/y/a/h/u;->K:Ljava/util/List;

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x3

    const/4 v8, 0x0

    if-eqz v2, :cond_6

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    long-to-int v6, v6

    const/16 v7, 0xa

    if-ne v9, v6, :cond_4

    .line 17
    iget-object v4, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 18
    check-cast v4, Le/a/y/a/h/v;

    if-eqz v4, :cond_9

    .line 19
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 21
    check-cast v6, Lcom/truecaller/flashsdk/models/ReplyActionsItem;

    .line 22
    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/ReplyActionsItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-interface {v4, v5}, Le/a/y/a/h/v;->A6(Ljava/util/List;)V

    goto/16 :goto_4

    .line 23
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    long-to-int v4, v4

    if-ne v6, v4, :cond_9

    .line 24
    iget-object v4, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 25
    check-cast v4, Le/a/y/a/h/v;

    if-eqz v4, :cond_9

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 28
    check-cast v6, Lcom/truecaller/flashsdk/models/ReplyActionsItem;

    .line 29
    invoke-virtual {v6}, Lcom/truecaller/flashsdk/models/ReplyActionsItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v4, v5}, Le/a/y/a/h/v;->R6(Ljava/util/List;)V

    goto :goto_4

    .line 30
    :cond_6
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->d()Ljava/util/List;

    move-result-object v2

    const-string v9, "payload.responses"

    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    long-to-int v6, v6

    if-ne v2, v6, :cond_7

    .line 31
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/y/a/h/v;->A6(Ljava/util/List;)V

    goto :goto_4

    .line 32
    :cond_7
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->d()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    long-to-int v4, v4

    if-ne v2, v4, :cond_8

    .line 33
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->d()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Le/a/y/a/h/v;->R6(Ljava/util/List;)V

    goto :goto_4

    .line 34
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iget-object v4, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 36
    sget v5, Lcom/truecaller/flashsdk/R$string;->sfc_yes:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v4, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 38
    sget v5, Lcom/truecaller/flashsdk/R$string;->sfc_ok:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v4, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 40
    sget v5, Lcom/truecaller/flashsdk/R$string;->sfc_no:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {v0, v2}, Le/a/y/a/h/v;->A6(Ljava/util/List;)V

    .line 42
    :cond_9
    :goto_4
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_b

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    move v2, v8

    goto :goto_6

    :cond_b
    :goto_5
    move v2, v4

    :goto_6
    const-string v5, "payload.message"

    const-string v6, "location"

    const v7, 0x714f9fb5

    if-nez v2, :cond_18

    .line 43
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v9, 0x5faa95b

    if-eq v2, v9, :cond_10

    const v9, 0x6b0147b

    if-eq v2, v9, :cond_e

    if-eq v2, v7, :cond_d

    goto/16 :goto_b

    .line 44
    :cond_d
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0, v1, v8}, Le/a/y/a/h/u;->S(Lcom/truecaller/flashsdk/models/Payload;Z)V

    goto/16 :goto_b

    :cond_e
    const-string v2, "video"

    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 46
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    const-string v1, ""

    :goto_7
    const-string v2, "videoUrl"

    .line 48
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Le/a/y/a/e/e;->d5(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_10
    const-string v2, "image"

    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 50
    iget-object p1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v2, "featureShareImageInFlash"

    .line 51
    invoke-interface {p1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 52
    iget-object p1, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 53
    sget v9, Lcom/truecaller/flashsdk/R$attr;->theme_reply_button_with_attachment_text_color:I

    invoke-interface {p1, v9}, Le/a/y/b/a;->b(I)I

    move-result p1

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->s6(I)V

    .line 54
    sget p1, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_transparent_header:I

    .line 55
    iget-object v9, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 56
    sget v10, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {v9, v10}, Le/a/y/b/a;->a(I)I

    move-result v9

    .line 57
    invoke-interface {v0, p1, v9}, Le/a/y/a/e/e;->q5(II)V

    .line 58
    invoke-interface {v0}, Le/a/y/a/h/v;->o6()V

    .line 59
    :cond_11
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 60
    check-cast p1, Le/a/y/a/h/v;

    if-eqz p1, :cond_19

    .line 61
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v0

    const-string v9, "payload.attachment"

    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ls1/f0/h;

    const-string v11, ","

    invoke-direct {v10, v11}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v8}, Ls1/f0/h;->f(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_14

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v0, v10}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v10

    .line 64
    :cond_12
    invoke-interface {v10}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 65
    invoke-interface {v10}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 66
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_13

    move v11, v4

    goto :goto_8

    :cond_13
    move v11, v8

    :goto_8
    if-nez v11, :cond_12

    .line 67
    invoke-interface {v10}, Ljava/util/ListIterator;->nextIndex()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v0, v10}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_9

    .line 68
    :cond_14
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :goto_9
    new-array v10, v8, [Ljava/lang/String;

    .line 69
    invoke-interface {v0, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v10, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    check-cast v0, [Ljava/lang/String;

    .line 71
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, p0, Le/a/y/a/h/u;->H:Ljava/lang/String;

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    .line 72
    iget-object v11, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 73
    sget v12, Lcom/truecaller/flashsdk/R$string;->sfc_yes:I

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    .line 74
    iget-object v11, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 75
    sget v12, Lcom/truecaller/flashsdk/R$string;->sfc_no:I

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    .line 76
    iget-object v11, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 77
    sget v12, Lcom/truecaller/flashsdk/R$string;->sfc_share:I

    new-array v13, v8, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 78
    invoke-static {v10}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 79
    array-length v11, v0

    if-ne v11, v12, :cond_16

    .line 80
    aget-object v1, v0, v8

    iput-object v1, p0, Le/a/y/a/h/u;->G:Ljava/lang/String;

    .line 81
    aget-object v0, v0, v4

    .line 82
    iget-object v1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    .line 83
    invoke-interface {v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 84
    iget-object v1, p0, Le/a/y/a/h/u;->G:Ljava/lang/String;

    iget-object v2, p0, Le/a/y/a/h/u;->H:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Le/a/y/a/h/v;->ia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 85
    :cond_15
    iget-object v1, p0, Le/a/y/a/h/u;->G:Ljava/lang/String;

    iget-object v2, p0, Le/a/y/a/h/u;->H:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v0}, Le/a/y/a/h/v;->r9(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 86
    :cond_16
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/y/a/h/u;->G:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    .line 88
    invoke-interface {v0, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 89
    iget-object v0, p0, Le/a/y/a/h/u;->G:Ljava/lang/String;

    iget-object v1, p0, Le/a/y/a/h/u;->H:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Le/a/y/a/e/e;->n5(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 90
    :cond_17
    iget-object v0, p0, Le/a/y/a/h/u;->G:Ljava/lang/String;

    iget-object v1, p0, Le/a/y/a/h/u;->H:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Le/a/y/a/e/e;->O4(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_a
    invoke-static {v10}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/y/a/h/v;->A6(Ljava/util/List;)V

    goto :goto_b

    .line 92
    :cond_18
    invoke-virtual {p0, v1, p1}, Le/a/y/a/h/u;->T(Lcom/truecaller/flashsdk/models/Payload;Z)V

    .line 93
    :cond_19
    :goto_b
    iget-object p1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p1, :cond_1a

    .line 94
    iget-object v3, p1, Lcom/truecaller/flashsdk/models/QueuedFlash;->l:Lcom/truecaller/flashsdk/models/Payload;

    :cond_1a
    if-eqz v3, :cond_1e

    if-eqz p1, :cond_1e

    .line 95
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/QueuedFlash;->l:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz p1, :cond_1e

    .line 96
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 97
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_1e

    .line 98
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_c

    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x36452d

    if-eq v2, v3, :cond_1d

    if-eq v2, v7, :cond_1c

    goto :goto_c

    .line 99
    :cond_1c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1, v4}, Le/a/y/a/h/u;->S(Lcom/truecaller/flashsdk/models/Payload;Z)V

    goto :goto_c

    :cond_1d
    const-string v2, "text"

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->B6(Ljava/lang/String;)V

    :cond_1e
    :goto_c
    return-void
.end method

.method public final R()V
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_a

    .line 3
    iget-object v1, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v1, :cond_a

    .line 4
    iget-object v2, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 5
    invoke-interface {v2}, Le/a/y/b/f;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 6
    iget-object v0, v1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v2, "payload"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "emoji"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-array v2, v5, [Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object v0, v2, v4

    const-string v0, "%s %s"

    const-string v6, "java.lang.String.format(format, *args)"

    invoke-static {v2, v5, v0, v6}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    :goto_1
    iput-object v0, v1, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 13
    iput-boolean v4, p0, Le/a/y/a/h/u;->A:Z

    .line 14
    iget-object v0, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_a

    .line 15
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 16
    check-cast v1, Le/a/y/a/h/v;

    if-eqz v1, :cond_a

    .line 17
    iget-object v2, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v6, "featureShareImageInFlash"

    .line 18
    invoke-interface {v2, v6}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 19
    iget-boolean v6, p0, Le/a/y/a/h/u;->N:Z

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 20
    iget-object v2, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    if-eqz v2, :cond_a

    .line 21
    iget-object v4, p0, Le/a/y/a/h/u;->O:Lcom/truecaller/flashsdk/models/ImageFlash;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance v4, Lcom/truecaller/flashsdk/models/ImageFlash;

    invoke-direct {v4}, Lcom/truecaller/flashsdk/models/ImageFlash;-><init>()V

    .line 22
    invoke-virtual {v4, v0}, Lcom/truecaller/flashsdk/models/ImageFlash;->g(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 23
    iput-object v2, v4, Lcom/truecaller/flashsdk/models/ImageFlash;->i:Landroid/net/Uri;

    const-string v0, "reply"

    .line 24
    iput-object v0, v4, Lcom/truecaller/flashsdk/models/ImageFlash;->m:Ljava/lang/String;

    .line 25
    :goto_2
    invoke-interface {v1, v4}, Le/a/y/a/h/v;->V5(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 26
    invoke-interface {v1}, Le/a/y/a/e/e;->T4()V

    .line 27
    iget-object v0, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 28
    sget v2, Lcom/truecaller/flashsdk/R$string;->flash_uploading_media:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Le/a/y/a/e/e;->J7(Ljava/lang/String;Z)V

    goto/16 :goto_5

    :cond_3
    if-eqz v2, :cond_8

    .line 29
    iget-boolean v1, p0, Le/a/y/a/h/u;->P:Z

    if-eqz v1, :cond_8

    .line 30
    iget-object v1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v2, ","

    .line 31
    invoke-static {v2, v1, v3}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 34
    :cond_4
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 35
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 36
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    move v6, v4

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    if-nez v6, :cond_4

    .line 37
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 38
    :cond_6
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_4
    new-array v2, v3, [Ljava/lang/String;

    .line 39
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    check-cast v1, [Ljava/lang/String;

    .line 41
    array-length v2, v1

    if-ge v2, v5, :cond_7

    goto :goto_5

    .line 42
    :cond_7
    new-instance v2, Lcom/truecaller/flashsdk/models/FlashExtras;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 43
    new-instance v9, Lcom/truecaller/flashsdk/models/FlashLocationExtras;

    .line 44
    iget-object v5, p0, Le/a/y/a/e/d;->c:Ljava/lang/String;

    .line 45
    aget-object v6, v1, v3

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 46
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 47
    iget-object v4, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v12, "replyFlashCopy.payload"

    .line 48
    invoke-static {v4, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-direct {v9, v5, v6, v1, v4}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, v2

    .line 50
    invoke-direct/range {v6 .. v11}, Lcom/truecaller/flashsdk/models/FlashExtras;-><init>(Ljava/util/List;Lcom/truecaller/flashsdk/models/FlashImageEntity;Lcom/truecaller/flashsdk/models/FlashLocationExtras;ILs1/z/c/f;)V

    .line 51
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 52
    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Le/a/y/a/h/u;->S:Le/m/e/k;

    invoke-virtual {v4, v2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/truecaller/flashsdk/models/Payload;->g(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Le/a/y/a/h/u;->B()V

    .line 54
    iput-boolean v3, p0, Le/a/y/a/h/u;->P:Z

    .line 55
    :cond_8
    iget-object v1, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    invoke-interface {v1, v0}, Le/a/y/c/b;->G(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 56
    invoke-virtual {p0}, Le/a/y/a/h/u;->U()V

    goto :goto_5

    .line 57
    :cond_9
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 58
    sget v2, Lcom/truecaller/flashsdk/R$string;->no_internet:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_a
    :goto_5
    return-void
.end method

.method public final S(Lcom/truecaller/flashsdk/models/Payload;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    .line 2
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 4
    check-cast v1, Le/a/y/a/h/v;

    if-eqz v1, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "payload.attachment"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ls1/f0/h;

    const-string v4, ","

    invoke-direct {v3, v4}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ls1/f0/h;->f(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 8
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-nez v6, :cond_0

    .line 11
    invoke-interface {v3}, Ljava/util/ListIterator;->nextIndex()I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 12
    :cond_2
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    new-array v3, v4, [Ljava/lang/String;

    .line 13
    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    check-cast v2, [Ljava/lang/String;

    .line 15
    array-length v3, v2

    const/4 v6, 0x2

    if-ge v3, v6, :cond_3

    return-void

    .line 16
    :cond_3
    iget-object v3, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 17
    sget v7, Lcom/truecaller/flashsdk/R$string;->map_url:I

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v2, v4

    aput-object v9, v8, v4

    aget-object v9, v2, v5

    aput-object v9, v8, v5

    aget-object v9, v2, v4

    aput-object v9, v8, v6

    const/4 v9, 0x3

    aget-object v10, v2, v5

    aput-object v10, v8, v9

    invoke-interface {v3, v7, v8}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "payload.message"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object v7, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 21
    sget v8, Lcom/truecaller/flashsdk/R$string;->i_am_here:I

    new-array v9, v4, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-eqz p2, :cond_5

    .line 22
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 23
    sget p2, Lcom/truecaller/flashsdk/R$string;->lat_long:I

    new-array v0, v6, [Ljava/lang/Object;

    aget-object v6, v2, v4

    aput-object v6, v0, v4

    aget-object v2, v2, v5

    aput-object v2, v0, v5

    invoke-interface {p1, p2, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    iput-object p1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    .line 25
    invoke-interface {v1, v3, v7}, Le/a/y/a/h/v;->z7(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_5
    if-eqz v0, :cond_8

    const/4 p2, 0x0

    .line 26
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 27
    iget-object p2, p0, Le/a/y/a/h/u;->S:Le/m/e/k;

    const-class v0, Lcom/truecaller/flashsdk/models/FlashExtras;

    .line 28
    invoke-virtual {p2, p1, v0}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    invoke-static {v0}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 30
    check-cast p1, Lcom/truecaller/flashsdk/models/FlashExtras;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/FlashExtras;->getLocation()Lcom/truecaller/flashsdk/models/FlashLocationExtras;

    move-result-object p2

    :cond_6
    if-eqz p2, :cond_7

    .line 31
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;->getLat()Ljava/lang/Double;

    .line 32
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;->getLong()Ljava/lang/Double;

    .line 33
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;->getLocation_text()Ljava/lang/String;

    move-result-object p1

    .line 34
    iput-object p1, p0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 36
    iput-object p1, p0, Le/a/y/a/e/d;->c:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 38
    sget v0, Lcom/truecaller/flashsdk/R$string;->lat_long:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;->getLat()Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;->getLong()Ljava/lang/Double;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-interface {p1, v0, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iput-object p1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    goto :goto_3

    .line 40
    :cond_7
    aget-object p1, v2, v4

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 41
    aget-object p1, v2, v5

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 42
    iput-object v7, p0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    .line 43
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 44
    sget p2, Lcom/truecaller/flashsdk/R$string;->lat_long:I

    new-array v0, v6, [Ljava/lang/Object;

    aget-object v3, v2, v4

    aput-object v3, v0, v4

    aget-object v2, v2, v5

    aput-object v2, v0, v5

    invoke-interface {p1, p2, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iput-object p1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    .line 46
    :goto_3
    invoke-interface {v1}, Le/a/y/a/e/e;->m9()V

    .line 47
    iget-object p1, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 48
    sget p2, Lcom/truecaller/flashsdk/R$attr;->theme_reply_button_with_attachment_text_color:I

    invoke-interface {p1, p2}, Le/a/y/b/a;->b(I)I

    move-result p1

    invoke-interface {v1, p1}, Le/a/y/a/h/v;->s6(I)V

    .line 49
    sget p1, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_transparent_header:I

    .line 50
    iget-object p2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 51
    sget v0, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {p2, v0}, Le/a/y/b/a;->a(I)I

    move-result p2

    .line 52
    invoke-interface {v1, p1, p2}, Le/a/y/a/e/e;->q5(II)V

    .line 53
    invoke-interface {v1}, Le/a/y/a/h/v;->M6()V

    goto :goto_4

    .line 54
    :cond_8
    invoke-interface {v1, v3, v7}, Le/a/y/a/h/v;->Q9(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method

.method public final T(Lcom/truecaller/flashsdk/models/Payload;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 4
    invoke-interface {v1, p1}, Le/a/y/b/g0;->d(Lcom/truecaller/flashsdk/models/Payload;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "call_me_back"

    invoke-static {v3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 7
    sget v2, Lcom/truecaller/flashsdk/R$string;->CallMeBackFlashMessage:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v2}, Le/a/y/a/h/v;->a6(Z)V

    .line 9
    invoke-interface {v0, v2}, Le/a/y/a/h/v;->c7(Z)V

    .line 10
    :goto_0
    invoke-interface {v0, v1}, Le/a/y/a/h/v;->J6(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object p1

    const-string p2, "emoji"

    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Le/a/y/a/g/f/c;

    invoke-direct {p1}, Le/a/y/a/g/f/c;-><init>()V

    .line 13
    invoke-virtual {p1, v1}, Le/a/y/a/g/f/c;->a(Ljava/lang/String;)Le/a/y/a/g/f/e$a;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    instance-of p2, p1, Le/a/y/a/g/f/a;

    if-eqz p2, :cond_1

    .line 15
    iget-object p2, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 16
    check-cast p2, Le/a/y/a/h/v;

    if-eqz p2, :cond_2

    check-cast p1, Le/a/y/a/g/f/a;

    invoke-interface {p2, p1}, Le/a/y/a/h/v;->q6(Le/a/y/a/g/f/a;)V

    goto :goto_1

    .line 17
    :cond_1
    instance-of p2, p1, Le/a/y/a/g/f/g;

    if-eqz p2, :cond_2

    .line 18
    iget-object p2, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 19
    check-cast p2, Le/a/y/a/h/v;

    if-eqz p2, :cond_2

    check-cast p1, Le/a/y/a/g/f/g;

    invoke-interface {p2, p1}, Le/a/y/a/h/v;->h6(Le/a/y/a/g/f/g;)V

    .line 20
    :cond_2
    :goto_1
    iget-object p1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string p2, "featureShareImageInFlash"

    .line 21
    invoke-interface {p1, p2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 23
    sget p2, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_text:I

    invoke-interface {p1, p2}, Le/a/y/b/a;->b(I)I

    move-result p1

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->s6(I)V

    .line 24
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 25
    sget p2, Lcom/truecaller/flashsdk/R$drawable;->reply_button_bg_selector:I

    invoke-interface {p1, p2}, Le/a/y/b/g0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->oa(Landroid/graphics/drawable/Drawable;)V

    .line 26
    invoke-interface {v0}, Le/a/y/a/h/v;->c6()V

    :cond_3
    return-void
.end method

.method public T0(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_8

    .line 3
    iget-object p1, p0, Le/a/y/a/h/u;->G:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move p1, v1

    goto :goto_3

    :cond_3
    :goto_2
    move p1, v2

    :goto_3
    if-eqz p1, :cond_7

    iget-object p1, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    if-nez p1, :cond_7

    .line 4
    iget-object p1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 5
    iget-object p1, p0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 6
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move p1, v1

    goto :goto_5

    :cond_5
    :goto_4
    move p1, v2

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    move p1, v1

    goto :goto_7

    :cond_7
    :goto_6
    move p1, v2

    :goto_7
    if-eqz p1, :cond_9

    :cond_8
    move v1, v2

    .line 7
    :cond_9
    invoke-interface {v0, v1}, Le/a/y/a/e/e;->A0(Z)V

    :cond_a
    return-void
.end method

.method public final U()V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v1, Le/a/y/a/h/v;

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v3, "featureShareImageInFlash"

    .line 5
    invoke-interface {v2, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 6
    iput-boolean v4, p0, Le/a/y/a/h/u;->N:Z

    .line 7
    iput-object v5, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    .line 8
    invoke-interface {v1}, Le/a/y/a/h/v;->z0()V

    .line 9
    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_header:I

    .line 10
    iget-object v6, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 11
    sget v7, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_text:I

    invoke-interface {v6, v7}, Le/a/y/b/a;->b(I)I

    move-result v6

    .line 12
    invoke-interface {v1, v2, v6}, Le/a/y/a/e/e;->q5(II)V

    .line 13
    :cond_0
    invoke-virtual {p0, v5}, Le/a/y/a/h/u;->P(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 14
    iput-boolean v2, p0, Le/a/y/a/h/u;->F:Z

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 16
    iget-boolean v5, p0, Le/a/y/a/h/u;->F:Z

    if-eqz v5, :cond_1

    const-string v5, "waiting"

    goto :goto_0

    :cond_1
    const-string v5, "reply"

    :goto_0
    const-string v6, "flashContext"

    .line 17
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v5, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    const-string v6, "FlashCloseWaiting"

    invoke-interface {v5, v6, v2}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "replyFlashCopy.history"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/y/a/e/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    iget-object v2, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v2, :cond_2

    .line 21
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v2, :cond_2

    .line 22
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v2, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 23
    invoke-interface {v1, v0, v5, v6, v2}, Le/a/y/a/h/v;->k6(Ljava/lang/String;JLjava/lang/String;)V

    .line 24
    iget-object v0, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    .line 25
    iget-object v2, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v2, :cond_2

    .line 26
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v5, v6}, Le/a/y/b/z;->d(J)V

    .line 28
    iget-object v0, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_2

    invoke-interface {v1, v0}, Le/a/y/a/h/v;->Y5(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 29
    iget-object v0, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 30
    sget v2, Lcom/truecaller/flashsdk/R$string;->flash_sent_to:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v2, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-interface {v1, v0, v2}, Le/a/y/a/e/e;->i5(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_2

    .line 32
    iget-object v0, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz v0, :cond_2

    .line 33
    iget-object v1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    .line 34
    invoke-interface {v1, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 36
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/a/h/v;->F6()V

    :cond_2
    return-void
.end method

.method public W0()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/y/a/e/d;->W0()V

    .line 2
    iget-boolean v0, p0, Le/a/y/a/h/u;->A:Z

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 4
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/y/a/h/v;->S7(Lcom/truecaller/flashsdk/models/Flash;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    .line 7
    iput-object v0, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Le/a/y/a/h/u;->y:Z

    .line 9
    iput-object v0, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Le/a/y/a/e/d;->c:Ljava/lang/String;

    .line 11
    iput v1, p0, Le/a/y/a/h/u;->z:I

    .line 12
    iput-boolean v1, p0, Le/a/y/a/h/u;->A:Z

    .line 13
    iput-object v0, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    .line 14
    iput-boolean v1, p0, Le/a/y/a/h/u;->C:Z

    .line 15
    iput-boolean v1, p0, Le/a/y/a/h/u;->D:Z

    .line 16
    iput-boolean v1, p0, Le/a/y/a/h/u;->E:Z

    .line 17
    iput-boolean v1, p0, Le/a/y/a/h/u;->P:Z

    .line 18
    iput-object v0, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "(imageFlashDraft as Flash).payload.message"

    const-string v4, "(imageFlashDraft as Flash).payload"

    const-string v5, "null cannot be cast to non-null type com.truecaller.flashsdk.models.Flash"

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "state_flash_failed"

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 5
    iput-object p2, p0, Le/a/y/a/h/u;->O:Lcom/truecaller/flashsdk/models/ImageFlash;

    .line 6
    invoke-static {p2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iget-object p1, p2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 8
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Le/a/y/a/e/e;->J7(Ljava/lang/String;Z)V

    .line 9
    invoke-interface {v0}, Le/a/y/a/e/e;->M4()V

    .line 10
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 11
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_sending_failed:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :sswitch_1
    const-string v1, "state_uploading_failed"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 13
    iput-object p2, p0, Le/a/y/a/h/u;->O:Lcom/truecaller/flashsdk/models/ImageFlash;

    .line 14
    invoke-static {p2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iget-object p1, p2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 16
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Le/a/y/a/e/e;->J7(Ljava/lang/String;Z)V

    .line 17
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 18
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_sending_failed:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    .line 19
    invoke-interface {v0}, Le/a/y/a/e/e;->p5()V

    goto :goto_0

    :cond_2
    return-void

    :sswitch_2
    const-string p2, "state_flash_sent"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 22
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_sent:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v6}, Le/a/y/a/e/e;->J7(Ljava/lang/String;Z)V

    .line 23
    invoke-interface {v0}, Le/a/y/a/e/e;->U9()V

    .line 24
    invoke-virtual {p0}, Le/a/y/a/h/u;->U()V

    goto :goto_0

    :sswitch_3
    const-string p2, "state_uploaded"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 27
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_sending_flash:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v6}, Le/a/y/a/e/e;->J7(Ljava/lang/String;Z)V

    .line 28
    invoke-interface {v0}, Le/a/y/a/e/e;->T7()V

    :cond_3
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x507761b2 -> :sswitch_3
        -0x48e7350b -> :sswitch_2
        -0x32a9d617 -> :sswitch_1
        0x3da82c5a -> :sswitch_0
    .end sparse-switch
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Le/a/y/a/h/v;->u6()V

    .line 4
    iget-boolean v1, p0, Le/a/y/a/h/u;->A:Z

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/y/a/h/v;->S7(Lcom/truecaller/flashsdk/models/Flash;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Le/a/y/a/h/u;->N:Z

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    :cond_2
    return-void
.end method

.method public e()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 2
    sget v1, Lcom/truecaller/flashsdk/R$string;->sfc_busy:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "busy"

    const-string v1, "tag"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 5
    new-instance v4, Lcom/truecaller/flashsdk/models/Payload;

    .line 6
    iget-object v5, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 7
    sget v6, Lcom/truecaller/flashsdk/R$string;->is_busy:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v5, v6, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v5, v5}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 9
    iput-object v4, v1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v0, "final"

    .line 10
    iput-object v0, v1, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    invoke-interface {v0, v1}, Le/a/y/c/b;->G(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 12
    iput-boolean v3, p0, Le/a/y/a/h/u;->A:Z

    .line 13
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 14
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Le/a/y/a/h/v;->Y5(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 15
    :cond_0
    invoke-virtual {p0, v5}, Le/a/y/a/h/u;->P(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 17
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Le/a/y/a/h/u$a;

    invoke-direct {v1, p0}, Le/a/y/a/h/u$a;-><init>(Le/a/y/a/h/u;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public e1(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 3
    sget v2, Lcom/truecaller/flashsdk/R$id;->action_block_contact:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    .line 4
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 5
    sget v1, Lcom/truecaller/flashsdk/R$color;->truecolor:I

    invoke-interface {p1, v1}, Le/a/y/b/g0;->a(I)I

    move-result p1

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->S6(I)V

    return v3

    .line 6
    :cond_0
    sget v2, Lcom/truecaller/flashsdk/R$id;->action_view_profile:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {p0}, Le/a/y/a/h/u;->l1()V

    return v3

    .line 8
    :cond_1
    sget v2, Lcom/truecaller/flashsdk/R$id;->action_phone_call:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_4

    .line 9
    iget-object p1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 12
    iget-object v2, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v2, :cond_3

    .line 13
    iget-object v5, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 14
    invoke-interface {v5}, Le/a/y/b/f;->d()Z

    move-result v5

    if-nez v5, :cond_2

    .line 15
    new-instance v5, Landroid/content/Intent;

    .line 16
    iget-object v6, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 17
    sget v7, Lcom/truecaller/flashsdk/R$string;->tel_num:I

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v1

    invoke-interface {v6, v7, v8}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v6, "android.intent.action.VIEW"

    .line 18
    invoke-direct {v5, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 19
    invoke-interface {v0, v5}, Le/a/y/a/h/v;->j6(Landroid/content/Intent;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object v6, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 22
    sget v7, Lcom/truecaller/flashsdk/R$string;->tel_num:I

    new-array v8, v3, [Ljava/lang/Object;

    aput-object p1, v8, v1

    invoke-interface {v6, v7, v8}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 23
    invoke-interface {v0, v5}, Le/a/y/a/h/v;->j6(Landroid/content/Intent;)V

    .line 24
    :goto_0
    new-instance p1, Lcom/truecaller/flashsdk/models/Payload;

    .line 25
    iget-object v5, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 26
    sget v6, Lcom/truecaller/flashsdk/R$string;->calling_you_back:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v5, v6, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "call"

    .line 27
    invoke-direct {p1, v5, v1, v4, v4}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 28
    iput-object p1, v2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string p1, "final"

    .line 29
    iput-object p1, v2, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 31
    iget-object p1, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    invoke-interface {p1, v2}, Le/a/y/c/b;->G(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 32
    invoke-virtual {p0, v4}, Le/a/y/a/h/u;->P(Ljava/lang/String;)V

    .line 33
    iput-boolean v3, p0, Le/a/y/a/h/u;->A:Z

    .line 34
    iget-object p1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p1, :cond_3

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->Y5(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 35
    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    :cond_3
    return v3

    :cond_4
    const v2, 0x102002c

    if-ne p1, v2, :cond_b

    .line 36
    iget-boolean p1, p0, Le/a/y/a/h/u;->N:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    if-eqz p1, :cond_6

    .line 37
    iput-object v4, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    .line 38
    iput-boolean v1, p0, Le/a/y/a/h/u;->N:Z

    if-eqz v0, :cond_5

    .line 39
    invoke-interface {v0}, Le/a/y/a/h/v;->T6()V

    .line 40
    :cond_5
    invoke-virtual {p0}, Le/a/y/a/h/u;->L()V

    .line 41
    invoke-virtual {p0, v1}, Le/a/y/a/h/u;->Q(Z)V

    goto :goto_3

    .line 42
    :cond_6
    iget-boolean p1, p0, Le/a/y/a/h/u;->P:Z

    if-eqz p1, :cond_9

    .line 43
    iget-object p1, p0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 44
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move p1, v1

    goto :goto_2

    :cond_8
    :goto_1
    move p1, v3

    :goto_2
    if-eqz p1, :cond_9

    .line 45
    iput-boolean v1, p0, Le/a/y/a/h/u;->P:Z

    .line 46
    invoke-virtual {p0}, Le/a/y/a/h/u;->B()V

    .line 47
    invoke-virtual {p0}, Le/a/y/a/h/u;->L()V

    .line 48
    invoke-virtual {p0, v1}, Le/a/y/a/h/u;->Q(Z)V

    goto :goto_3

    .line 49
    :cond_9
    iget-boolean p1, p0, Le/a/y/a/h/u;->A:Z

    if-nez p1, :cond_a

    const-string p1, "FlashClose"

    const-string v1, "close"

    .line 50
    invoke-virtual {p0, p1, v1}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    goto :goto_3

    .line 52
    :cond_a
    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    :goto_3
    return v3

    .line 53
    :cond_b
    sget v2, Lcom/truecaller/flashsdk/R$id;->about:I

    if-ne p1, v2, :cond_c

    .line 54
    iput-boolean v3, p0, Le/a/y/a/h/u;->C:Z

    .line 55
    iget-object p1, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    const/16 v1, 0x8

    .line 56
    invoke-virtual {p1, v1}, Le/a/y/i/a;->b(I)V

    .line 57
    invoke-interface {v0}, Le/a/y/a/e/e;->e9()V

    return v3

    .line 58
    :cond_c
    sget v2, Lcom/truecaller/flashsdk/R$id;->action_download:I

    if-ne p1, v2, :cond_10

    .line 59
    iget-object p1, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 60
    invoke-interface {p1}, Le/a/y/b/f;->g()Z

    move-result p1

    if-nez p1, :cond_e

    .line 61
    iget-object p1, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 62
    invoke-interface {p1}, Le/a/y/b/f;->h()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_4

    :cond_d
    const/16 p1, 0xd

    .line 63
    invoke-interface {v0, p1}, Le/a/y/a/e/e;->k5(I)V

    goto :goto_5

    :cond_e
    :goto_4
    const-string p1, "FlashDownloadImage"

    const-string v0, "downloadImage"

    .line 64
    invoke-virtual {p0, p1, v0}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p1, :cond_f

    .line 66
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 67
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->s9(Lcom/truecaller/flashsdk/models/Flash;)V

    :cond_f
    :goto_5
    return v3

    :cond_10
    return v1
.end method

.method public f(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6ea07a3e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const v1, 0x392a5cf5

    if-eq v0, v1, :cond_2

    const p1, 0x67679997

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string p1, "type_flash_timer_expired"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 3
    iput-boolean v3, p0, Le/a/y/a/h/u;->A:Z

    .line 4
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 5
    check-cast p1, Le/a/y/a/h/v;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/y/a/e/e;->close()V

    goto/16 :goto_1

    :cond_2
    const-string v0, "type_flash_received"

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz p1, :cond_4

    const-string p2, "extra_flash"

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/Flash;

    if-eqz p1, :cond_9

    .line 8
    iget-object p2, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v0, "flashReplied.payload"

    .line 9
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object p2

    const-string v0, "call"

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 11
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string p2, "flashReplied.sender"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p2, :cond_3

    .line 13
    iget-object p2, p2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz p2, :cond_3

    .line 14
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v2

    :cond_3
    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 16
    check-cast p1, Le/a/y/a/h/v;

    if-eqz p1, :cond_9

    .line 17
    iget-object p2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 18
    sget v0, Lcom/truecaller/flashsdk/R$string;->calling_you_back:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, v0, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/a/h/v;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    const-string v0, "type_publish_progress"

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 20
    iget-boolean p2, p0, Le/a/y/a/h/u;->E:Z

    if-nez p2, :cond_9

    if-eqz p1, :cond_9

    const-string p2, "extra_timer_progress"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, -0x1

    .line 21
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_9

    long-to-int p1, p1

    .line 22
    iget-object p2, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 23
    check-cast p2, Le/a/y/a/h/v;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Le/a/y/a/h/v;->d6(I)V

    :cond_6
    int-to-long p1, p1

    const-wide/16 v0, 0x3a98

    cmp-long p1, p1, v0

    if-gez p1, :cond_9

    .line 24
    iget-boolean p1, p0, Le/a/y/a/h/u;->D:Z

    if-nez p1, :cond_9

    .line 25
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 26
    check-cast p1, Le/a/y/a/h/v;

    if-eqz p1, :cond_8

    iget-object p2, p0, Le/a/y/a/h/u;->B:Ljava/lang/String;

    if-eqz p2, :cond_7

    const/4 v0, 0x2

    const-string v1, " "

    invoke-static {p2, v1, v2, v0}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_7
    const-string p2, ""

    :goto_0
    invoke-interface {p1, p2}, Le/a/y/a/h/v;->W5(Ljava/lang/String;)V

    .line 27
    :cond_8
    iput-boolean v3, p0, Le/a/y/a/h/u;->D:Z

    :cond_9
    :goto_1
    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    .line 2
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "image"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 7
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/a/h/v;->I6()V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 9
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/a/h/v;->w6()V

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public g1(I[Ljava/lang/String;[I)V
    .locals 3

    const-string v0, "permissions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Le/a/y/a/e/d;->g1(I[Ljava/lang/String;[I)V

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_1

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 4
    iget-object p1, p0, Le/a/y/a/e/d;->u:Le/a/p5/a0;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p1, p2, p3, v1}, Le/a/p5/a0;->g([Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "FlashDownloadImage"

    const-string p2, "downloadImage"

    .line 7
    invoke-virtual {p0, p1, p2}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p1, :cond_1

    .line 9
    iget-object p2, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 10
    check-cast p2, Le/a/y/a/h/v;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Le/a/y/a/h/v;->s9(Lcom/truecaller/flashsdk/models/Flash;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 12
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_save_permission_required:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p1, p2, p3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/y/a/h/u;->I:Ls1/w/f;

    .line 4
    sget-object v3, Lq3/a/t0;->d:Lq3/a/g0;

    .line 5
    invoke-interface {v2, v3}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Le/a/y/a/h/u$b;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v0, v5}, Le/a/y/a/h/u$b;-><init>(Le/a/y/a/h/u;Landroid/graphics/Bitmap;Le/a/y/a/h/v;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 7
    sget v1, Lcom/truecaller/flashsdk/R$string;->failed_to_share_image:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1, v1, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h1()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Le/a/y/a/h/v;->a6(Z)V

    .line 4
    invoke-interface {v0, v1}, Le/a/y/a/h/v;->c7(Z)V

    :cond_0
    return-void
.end method

.method public i(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "keyEvent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast p1, Le/a/y/a/h/v;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Le/a/y/a/h/v;->V8(Lcom/truecaller/flashsdk/models/Flash;)V

    :cond_2
    return v0
.end method

.method public i1(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/y/a/h/u;->A:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0}, Le/a/y/a/e/e;->H4()V

    :cond_1
    const/4 p1, 0x1

    .line 5
    invoke-interface {v0, p1}, Le/a/y/a/h/v;->a6(Z)V

    .line 6
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, v1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v3, "image"

    .line 9
    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "location"

    invoke-static {v3, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    :cond_2
    iget-object v1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v3, "featureShareImageInFlash"

    .line 11
    invoke-interface {v1, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, p1

    :cond_3
    if-nez v2, :cond_4

    .line 12
    invoke-interface {v0, p1}, Le/a/y/a/h/v;->c7(Z)V

    :cond_4
    return-void
.end method

.method public l(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, v1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-static {v3, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {p0, v1, v2}, Le/a/y/a/h/u;->T(Lcom/truecaller/flashsdk/models/Payload;Z)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 8
    sget v3, Lcom/truecaller/flashsdk/R$string;->geo_loc:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "payload.attachment"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 9
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 10
    invoke-interface {p1, v3, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v3, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 12
    sget v4, Lcom/truecaller/flashsdk/R$string;->map_activity:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-interface {v0, p1, v3}, Le/a/y/a/h/v;->O6(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 15
    sget v3, Lcom/truecaller/flashsdk/R$string;->map_browser:I

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v4, v2

    invoke-interface {p1, v3, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/h/v;->G6(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public l1()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    iget-object v1, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v1, :cond_0

    .line 2
    iget-wide v1, v1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/y/c/b;->v(Ljava/lang/String;)V

    const-string v0, "FlashViewProfile"

    const-string v1, "viewProfile"

    .line 4
    invoke-virtual {p0, v0, v1}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 6
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Le/a/y/a/h/u;->y:Z

    .line 4
    invoke-interface {v0}, Le/a/y/a/h/v;->H6()V

    .line 5
    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/y/a/h/v;->V8(Lcom/truecaller/flashsdk/models/Flash;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Le/a/y/a/h/u;->E:Z

    .line 4
    invoke-interface {v0}, Le/a/y/a/h/v;->O9()V

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0, v1}, Le/a/y/a/h/v;->Z5(Z)V

    .line 6
    invoke-interface {v0}, Le/a/y/a/h/v;->W9()V

    .line 7
    invoke-interface {v0}, Le/a/y/a/h/v;->e6()V

    .line 8
    iget-object v2, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v2, :cond_0

    .line 9
    iput-boolean v1, v2, Lcom/truecaller/flashsdk/models/QueuedFlash;->j:Z

    :cond_0
    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v0, v2}, Le/a/y/a/h/v;->V6(Lcom/truecaller/flashsdk/models/Flash;)V

    const-string v0, "FlashOpened"

    const-string v1, "opened"

    .line 11
    invoke-virtual {p0, v0, v1}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    .line 13
    iget-object v1, v0, Le/a/y/i/a;->a:Le/a/y/b/w;

    invoke-interface {v1}, Le/a/y/b/w;->i()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Le/a/y/i/a;->a:Le/a/y/b/w;

    invoke-interface {v1}, Le/a/y/b/w;->i()J

    move-result-wide v1

    .line 14
    :goto_0
    iget-object v3, v0, Le/a/y/i/a;->a:Le/a/y/b/w;

    const/16 v4, 0xf

    const-string v5, "receive_tooltips"

    invoke-interface {v3, v5, v4}, Le/a/y/b/w;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Le/a/y/i/a;->a(JI)I

    move-result v0

    .line 16
    invoke-virtual {p0, v0}, Le/a/y/a/e/d;->E(I)V

    :cond_2
    return-void
.end method

.method public o0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/y/a/h/v;->x7()V

    .line 4
    sget v1, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_attach_file_24dp:I

    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_flash_round_button_icon_color:I

    invoke-interface {v0, v1, v2}, Le/a/y/a/h/v;->y6(II)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/y/a/h/u;->C:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/y/a/h/u;->C:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Le/a/y/a/h/u;->A:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 5
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_1

    iget-object v1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Le/a/y/a/h/v;->U7(Lcom/truecaller/flashsdk/models/QueuedFlash;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Z)V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, p0, Le/a/y/a/h/u;->y:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/y/a/h/v;->z6()V

    .line 5
    invoke-interface {v0}, Le/a/y/a/h/v;->X6()V

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Le/a/y/a/h/u;->z:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 7
    iput v1, p0, Le/a/y/a/h/u;->z:I

    const/16 v1, 0x2bc

    .line 8
    invoke-interface {v0, v1}, Le/a/y/a/h/v;->J8(I)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {v0}, Le/a/y/a/h/v;->z6()V

    .line 10
    invoke-interface {v0}, Le/a/y/a/h/v;->X6()V

    :cond_2
    :goto_0
    return-void
.end method

.method public q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/e/e;->c8()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_1

    .line 4
    sget v1, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_close_black_24dp:I

    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_fab_close_icon_color:I

    invoke-interface {v0, v1, v2}, Le/a/y/a/h/v;->y6(II)V

    .line 5
    iget-object v1, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 6
    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_fab_close_background_color:I

    invoke-interface {v1, v2}, Le/a/y/b/a;->b(I)I

    move-result v1

    invoke-interface {v0, v1}, Le/a/y/a/h/v;->K6(I)V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 12

    const/4 v0, 0x2

    new-array v0, v0, [Le/a/y/a/g/c;

    .line 1
    new-instance v9, Le/a/y/a/g/c;

    .line 2
    sget v3, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_location__selected_24dp:I

    .line 3
    sget v4, Lcom/truecaller/flashsdk/R$string;->sfc_location:I

    .line 4
    iget-object v1, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 5
    sget v10, Lcom/truecaller/flashsdk/R$attr;->theme_flash_attach_button_tint:I

    invoke-interface {v1, v10}, Le/a/y/b/a;->b(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v2, 0x0

    move-object v1, v9

    .line 6
    invoke-direct/range {v1 .. v8}, Le/a/y/a/g/c;-><init>(IIIILandroid/graphics/drawable/Drawable;II)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    const/4 v1, 0x1

    .line 7
    new-instance v11, Le/a/y/a/g/c;

    const/4 v3, 0x1

    .line 8
    sget v4, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_photo_camera_24dp:I

    .line 9
    sget v5, Lcom/truecaller/flashsdk/R$string;->flash_attach_camera:I

    .line 10
    iget-object v2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 11
    invoke-interface {v2, v10}, Le/a/y/b/a;->b(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    move-object v2, v11

    .line 12
    invoke-direct/range {v2 .. v9}, Le/a/y/a/g/c;-><init>(IIIILandroid/graphics/drawable/Drawable;II)V

    aput-object v11, v0, v1

    .line 13
    invoke-static {v0}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 14
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 15
    check-cast v1, Le/a/y/a/h/v;

    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v1, v0}, Le/a/y/a/h/v;->X5(Ljava/util/List;)V

    .line 17
    sget v0, Lcom/truecaller/flashsdk/R$drawable;->ic_flash_attach_file_24dp:I

    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_flash_round_button_icon_color:I

    invoke-interface {v1, v0, v2}, Le/a/y/a/h/v;->l8(II)V

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/CharSequence;Z)V
    .locals 3

    const-string v0, "messageText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/y/a/h/u;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Le/a/y/a/h/u;->C:Z

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 4
    new-instance p2, Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    const-string v2, "location"

    .line 6
    invoke-direct {p2, v2, p1, v0, v1}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p2, Lcom/truecaller/flashsdk/models/Payload;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "text"

    invoke-direct {p2, v1, p1, v0, v0}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object p1, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p1, :cond_3

    .line 9
    iput-object p2, p1, Lcom/truecaller/flashsdk/models/QueuedFlash;->l:Lcom/truecaller/flashsdk/models/Payload;

    .line 10
    :cond_3
    iget-boolean p1, p0, Le/a/y/a/h/u;->A:Z

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 12
    check-cast p1, Le/a/y/a/h/v;

    if-eqz p1, :cond_4

    iget-object p2, p0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz p2, :cond_4

    invoke-interface {p1, p2}, Le/a/y/a/h/v;->S7(Lcom/truecaller/flashsdk/models/Flash;)V

    :cond_4
    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/a/y/a/h/u;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/y/a/h/u;->M:Landroid/net/Uri;

    if-nez v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Le/a/y/a/h/u;->P:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    :cond_3
    return-void

    .line 4
    :cond_4
    iget-boolean v0, p0, Le/a/y/a/h/u;->L:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Le/a/y/a/h/u;->L:Z

    .line 5
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 6
    check-cast v0, Le/a/y/a/h/v;

    if-eqz v0, :cond_6

    .line 7
    invoke-interface {v0}, Le/a/y/a/e/e;->c8()V

    .line 8
    iget-boolean v3, p0, Le/a/y/a/h/u;->L:Z

    if-eqz v3, :cond_5

    .line 9
    invoke-interface {v0, v2}, Le/a/y/a/h/v;->D6(Z)V

    .line 10
    invoke-interface {v0}, Le/a/y/a/h/v;->U5()V

    goto :goto_2

    .line 11
    :cond_5
    invoke-interface {v0, v1}, Le/a/y/a/h/v;->D6(Z)V

    .line 12
    invoke-interface {v0}, Le/a/y/a/h/v;->x6()V

    :cond_6
    :goto_2
    return-void
.end method

.method public v(ILjava/lang/String;)V
    .locals 8

    const-string v0, "action"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_9

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v1, Le/a/y/a/h/v;

    if-eqz v1, :cond_9

    .line 4
    iget-object v1, p0, Le/a/y/a/h/u;->K:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    const-string p2, "final"

    .line 6
    iput-object p2, v0, Lcom/truecaller/flashsdk/models/Flash;->d:Ljava/lang/String;

    .line 7
    sget p2, Lcom/truecaller/flashsdk/R$id;->btnYes:I

    if-ne p1, p2, :cond_1

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/ReplyActionsItem;

    invoke-virtual {p0, p1}, Le/a/y/a/h/u;->M(Lcom/truecaller/flashsdk/models/ReplyActionsItem;)V

    goto/16 :goto_2

    .line 9
    :cond_1
    sget p2, Lcom/truecaller/flashsdk/R$id;->btnNo:I

    if-ne p1, p2, :cond_2

    .line 10
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/ReplyActionsItem;

    invoke-virtual {p0, p1}, Le/a/y/a/h/u;->M(Lcom/truecaller/flashsdk/models/ReplyActionsItem;)V

    goto/16 :goto_2

    .line 11
    :cond_2
    sget p2, Lcom/truecaller/flashsdk/R$id;->btnOk:I

    if-ne p1, p2, :cond_9

    const/4 p1, 0x2

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/ReplyActionsItem;

    invoke-virtual {p0, p1}, Le/a/y/a/h/u;->M(Lcom/truecaller/flashsdk/models/ReplyActionsItem;)V

    goto/16 :goto_2

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 14
    sget v1, Lcom/truecaller/flashsdk/R$string;->sfc_ok:I

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 16
    sget v4, Lcom/truecaller/flashsdk/R$string;->sfc_yes:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v4, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 18
    sget v5, Lcom/truecaller/flashsdk/R$string;->sfc_no:I

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v5, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 20
    sget v6, Lcom/truecaller/flashsdk/R$string;->sfc_share:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v5, v6, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {p2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string p1, "accept"

    move-object p2, v1

    goto :goto_1

    .line 22
    :cond_4
    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p2, "ok"

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {p2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "reject"

    move-object p2, v4

    goto :goto_1

    .line 24
    :cond_6
    invoke-static {p2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 25
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 26
    check-cast p1, Le/a/y/a/h/v;

    if-eqz p1, :cond_7

    .line 27
    invoke-interface {p1}, Le/a/y/a/h/v;->s7()V

    const-string p1, "FlashShareImage"

    const-string p2, "shareImage"

    .line 28
    invoke-virtual {p0, p1, p2}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    const-string p1, "custom_flash"

    .line 29
    :goto_1
    new-instance v1, Lcom/truecaller/flashsdk/models/Payload;

    invoke-direct {v1, p1, p2, v2, v2}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 30
    iput-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 31
    invoke-virtual {p0}, Le/a/y/a/h/u;->R()V

    :cond_9
    :goto_2
    return-void
.end method

.method public w(Ljava/lang/CharSequence;Z)V
    .locals 4

    const-string v0, "messageText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/h/u;->x:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-boolean v1, p0, Le/a/y/a/h/u;->P:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 4
    iget-object v1, p0, Le/a/y/a/e/d;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    move p2, v2

    :cond_2
    const/4 v1, 0x0

    if-eqz p2, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    if-eqz v2, :cond_4

    .line 7
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 8
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_shared_via:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_4
    iget-object p2, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    const/4 v2, 0x4

    .line 10
    invoke-virtual {p2, v2}, Le/a/y/i/a;->b(I)V

    .line 11
    new-instance p2, Lcom/truecaller/flashsdk/models/Payload;

    .line 12
    iget-object v2, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    const-string v3, "location"

    .line 13
    invoke-direct {p2, v3, p1, v1, v2}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 14
    :cond_5
    iget-boolean p2, p0, Le/a/y/a/h/u;->N:Z

    if-eqz p2, :cond_8

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    :goto_3
    if-eqz v2, :cond_7

    .line 16
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 17
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_shared_via:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {p1, p2, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    :cond_7
    new-instance p2, Lcom/truecaller/flashsdk/models/Payload;

    const-string v2, "image"

    invoke-direct {p2, v2, p1, v1, v1}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 19
    :cond_8
    new-instance p2, Lcom/truecaller/flashsdk/models/Payload;

    const-string v2, "text"

    invoke-direct {p2, v2, p1, v1, v1}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 20
    :goto_4
    iput-object p2, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 21
    invoke-virtual {p0}, Le/a/y/a/h/u;->R()V

    :cond_9
    return-void
.end method

.method public y(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "viewIntent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flash"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
