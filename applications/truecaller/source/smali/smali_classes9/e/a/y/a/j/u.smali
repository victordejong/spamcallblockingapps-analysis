.class public final Le/a/y/a/j/u;
.super Le/a/y/a/e/d;
.source "SourceFile"

# interfaces
.implements Le/a/y/a/j/t;
.implements Le/a/y/c/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/y/a/e/d<",
        "Le/a/y/a/j/o;",
        ">;",
        "Le/a/y/a/j/t;",
        "Le/a/y/c/j;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Lcom/truecaller/flashsdk/models/Flash;

.field public D:Z

.field public E:Z

.field public F:Ljava/lang/String;

.field public G:Z

.field public H:J

.field public I:Z

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:Z

.field public M:Z

.field public N:Landroid/net/Uri;

.field public O:Lcom/truecaller/flashsdk/models/ImageFlash;

.field public final P:Le/a/y/b/w;

.field public final Q:Le/a/y/b/c;

.field public final R:Le/m/e/k;

.field public final S:Le/a/y/c/k;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/w/f;Lcom/google/firebase/messaging/FirebaseMessaging;Le/a/y/b/z;Le/a/y/b/w;Le/a/y/b/g0;Le/a/y/b/f;Le/a/y/b/c;Le/a/y/b/a;Le/a/y/i/a;Le/a/y/b/u;Le/m/e/k;Le/a/y/c/k;Le/a/y/b/m;Le/a/p5/a0;Le/a/b0/o/a;)V
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
            "Le/a/y/c/k;",
            "Le/a/y/b/m;",
            "Le/a/p5/a0;",
            "Le/a/b0/o/a;",
            ")V"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p4

    move-object/from16 v15, p7

    move-object/from16 v12, p11

    move-object/from16 v11, p12

    const-string v0, "uiContext"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messaging"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recentEmojiManager"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceUtil"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUtils"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactUtils"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashRequestHandler"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHelper"

    move-object/from16 v10, p13

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsUtil"

    move-object/from16 v9, p14

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    move-object/from16 v12, p15

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v9, p11

    move-object/from16 v11, p14

    .line 1
    invoke-direct/range {v0 .. v12}, Le/a/y/a/e/d;-><init>(Ls1/w/f;Le/a/y/b/z;Lcom/google/firebase/messaging/FirebaseMessaging;Le/a/y/b/g0;Le/a/y/b/f;Le/a/y/b/a;Le/a/y/i/a;Le/a/y/b/u;Le/m/e/k;Le/a/y/b/m;Le/a/p5/a0;Le/a/b0/o/a;)V

    iput-object v14, v13, Le/a/y/a/j/u;->P:Le/a/y/b/w;

    iput-object v15, v13, Le/a/y/a/j/u;->Q:Le/a/y/b/c;

    move-object/from16 v0, p11

    iput-object v0, v13, Le/a/y/a/j/u;->R:Le/m/e/k;

    move-object/from16 v0, p12

    iput-object v0, v13, Le/a/y/a/j/u;->S:Le/a/y/c/k;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, v13, Le/a/y/a/j/u;->D:Z

    .line 3
    iput-boolean v0, v13, Le/a/y/a/j/u;->M:Z

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/y/a/e/d;->j:Z

    .line 2
    iput-boolean v0, p0, Le/a/y/a/e/d;->h:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/a/y/a/j/u;->E:Z

    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/y/a/e/d;->B()V

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    .line 3
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    .line 4
    invoke-virtual {p0, v0}, Le/a/y/a/j/u;->L(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Le/a/y/a/j/u;->E:Z

    .line 6
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 7
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/a/e/e;->p8()V

    :cond_1
    return-void
.end method

.method public C(Landroid/net/Uri;)V
    .locals 4

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/y/a/e/d;->h:Z

    .line 2
    iput-object p1, p0, Le/a/y/a/j/u;->N:Landroid/net/Uri;

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 4
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Le/a/y/a/j/o;->P5()V

    .line 6
    invoke-interface {v0, p1}, Le/a/y/a/j/o;->Z0(Landroid/net/Uri;)V

    .line 7
    sget p1, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_transparent_header:I

    .line 8
    iget-object v1, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 9
    sget v2, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {v1, v2}, Le/a/y/b/a;->a(I)I

    move-result v1

    .line 10
    invoke-interface {v0, p1, v1}, Le/a/y/a/e/e;->q5(II)V

    .line 11
    invoke-interface {v0}, Le/a/y/a/j/o;->B2()V

    .line 12
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 13
    sget v1, Lcom/truecaller/flashsdk/R$string;->flash_hint_image_caption:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v1, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->c5(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 15
    invoke-interface {p1, v2}, Le/a/y/b/a;->a(I)I

    move-result p1

    invoke-interface {v0, p1}, Le/a/y/a/j/o;->h2(I)V

    :cond_0
    return-void
.end method

.method public F(Le/a/y/a/e/e;)V
    .locals 26

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/y/a/j/o;

    const-string v2, "presenterView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {v0, v1}, Le/a/y/a/e/d;->F(Le/a/y/a/e/e;)V

    .line 4
    invoke-interface {v1}, Le/a/y/a/e/e;->H9()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_18

    const-string v3, "presenterView.getViewIntent().extras ?: return"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "to_phone"

    .line 5
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v5

    :goto_0
    const-string v7, "to_name"

    .line 7
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->w:Ljava/lang/String;

    :cond_1
    const-string v7, "screen_context"

    const-string v8, "UNKNOWN"

    .line 9
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->x:Ljava/lang/String;

    const-string v7, "image"

    .line 10
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 11
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    .line 12
    iput-boolean v9, v0, Le/a/y/a/j/u;->M:Z

    :cond_2
    const-string v7, "background"

    .line 13
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 14
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->z:Ljava/lang/String;

    .line 15
    iput-boolean v9, v0, Le/a/y/a/j/u;->M:Z

    :cond_3
    const-string v7, "video"

    .line 16
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 17
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->A:Ljava/lang/String;

    .line 18
    iput-boolean v9, v0, Le/a/y/a/j/u;->M:Z

    :cond_4
    const-string v7, "description"

    .line 19
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 20
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->B:Ljava/lang/String;

    .line 21
    iput-boolean v9, v0, Le/a/y/a/j/u;->M:Z

    :cond_5
    const-string v7, "mode"

    .line 22
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 23
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 24
    iput-boolean v7, v0, Le/a/y/a/e/d;->h:Z

    :cond_6
    const-string v7, "time_left"

    .line 25
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 26
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v0, Le/a/y/a/j/u;->H:J

    :cond_7
    const-string v7, "prefilled_text"

    .line 27
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 28
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->K:Ljava/lang/String;

    :cond_8
    const-string v7, "preset_flash_type"

    .line 29
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 30
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Le/a/y/a/j/u;->J:Ljava/lang/String;

    :cond_9
    const-string v7, "show_waiting"

    .line 31
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 32
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Le/a/y/a/j/u;->D:Z

    .line 33
    :cond_a
    new-instance v7, Lcom/truecaller/flashsdk/models/Flash;

    invoke-direct {v7}, Lcom/truecaller/flashsdk/models/Flash;-><init>()V

    iput-object v7, v0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    .line 34
    iput-wide v3, v7, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 35
    iget-object v3, v0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 36
    check-cast v3, Le/a/y/a/j/o;

    if-eqz v3, :cond_c

    const/4 v4, -0x1

    const-string v7, "notification_id"

    .line 37
    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_b

    goto :goto_1

    .line 38
    :cond_b
    invoke-interface {v3, v2}, Le/a/y/a/j/o;->e3(I)V

    .line 39
    :cond_c
    :goto_1
    iget-wide v2, v0, Le/a/y/a/j/u;->H:J

    cmp-long v2, v2, v5

    const/4 v3, 0x1

    if-lez v2, :cond_d

    .line 40
    iput-boolean v3, v0, Le/a/y/a/j/u;->G:Z

    .line 41
    sget v2, Lcom/truecaller/flashsdk/R$string;->flash_sent_to:I

    invoke-virtual {v0, v2}, Le/a/y/a/j/u;->O(I)V

    .line 42
    iget-object v2, v0, Le/a/y/a/j/u;->F:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Le/a/y/a/j/u;->L:Z

    iget-wide v5, v0, Le/a/y/a/j/u;->H:J

    iget-object v2, v0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v2, :cond_18

    .line 43
    iget-wide v7, v2, Lcom/truecaller/flashsdk/models/Flash;->b:J

    const-string v2, ""

    .line 44
    invoke-interface/range {v1 .. v8}, Le/a/y/a/j/o;->T3(Ljava/lang/String;Ljava/lang/String;ZJJ)V

    goto/16 :goto_4

    .line 45
    :cond_d
    sget v2, Lcom/truecaller/flashsdk/R$string;->send_flash_to_v2:I

    invoke-virtual {v0, v2}, Le/a/y/a/j/u;->O(I)V

    .line 46
    iget-object v2, v0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v2, :cond_18

    .line 47
    iget-wide v4, v2, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 48
    iget-object v2, v0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    .line 49
    invoke-interface {v1, v2, v4, v5}, Le/a/y/a/e/e;->R4(Le/a/y/b/z;J)V

    .line 50
    invoke-virtual {v0, v4, v5}, Le/a/y/a/e/d;->I(J)V

    .line 51
    iget-object v2, v0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v4, "featureShareImageInFlash"

    .line 52
    invoke-interface {v2, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x2

    new-array v2, v2, [Le/a/y/a/g/c;

    .line 53
    new-instance v5, Le/a/y/a/g/c;

    const/4 v11, 0x0

    .line 54
    sget v12, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_location__selected_24dp:I

    .line 55
    sget v13, Lcom/truecaller/flashsdk/R$string;->sfc_location:I

    .line 56
    iget-object v6, v0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 57
    sget v7, Lcom/truecaller/flashsdk/R$attr;->theme_flash_attach_button_tint:I

    invoke-interface {v6, v7}, Le/a/y/b/a;->b(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x30

    move-object v10, v5

    .line 58
    invoke-direct/range {v10 .. v17}, Le/a/y/a/g/c;-><init>(IIIILandroid/graphics/drawable/Drawable;II)V

    aput-object v5, v2, v9

    .line 59
    new-instance v5, Le/a/y/a/g/c;

    const/16 v19, 0x1

    .line 60
    sget v20, Lcom/truecaller/flashsdk/R$drawable;->flash_ic_photo_camera_24dp:I

    .line 61
    sget v21, Lcom/truecaller/flashsdk/R$string;->flash_attach_camera:I

    .line 62
    iget-object v6, v0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 63
    invoke-interface {v6, v7}, Le/a/y/b/a;->b(I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x30

    move-object/from16 v18, v5

    .line 64
    invoke-direct/range {v18 .. v25}, Le/a/y/a/g/c;-><init>(IIIILandroid/graphics/drawable/Drawable;II)V

    aput-object v5, v2, v3

    .line 65
    invoke-static {v2}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    invoke-interface {v1}, Le/a/y/a/j/o;->Y6()V

    .line 67
    :cond_e
    iget-boolean v2, v0, Le/a/y/a/e/d;->h:Z

    if-eqz v2, :cond_18

    .line 68
    iget-object v2, v0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    if-eqz v2, :cond_14

    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_f

    move v7, v3

    goto :goto_2

    :cond_f
    move v7, v9

    :goto_2
    xor-int/2addr v7, v3

    if-eqz v7, :cond_10

    goto :goto_3

    :cond_10
    move-object v2, v5

    :goto_3
    if-eqz v2, :cond_14

    .line 70
    iget-object v3, v0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    .line 71
    invoke-interface {v3, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 72
    iget-object v3, v0, Le/a/y/a/j/u;->B:Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object v6, v3

    :cond_11
    invoke-interface {v1, v2, v6}, Le/a/y/a/j/o;->D5(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-interface {v1}, Le/a/y/a/j/o;->P5()V

    .line 74
    iget-object v2, v0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 75
    sget v3, Lcom/truecaller/flashsdk/R$color;->white:I

    invoke-interface {v2, v3}, Le/a/y/b/a;->a(I)I

    move-result v2

    invoke-interface {v1, v2}, Le/a/y/a/j/o;->h2(I)V

    .line 76
    sget v2, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_transparent_header:I

    .line 77
    iget-object v4, v0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 78
    invoke-interface {v4, v3}, Le/a/y/b/a;->a(I)I

    move-result v3

    .line 79
    invoke-interface {v1, v2, v3}, Le/a/y/a/e/e;->q5(II)V

    .line 80
    invoke-interface {v1}, Le/a/y/a/j/o;->B2()V

    goto :goto_4

    .line 81
    :cond_12
    iget-object v3, v0, Le/a/y/a/j/u;->B:Ljava/lang/String;

    if-eqz v3, :cond_13

    move-object v6, v3

    :cond_13
    invoke-interface {v1, v2, v6}, Le/a/y/a/e/e;->O4(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 82
    :cond_14
    iget-object v2, v0, Le/a/y/a/j/u;->A:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 83
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_15

    move v9, v3

    :cond_15
    xor-int/2addr v3, v9

    if-eqz v3, :cond_16

    move-object v5, v2

    :cond_16
    if-eqz v5, :cond_18

    .line 84
    iget-object v2, v0, Le/a/y/a/j/u;->B:Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object v6, v2

    :cond_17
    invoke-interface {v1, v5, v6}, Le/a/y/a/e/e;->d5(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_4
    return-void
.end method

.method public G(Le/a/y/e/i;)V
    .locals 3

    const-string v0, "emoticon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Le/a/y/i/a;->c(I)V

    .line 3
    new-instance v0, Lcom/truecaller/flashsdk/models/Payload;

    .line 4
    iget-object p1, p1, Le/a/y/e/i;->a:Ljava/lang/String;

    const-string v1, "emoji"

    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, p1, v2, v2}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz p1, :cond_0

    .line 7
    iput-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/a/y/a/j/u;->P()V

    return-void
.end method

.method public J()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/y/a/j/u;->L:Z

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    .line 3
    invoke-virtual {v1, v0}, Le/a/y/i/a;->c(I)V

    .line 4
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 5
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/a/j/o;->C8()V

    :cond_0
    return-void
.end method

.method public final L(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x20

    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v0

    .line 2
    :goto_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 3
    invoke-static {v6, v5}, Ls1/z/c/l;->g(II)I

    move-result v6

    if-gtz v6, :cond_1

    move v6, v1

    goto :goto_2

    :cond_1
    move v6, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v6, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    if-ge p1, v0, :cond_6

    const/16 p1, 0x30

    goto :goto_4

    :cond_6
    const/16 v0, 0x10

    if-ge p1, v0, :cond_7

    int-to-float p1, v5

    goto :goto_5

    :cond_7
    if-ge p1, v5, :cond_8

    const/16 p1, 0x18

    :goto_4
    int-to-float p1, p1

    goto :goto_5

    :cond_8
    int-to-float p1, v0

    .line 6
    :goto_5
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 7
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Le/a/y/a/j/o;->E3(F)V

    :cond_9
    return-void
.end method

.method public final M()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/y/a/j/u;->N:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public final N(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Payload;
    .locals 13

    .line 1
    new-instance v0, Lcom/truecaller/flashsdk/models/Payload;

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    const-string v2, "location"

    const/4 v3, 0x0

    .line 3
    invoke-direct {v0, v2, p1, v3, v1}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v2, "featureShareImageInFlash"

    .line 5
    invoke-interface {v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, p0, Le/a/y/a/e/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v2, ","

    const/4 v4, 0x0

    .line 7
    invoke-static {v2, v1, v4}, Le/d/c/a/a;->b0(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_2

    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 10
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 11
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 12
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-nez v6, :cond_0

    .line 13
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v1, v2}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 14
    :cond_2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    :goto_1
    new-array v2, v4, [Ljava/lang/String;

    .line 15
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    check-cast v1, [Ljava/lang/String;

    .line 17
    array-length v2, v1

    const/4 v6, 0x2

    if-ge v2, v6, :cond_3

    return-object v3

    .line 18
    :cond_3
    new-instance v2, Lcom/truecaller/flashsdk/models/FlashExtras;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 19
    new-instance v10, Lcom/truecaller/flashsdk/models/FlashLocationExtras;

    .line 20
    iget-object v3, p0, Le/a/y/a/e/d;->c:Ljava/lang/String;

    .line 21
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 22
    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 23
    invoke-direct {v10, v3, v4, v1, p1}, Lcom/truecaller/flashsdk/models/FlashLocationExtras;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v2

    .line 24
    invoke-direct/range {v7 .. v12}, Lcom/truecaller/flashsdk/models/FlashExtras;-><init>(Ljava/util/List;Lcom/truecaller/flashsdk/models/FlashImageEntity;Lcom/truecaller/flashsdk/models/FlashLocationExtras;ILs1/z/c/f;)V

    .line 25
    iget-object p1, p0, Le/a/y/a/j/u;->R:Le/m/e/k;

    invoke-virtual {p1, v2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/models/Payload;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    return-object v0
.end method

.method public final O(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v2, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 5
    invoke-interface {v2}, Le/a/y/b/f;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/a/y/a/j/u;->Q:Le/a/y/b/c;

    invoke-interface {v2, v0}, Le/a/y/b/c;->b(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Contact;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 6
    :goto_1
    iget-object v3, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 7
    check-cast v3, Le/a/y/a/j/o;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 10
    :cond_2
    iget-object v4, p0, Le/a/y/a/j/u;->w:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v0, v4

    .line 11
    :cond_3
    :goto_2
    iput-object v0, p0, Le/a/y/a/j/u;->F:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 13
    invoke-interface {v0, p1, v5}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Le/a/y/a/j/u;->F:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Le/a/y/a/e/e;->i5(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_4

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 15
    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Contact;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Le/a/y/a/e/e;->S4(Ljava/lang/String;)V

    goto :goto_3

    .line 16
    :cond_5
    sget p1, Lcom/truecaller/flashsdk/R$drawable;->ic_empty_avatar:I

    invoke-interface {v3, p1}, Le/a/y/a/e/e;->f5(I)V

    .line 17
    :goto_3
    iget-object p1, p0, Le/a/y/a/j/u;->K:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 19
    invoke-interface {v3, p1, v4, v4, v0}, Le/a/y/a/e/e;->N4(Ljava/lang/String;III)V

    :cond_6
    return-void
.end method

.method public final P()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_10

    .line 3
    iget-object v1, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 4
    invoke-interface {v1}, Le/a/y/b/f;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 5
    iget-object v0, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->e()V

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->d()V

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_10

    .line 9
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v3, "flash.payload"

    .line 10
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    const-string v4, "emoji"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 12
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 14
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    :goto_0
    iput-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->e:Ljava/lang/String;

    .line 16
    iget-wide v4, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    const/4 v4, 0x1

    if-nez v1, :cond_2

    goto :goto_1

    .line 17
    :cond_2
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-nez v1, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 19
    :cond_4
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    const-string v5, "location"

    if-eqz v1, :cond_8

    .line 21
    iget-wide v8, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    cmp-long v1, v8, v6

    if-nez v1, :cond_6

    goto :goto_3

    .line 22
    :cond_6
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 23
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    iget-object v1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 25
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    move v1, v4

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_d

    .line 26
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 27
    check-cast v1, Le/a/y/a/j/o;

    if-eqz v1, :cond_d

    .line 28
    iget-boolean v3, p0, Le/a/y/a/e/d;->h:Z

    if-eqz v3, :cond_c

    .line 29
    iget-object v3, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    if-eqz v3, :cond_a

    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    :cond_9
    move v3, v2

    goto :goto_6

    :cond_a
    :goto_5
    move v3, v4

    :goto_6
    if-eqz v3, :cond_c

    .line 30
    iget-object v3, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v6, "featureShareImageInFlash"

    .line 31
    invoke-interface {v3, v6}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 32
    iget-object v3, p0, Le/a/y/a/j/u;->N:Landroid/net/Uri;

    if-eqz v3, :cond_d

    .line 33
    iget-object v4, p0, Le/a/y/a/j/u;->O:Lcom/truecaller/flashsdk/models/ImageFlash;

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    new-instance v4, Lcom/truecaller/flashsdk/models/ImageFlash;

    invoke-direct {v4}, Lcom/truecaller/flashsdk/models/ImageFlash;-><init>()V

    .line 34
    invoke-virtual {v4, v0}, Lcom/truecaller/flashsdk/models/ImageFlash;->g(Lcom/truecaller/flashsdk/models/Flash;)V

    .line 35
    iput-object v3, v4, Lcom/truecaller/flashsdk/models/ImageFlash;->i:Landroid/net/Uri;

    .line 36
    iget-object v3, p0, Le/a/y/a/j/u;->x:Ljava/lang/String;

    .line 37
    iput-object v3, v4, Lcom/truecaller/flashsdk/models/ImageFlash;->m:Ljava/lang/String;

    .line 38
    :goto_7
    invoke-interface {v1, v4}, Le/a/y/a/j/o;->V5(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 39
    invoke-interface {v1}, Le/a/y/a/e/e;->T4()V

    .line 40
    iget-object v3, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 41
    sget v4, Lcom/truecaller/flashsdk/R$string;->flash_uploading_media:I

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v6}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Le/a/y/a/e/e;->J7(Ljava/lang/String;Z)V

    goto :goto_8

    .line 42
    :cond_c
    iget-object v1, p0, Le/a/y/a/j/u;->S:Le/a/y/c/k;

    const-string v2, "sending"

    invoke-interface {v1, v0, v2, v4, p0}, Le/a/y/c/k;->a(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;ZLe/a/y/c/j;)V

    .line 43
    :cond_d
    :goto_8
    iget-object v1, p0, Le/a/y/a/j/u;->N:Landroid/net/Uri;

    if-eqz v1, :cond_e

    .line 44
    iget-object v0, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v1, "flashCopy.payload"

    .line 45
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 46
    :cond_e
    invoke-virtual {p0}, Le/a/y/a/j/u;->Q()V

    goto :goto_9

    .line 47
    :cond_f
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 48
    sget v3, Lcom/truecaller/flashsdk/R$string;->no_internet:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_10
    :goto_9
    return-void
.end method

.method public final Q()V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_5

    .line 2
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v1, Le/a/y/a/j/o;

    if-eqz v1, :cond_5

    .line 4
    iget-object v2, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v3, "flashCopy.payload"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v2

    const-string v4, "emoji"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    .line 7
    iget-wide v4, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 8
    invoke-interface {v2, v4, v5}, Le/a/y/b/z;->d(J)V

    .line 9
    :cond_0
    iget-object v2, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 10
    iget-object v5, v2, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    .line 11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 12
    iget-object v5, v2, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    .line 13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 14
    iget-object v5, p0, Le/a/y/a/j/u;->x:Ljava/lang/String;

    .line 15
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 16
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 17
    iget-wide v6, v2, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 19
    iget-object v7, p0, Le/a/y/a/e/d;->p:Le/a/y/b/f;

    .line 20
    invoke-interface {v7}, Le/a/y/b/f;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Le/a/y/a/j/u;->Q:Le/a/y/b/c;

    const-string v8, "phoneNumber"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v6}, Le/a/y/b/c;->a(Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    :cond_1
    move v7, v4

    .line 21
    :goto_0
    iget-object v8, v2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 22
    invoke-static {v8, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v3

    const-string v8, "type"

    invoke-virtual {v5, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v3, v2, Lcom/truecaller/flashsdk/models/Flash;->h:Ljava/lang/String;

    const-string v8, "flashMessageId"

    .line 24
    invoke-virtual {v5, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "flashReceiverId"

    .line 25
    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Le/a/y/a/j/u;->x:Ljava/lang/String;

    const-string v6, "flashContext"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "flashFromPhonebook"

    .line 27
    invoke-virtual {v5, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    const-string v6, "flashReplyId"

    .line 28
    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v2, v2, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    const-string v3, "flashThreadId"

    .line 30
    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-boolean v2, p0, Le/a/y/a/e/d;->k:Z

    .line 32
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flashFromHistory"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Le/a/y/a/j/u;->B:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    iget-object v2, p0, Le/a/y/a/j/u;->B:Ljava/lang/String;

    const-string v3, "campaignDescription"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "historyLength"

    const-string v3, "0"

    .line 35
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v2

    const-string v3, "FlashSent"

    invoke-interface {v2, v3, v5}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    iput-boolean v4, p0, Le/a/y/a/e/d;->k:Z

    .line 38
    :cond_3
    iget-object v2, p0, Le/a/y/a/e/d;->n:Le/a/y/b/z;

    .line 39
    iget-object v3, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v3, :cond_5

    .line 40
    iget-wide v5, v3, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 41
    invoke-interface {v2, v5, v6}, Le/a/y/b/z;->d(J)V

    .line 42
    iget-object v2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 43
    sget v3, Lcom/truecaller/flashsdk/R$string;->flash_sent_to:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Le/a/y/a/j/u;->F:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le/a/y/a/e/e;->i5(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-boolean v2, p0, Le/a/y/a/j/u;->D:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Le/a/y/a/j/u;->G:Z

    .line 46
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "flashCopy.history"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Le/a/y/a/e/d;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    iget-object v2, p0, Le/a/y/a/j/u;->F:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 48
    iget-boolean v5, p0, Le/a/y/a/j/u;->L:Z

    const-wide/32 v6, 0xea60

    .line 49
    iget-wide v8, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    move-object v2, v1

    .line 50
    invoke-interface/range {v2 .. v9}, Le/a/y/a/j/o;->T3(Ljava/lang/String;Ljava/lang/String;ZJJ)V

    goto :goto_1

    .line 51
    :cond_4
    invoke-interface {v1}, Le/a/y/a/e/e;->close()V

    .line 52
    :goto_1
    iget-object v0, p0, Le/a/y/a/j/u;->P:Le/a/y/b/w;

    invoke-interface {v0}, Le/a/y/b/w;->m()V

    .line 53
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v2, "featureShareImageInFlash"

    .line 54
    invoke-interface {v0, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55
    invoke-interface {v1}, Le/a/y/a/j/o;->z0()V

    .line 56
    sget v0, Lcom/truecaller/flashsdk/R$attr;->theme_bg_contact_header:I

    .line 57
    iget-object v2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 58
    sget v3, Lcom/truecaller/flashsdk/R$attr;->theme_incoming_text:I

    invoke-interface {v2, v3}, Le/a/y/b/a;->b(I)I

    move-result v2

    .line 59
    invoke-interface {v1, v0, v2}, Le/a/y/a/e/e;->q5(II)V

    .line 60
    iget-boolean v0, p0, Le/a/y/a/j/u;->E:Z

    if-eqz v0, :cond_5

    .line 61
    invoke-virtual {p0}, Le/a/y/a/j/u;->B()V

    .line 62
    invoke-interface {v1}, Le/a/y/a/j/o;->la()V

    :cond_5
    return-void
.end method

.method public T0(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Le/a/y/a/j/u;->M()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-interface {v0, v1}, Le/a/y/a/e/e;->A0(Z)V

    :cond_4
    if-eqz p1, :cond_5

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Le/a/y/a/j/u;->L(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public W0()V
    .locals 4

    .line 1
    invoke-super {p0}, Le/a/y/a/e/d;->W0()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/y/a/j/u;->w:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Le/a/y/a/j/u;->x:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Le/a/y/a/j/u;->A:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Le/a/y/a/j/u;->z:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Le/a/y/a/j/u;->B:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Le/a/y/a/e/d;->h:Z

    .line 10
    iput-object v0, p0, Le/a/y/a/j/u;->F:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 11
    iput-wide v2, p0, Le/a/y/a/j/u;->H:J

    .line 12
    iput-boolean v1, p0, Le/a/y/a/j/u;->E:Z

    .line 13
    iput-boolean v1, p0, Le/a/y/a/j/u;->G:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Le/a/y/a/j/u;->M:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
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

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 5
    iput-object p2, p0, Le/a/y/a/j/u;->O:Lcom/truecaller/flashsdk/models/ImageFlash;

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

    :cond_0
    return-void

    :sswitch_1
    const-string v1, "state_uploading_failed"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 13
    iput-object p2, p0, Le/a/y/a/j/u;->O:Lcom/truecaller/flashsdk/models/ImageFlash;

    .line 14
    invoke-interface {v0}, Le/a/y/a/e/e;->p5()V

    .line 15
    iget-object p1, p0, Le/a/y/a/j/u;->O:Lcom/truecaller/flashsdk/models/ImageFlash;

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 17
    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Le/a/y/a/e/e;->J7(Ljava/lang/String;Z)V

    .line 18
    iget-object p1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 19
    sget p2, Lcom/truecaller/flashsdk/R$string;->flash_sending_failed:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1, p2, v1}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :sswitch_2
    const-string p2, "state_flash_sent"

    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

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
    invoke-virtual {p0}, Le/a/y/a/j/u;->Q()V

    goto :goto_0

    :sswitch_3
    const-string p2, "state_uploaded"

    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

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

    :cond_2
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

.method public b(Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 1

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/y/a/j/u;->M()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 5
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Le/a/y/a/e/e;->p0()V

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

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Le/a/y/a/j/u;->N:Landroid/net/Uri;

    .line 12
    iput-object v0, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Le/a/y/a/e/d;->h:Z

    .line 14
    iget-object v1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 15
    check-cast v1, Le/a/y/a/j/o;

    if-eqz v1, :cond_1

    .line 16
    iget-object v2, p0, Le/a/y/a/e/d;->q:Le/a/y/b/a;

    .line 17
    sget v3, Lcom/truecaller/flashsdk/R$attr;->theme_text_hint:I

    invoke-interface {v2, v3}, Le/a/y/b/a;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, Le/a/y/a/j/o;->h2(I)V

    .line 18
    invoke-interface {v1}, Le/a/y/a/j/o;->t1()V

    .line 19
    iget-object v2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 20
    sget v3, Lcom/truecaller/flashsdk/R$string;->type_a_flash:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v3, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Le/a/y/a/e/e;->c5(Ljava/lang/String;)V

    .line 21
    :cond_1
    iget-boolean v0, p0, Le/a/y/a/j/u;->E:Z

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {p0}, Le/a/y/a/j/u;->B()V

    :cond_2
    :goto_0
    return-void
.end method

.method public e1(I)Z
    .locals 3

    const/4 v0, 0x1

    const v1, 0x102002c

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast p1, Le/a/y/a/j/o;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/y/a/e/e;->close()V

    goto :goto_1

    .line 3
    :cond_0
    sget v1, Lcom/truecaller/flashsdk/R$id;->about:I

    if-ne p1, v1, :cond_3

    .line 4
    iget-object p1, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    const/16 v1, 0x8

    .line 5
    invoke-virtual {p1, v1}, Le/a/y/i/a;->c(I)V

    .line 6
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 7
    check-cast p1, Le/a/y/a/j/o;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/y/a/e/e;->e9()V

    .line 8
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-boolean v1, p0, Le/a/y/a/j/u;->G:Z

    if-eqz v1, :cond_2

    const-string v1, "waiting"

    goto :goto_0

    :cond_2
    const-string v1, "send"

    :goto_0
    const-string v2, "flashContext"

    .line 10
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v1

    const-string v2, "FlashTutorialClicked"

    invoke-interface {v1, v2, p1}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method public h1()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Le/a/y/a/j/u;->M:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/y/a/j/u;->M:Z

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    .line 4
    iget-object v1, v0, Le/a/y/i/a;->a:Le/a/y/b/w;

    invoke-interface {v1}, Le/a/y/b/w;->k()J

    move-result-wide v1

    .line 5
    iget-object v3, v0, Le/a/y/i/a;->a:Le/a/y/b/w;

    const/16 v4, 0xf

    const-string v5, "send_tooltips"

    invoke-interface {v3, v5, v4}, Le/a/y/b/w;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Le/a/y/i/a;->a(JI)I

    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Le/a/y/a/e/d;->E(I)V

    :cond_0
    return-void
.end method

.method public i1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Le/a/y/a/e/e;->H4()V

    .line 4
    invoke-interface {v0}, Le/a/y/a/e/e;->p0()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    :cond_1
    :goto_0
    return-void
.end method

.method public j(Lcom/truecaller/flashsdk/models/Flash;II)V
    .locals 1

    const-string p2, "flash"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast p1, Le/a/y/a/j/o;

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 4
    sget p3, Lcom/truecaller/flashsdk/R$string;->no_internet:I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p2, p3, v0}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 8

    const-string v0, "messageText"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "featureShareImageInFlash"

    const-string v4, "image"

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_d

    .line 2
    iget-boolean v1, p0, Le/a/y/a/j/u;->E:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    .line 4
    invoke-virtual {v0, v5}, Le/a/y/i/a;->c(I)V

    .line 5
    invoke-virtual {p0, p1}, Le/a/y/a/j/u;->N(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Payload;

    move-result-object p1

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-boolean v1, p0, Le/a/y/a/e/d;->h:Z

    if-eqz v1, :cond_4

    .line 7
    iget-object v1, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v6

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    .line 9
    invoke-interface {v1, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v0, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    .line 11
    invoke-virtual {v0, v5}, Le/a/y/i/a;->c(I)V

    .line 12
    new-instance v0, Lcom/truecaller/flashsdk/models/Payload;

    invoke-direct {v0, v4, p1, v7, v7}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 13
    :cond_4
    iget-boolean v1, p0, Le/a/y/a/e/d;->h:Z

    if-eqz v1, :cond_9

    .line 14
    iget-object v1, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Le/a/y/a/j/u;->z:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v6

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/y/a/j/u;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    .line 17
    :goto_3
    new-instance v1, Lcom/truecaller/flashsdk/models/Payload;

    invoke-direct {v1, v4, p1, v7, v0}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 19
    new-instance v0, Lcom/truecaller/flashsdk/models/FlashExtras;

    const/4 v3, 0x0

    new-instance v4, Lcom/truecaller/flashsdk/models/FlashImageEntity;

    const-string v2, "image/jpg"

    invoke-direct {v4, p1, v2}, Lcom/truecaller/flashsdk/models/FlashImageEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/truecaller/flashsdk/models/FlashExtras;-><init>(Ljava/util/List;Lcom/truecaller/flashsdk/models/FlashImageEntity;Lcom/truecaller/flashsdk/models/FlashLocationExtras;ILs1/z/c/f;)V

    .line 20
    iget-object p1, p0, Le/a/y/a/j/u;->R:Le/m/e/k;

    invoke-virtual {p1, v0}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/truecaller/flashsdk/models/Payload;->g(Ljava/lang/String;)V

    :cond_8
    move-object p1, v1

    goto :goto_6

    .line 21
    :cond_9
    iget-boolean v0, p0, Le/a/y/a/e/d;->h:Z

    if-eqz v0, :cond_a

    .line 22
    iget-object v0, p0, Le/a/y/a/j/u;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 23
    new-instance v0, Lcom/truecaller/flashsdk/models/Payload;

    iget-object v1, p0, Le/a/y/a/j/u;->A:Ljava/lang/String;

    const-string v2, "video"

    invoke-direct {v0, v2, p1, v7, v1}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    :goto_4
    move-object p1, v0

    goto :goto_6

    .line 24
    :cond_a
    new-instance v0, Lcom/truecaller/flashsdk/models/Payload;

    iget-object v1, p0, Le/a/y/a/j/u;->J:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    const-string v1, "text"

    :goto_5
    invoke-direct {v0, v1, p1, v7, v7}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 25
    :goto_6
    iget-object v0, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_c

    .line 26
    iput-object p1, v0, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 27
    :cond_c
    invoke-virtual {p0}, Le/a/y/a/j/u;->P()V

    goto/16 :goto_9

    .line 28
    :cond_d
    iget-boolean p1, p0, Le/a/y/a/j/u;->E:Z

    if-eqz p1, :cond_10

    .line 29
    iget-object p1, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    .line 30
    invoke-virtual {p1, v5}, Le/a/y/i/a;->c(I)V

    .line 31
    iget-object p1, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz p1, :cond_f

    .line 32
    iget-object v0, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 33
    sget v1, Lcom/truecaller/flashsdk/R$string;->flash_shared_via:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/y/a/j/u;->N(Ljava/lang/String;)Lcom/truecaller/flashsdk/models/Payload;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 34
    iput-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    goto :goto_7

    :cond_e
    return-void

    .line 35
    :cond_f
    :goto_7
    invoke-virtual {p0}, Le/a/y/a/j/u;->P()V

    goto :goto_9

    .line 36
    :cond_10
    iget-boolean p1, p0, Le/a/y/a/e/d;->h:Z

    if-eqz p1, :cond_14

    .line 37
    iget-object p1, p0, Le/a/y/a/j/u;->y:Ljava/lang/String;

    if-eqz p1, :cond_12

    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_8

    :cond_11
    move v2, v6

    :cond_12
    :goto_8
    if-eqz v2, :cond_14

    .line 38
    iget-object p1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    .line 39
    invoke-interface {p1, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 40
    iget-object p1, p0, Le/a/y/a/e/d;->r:Le/a/y/i/a;

    .line 41
    invoke-virtual {p1, v5}, Le/a/y/i/a;->c(I)V

    .line 42
    iget-object p1, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz p1, :cond_13

    new-instance v0, Lcom/truecaller/flashsdk/models/Payload;

    .line 43
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 44
    sget v2, Lcom/truecaller/flashsdk/R$string;->flash_shared_via:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1, v7, v7}, Lcom/truecaller/flashsdk/models/Payload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 45
    iput-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 46
    :cond_13
    invoke-virtual {p0}, Le/a/y/a/j/u;->P()V

    goto :goto_9

    .line 47
    :cond_14
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 48
    check-cast p1, Le/a/y/a/j/o;

    if-eqz p1, :cond_15

    .line 49
    iget-object v0, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 50
    sget v1, Lcom/truecaller/flashsdk/R$string;->enter_valid_message:I

    new-array v2, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_15
    :goto_9
    return-void
.end method

.method public l1()V
    .locals 3

    .line 1
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object v0

    iget-object v1, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v1, :cond_0

    .line 2
    iget-wide v1, v1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 3
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Le/a/y/c/b;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_4

    const-string v0, "extra_flash"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/Flash;

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v1, "flashReplied.payload"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "flashReplied.sender"

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v0

    iget-object v3, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v3, :cond_0

    .line 7
    iget-wide v3, v3, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 10
    check-cast p1, Le/a/y/a/j/o;

    if-eqz p1, :cond_4

    .line 11
    iget-object v0, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 12
    sget v1, Lcom/truecaller/flashsdk/R$string;->calling_you_back:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/y/a/j/o;->o(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    .line 14
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Le/a/y/a/j/u;->C:Lcom/truecaller/flashsdk/models/Flash;

    if-eqz v0, :cond_2

    .line 15
    iget-wide v0, v0, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_2
    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 18
    check-cast p1, Le/a/y/a/j/o;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/y/a/e/e;->close()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Le/a/y/a/j/u;->I:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/y/a/j/u;->I:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/a/e/e;->close()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 5
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/a/j/o;->e0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/y/a/j/u;->G:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Le/a/y/a/e/d;->j:Z

    if-nez v0, :cond_1

    .line 3
    iget-boolean v0, p0, Le/a/y/a/e/d;->h:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v1, "featureShareImageInFlash"

    .line 5
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 7
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/a/j/o;->B2()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 9
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/y/a/e/e;->p0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 2
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/y/a/e/d;->v:Le/a/b0/o/a;

    const-string v2, "featureShareImageInFlash"

    .line 4
    invoke-interface {v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Le/a/y/a/j/o;->g9()V

    .line 6
    :cond_0
    invoke-interface {v0}, Le/a/y/a/j/o;->J9()V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/y/a/e/d;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/y/a/j/u;->d()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le/a/y/a/e/d;->k1(I)V

    :goto_0
    return-void
.end method

.method public y(Landroid/content/Intent;)Z
    .locals 4

    const-string v0, "viewIntent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "to_phone"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/y/a/e/d;->a:Le/a/y/a/e/e;

    .line 3
    check-cast v0, Le/a/y/a/j/o;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/a/y/a/e/d;->o:Le/a/y/b/g0;

    .line 5
    sget v2, Lcom/truecaller/flashsdk/R$string;->required_to_send:I

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/y/a/e/e;->l(Ljava/lang/String;)V

    :cond_0
    return p1
.end method
