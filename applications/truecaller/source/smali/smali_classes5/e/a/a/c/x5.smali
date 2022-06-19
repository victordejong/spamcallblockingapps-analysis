.class public final Le/a/a/c/x5;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/y5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/a/c/z5;",
        ">;",
        "Le/a/a/c/y5;"
    }
.end annotation


# instance fields
.field public b:I

.field public final c:Z

.field public final d:Le/a/a/c/f4;

.field public final e:Le/a/a/c/r3;

.field public final f:Le/a/a/i0;


# direct methods
.method public constructor <init>(ZLe/a/a/c/f4;Le/a/a/c/r3;Le/a/a/c/u5;Le/a/a/i0;)V
    .locals 1
    .param p1    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsBubbleIntent"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inputPresenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationAnalytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftEntityPresenter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "messagingSettings"

    invoke-static {p5, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-boolean p1, p0, Le/a/a/c/x5;->c:Z

    iput-object p2, p0, Le/a/a/c/x5;->d:Le/a/a/c/f4;

    iput-object p3, p0, Le/a/a/c/x5;->e:Le/a/a/c/r3;

    iput-object p5, p0, Le/a/a/c/x5;->f:Le/a/a/i0;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Le/a/a/c/x5;->b:I

    return-void
.end method


# virtual methods
.method public Kd(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/x5;->f:Le/a/a/i0;

    invoke-interface {v0, p1}, Le/a/a/i0;->d3(Z)V

    return-void
.end method

.method public Pb()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/z5;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/a/c/z5;->J0()V

    .line 3
    invoke-interface {v0}, Le/a/a/c/z5;->Zm()V

    :cond_0
    return-void
.end method

.method public Xh(I)V
    .locals 9

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/a/c/x5;->y2(IZ)V

    .line 2
    iget-object v1, p0, Le/a/a/c/x5;->e:Le/a/a/c/r3;

    check-cast v1, Le/a/a/c/s3;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "gif"

    goto :goto_0

    :cond_1
    const-string p1, "emoji"

    :goto_0
    move-object v8, p1

    .line 4
    iget-object p1, v1, Le/a/a/c/s3;->b:Le/a/q2/i0;

    const-string v0, "ImSwitchEmojiGif"

    const-string v1, "type"

    .line 5
    invoke-static {v0, v1}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v7, "selected"

    const-string v3, "name"

    const-string v5, "value"

    move-object v2, v7

    move-object v4, v8

    move-object v6, v1

    .line 6
    invoke-static/range {v2 .. v8}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 7
    invoke-static {v0, v2, v1, v3, p1}, Le/d/c/a/a;->O0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/i0;)V

    :goto_1
    return-void
.end method

.method public e0(Le/a/t/a/a/f;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-string v3, "gif"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v0, Le/a/a/c/x5;->e:Le/a/a/c/r3;

    .line 2
    iget v4, v1, Le/a/t/a/a/f;->e:I

    .line 3
    check-cast v3, Le/a/a/c/s3;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move-object/from16 v26, v2

    goto :goto_1

    :cond_0
    const-string v4, "searchBar"

    goto :goto_0

    :cond_1
    const-string v4, "trending"

    :goto_0
    move-object/from16 v17, v4

    .line 5
    iget-object v3, v3, Le/a/a/c/s3;->b:Le/a/q2/i0;

    const-string v4, "ImGifSelect"

    const-string v5, "type"

    .line 6
    invoke-static {v4, v5}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v15

    const-string v10, "source"

    const-string v11, "tenor"

    const-string v13, "name"

    const-string v16, "value"

    const-string v18, "tenorSelectType"

    move-object v5, v10

    move-object v6, v13

    move-object v7, v11

    move-object/from16 v8, v16

    move-object v9, v15

    move-object/from16 v12, v18

    move-object/from16 v14, v17

    move-object/from16 v26, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v18

    .line 7
    invoke-static/range {v5 .. v17}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v5

    const-string v6, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 8
    invoke-static {v4, v5, v2, v6, v3}, Le/d/c/a/a;->O0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/i0;)V

    .line 9
    :goto_1
    iget-object v2, v0, Le/a/a/c/x5;->d:Le/a/a/c/f4;

    invoke-interface {v2}, Le/a/a/c/f4;->Se()Z

    move-result v2

    const-string v5, "Uri.EMPTY"

    const-string v8, "Uri.parse(gif.nanoGif.url)"

    if-eqz v2, :cond_2

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 10
    iget-object v2, v1, Le/a/t/a/a/f;->b:Le/a/t/a/a/c;

    .line 11
    iget-object v2, v2, Le/a/t/a/a/c;->a:Ljava/lang/String;

    .line 12
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v7, v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, v1, Le/a/t/a/a/f;->c:Le/a/t/a/a/c;

    .line 14
    iget v8, v2, Le/a/t/a/a/c;->c:I

    .line 15
    iget v9, v2, Le/a/t/a/a/c;->d:I

    const/4 v10, 0x0

    .line 16
    iget-wide v11, v2, Le/a/t/a/a/c;->e:J

    const/4 v13, 0x0

    .line 17
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v14, v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v1, v1, Le/a/t/a/a/f;->c:Le/a/t/a/a/c;

    .line 19
    iget-object v15, v1, Le/a/t/a/a/c;->a:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3f945

    const-string v5, "tenor/gif"

    move-object/from16 v2, v26

    .line 20
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/GifEntity;

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 21
    iget-object v2, v1, Le/a/t/a/a/f;->b:Le/a/t/a/a/c;

    .line 22
    iget-object v2, v2, Le/a/t/a/a/c;->a:Ljava/lang/String;

    .line 23
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v7, v2

    invoke-static {v2, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v2, v1, Le/a/t/a/a/f;->b:Le/a/t/a/a/c;

    .line 25
    iget v8, v2, Le/a/t/a/a/c;->c:I

    .line 26
    iget v9, v2, Le/a/t/a/a/c;->d:I

    const/4 v10, 0x0

    .line 27
    iget-wide v11, v2, Le/a/t/a/a/c;->e:J

    const/4 v13, 0x0

    .line 28
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object v14, v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v1, v1, Le/a/t/a/a/f;->b:Le/a/t/a/a/c;

    .line 30
    iget-object v15, v1, Le/a/t/a/a/c;->a:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const v25, 0x3f945

    const-string v5, "tenor/gif"

    move-object/from16 v2, v26

    .line 31
    invoke-static/range {v2 .. v25}, Lcom/truecaller/messaging/data/types/Entity$a;->b(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILandroid/net/Uri;IIIJZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/BinaryEntity;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/GifEntity;

    .line 32
    :goto_2
    iget-object v2, v0, Le/a/a/c/x5;->d:Le/a/a/c/f4;

    invoke-interface {v2, v1}, Le/a/a/c/f4;->X2(Lcom/truecaller/messaging/data/types/GifEntity;)V

    return-void
.end method

.method public ne()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/x5;->d:Le/a/a/c/f4;

    invoke-interface {v0}, Le/a/a/c/f4;->d1()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Le/a/a/c/x5;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/z5;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/c/z5;->h1()V

    :cond_0
    return-void
.end method

.method public ta(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/a/c/x5;->y2(IZ)V

    return-void
.end method

.method public y2(IZ)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    iput p1, p0, Le/a/a/c/x5;->b:I

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z5;

    if-eqz p1, :cond_5

    .line 3
    iget-boolean v0, p0, Le/a/a/c/x5;->c:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Le/a/a/c/z5;->ez()V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/x5;->ne()Z

    move-result v0

    const v1, 0x7f0806fd

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1, v1, p2}, Le/a/a/c/z5;->zb(IZ)V

    return-void

    .line 7
    :cond_2
    iget v0, p0, Le/a/a/c/x5;->b:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const v0, 0x7f0804bf

    .line 8
    invoke-interface {p1, v0, p2}, Le/a/a/c/z5;->zb(IZ)V

    goto :goto_0

    .line 9
    :cond_4
    invoke-interface {p1, v1, p2}, Le/a/a/c/z5;->zb(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public zb()I
    .locals 1

    const v0, 0x7f1202aa

    return v0
.end method
