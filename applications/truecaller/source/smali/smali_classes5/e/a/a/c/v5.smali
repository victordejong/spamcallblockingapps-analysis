.class public Le/a/a/c/v5;
.super Le/a/a/c/u5;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public final c:Le/a/o5/u0;

.field public final d:Le/a/q2/a;

.field public final e:Le/a/o5/u1;

.field public final f:Le/a/p5/a0;

.field public final g:Le/a/b0/q/b;

.field public h:Landroid/net/Uri;

.field public i:Z

.field public j:I

.field public k:Le/a/a/c/u5$a;


# direct methods
.method public constructor <init>(ZLe/a/o5/u0;Le/a/q2/a;Le/a/o5/u1;Le/a/p5/a0;Le/a/b0/q/b;)V
    .locals 1
    .param p1    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "IsBubbleIntent"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/a/c/u5;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Le/a/a/c/v5;->j:I

    .line 3
    iput-boolean p1, p0, Le/a/a/c/v5;->b:Z

    .line 4
    iput-object p2, p0, Le/a/a/c/v5;->c:Le/a/o5/u0;

    .line 5
    iput-object p3, p0, Le/a/a/c/v5;->d:Le/a/q2/a;

    .line 6
    iput-object p4, p0, Le/a/a/c/v5;->e:Le/a/o5/u1;

    .line 7
    iput-object p5, p0, Le/a/a/c/v5;->f:Le/a/p5/a0;

    .line 8
    iput-object p6, p0, Le/a/a/c/v5;->g:Le/a/b0/q/b;

    return-void
.end method


# virtual methods
.method public Hj()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/a/c/v5;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/messaging/data/types/Entity;->f:[Ljava/lang/String;

    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->e:[Ljava/lang/String;

    invoke-static {v0, v1}, Lw3/c/a/a/a/a;->b([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public Ij(Le/a/a/c/u5$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/v5;->k:Le/a/a/c/u5$a;

    return-void
.end method

.method public Jj(I)V
    .locals 0

    .line 1
    iput p1, p0, Le/a/a/c/v5;->j:I

    return-void
.end method

.method public Kj()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/a/c/v5;->k:Le/a/a/c/u5$a;

    return-void
.end method

.method public Lj(Lcom/truecaller/messaging/linkpreviews/LinkMetaData;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    iget v1, p0, Le/a/a/c/v5;->j:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3
    iget-object v0, p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/c/w5;

    .line 6
    iget-object v2, p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->b:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->c:Ljava/lang/String;

    .line 8
    invoke-interface {v1, v2, p1, v0}, Le/a/a/c/w5;->P4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 9
    :cond_2
    check-cast v0, Le/a/a/c/w5;

    invoke-interface {v0}, Le/a/a/c/w5;->n1()V

    :goto_1
    return-void
.end method

.method public final Mj(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Le/a/a/c/v5;->e:Le/a/o5/u1;

    invoke-interface {v1, v0}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 5
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Le/a/a/c/v5;->c:Le/a/o5/u0;

    iget v4, p0, Le/a/a/c/v5;->j:I

    invoke-interface {v3, v4}, Le/a/o5/u0;->d(I)J

    move-result-wide v3

    .line 7
    iget v5, p0, Le/a/a/c/v5;->j:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const-string v5, "android.intent.extra.videoQuality"

    .line 8
    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "sms"

    .line 9
    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    const-string v5, "android.intent.extra.sizeLimit"

    .line 10
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 11
    :cond_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Le/a/a/c/v5;->c:Le/a/o5/u0;

    invoke-interface {v6, v3, v4}, Le/a/o5/u0;->c(J)J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    .line 12
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v3, v3

    const-string v4, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 13
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    :cond_4
    :goto_0
    iput-boolean p1, p0, Le/a/a/c/v5;->i:Z

    .line 15
    iget-object v3, p0, Le/a/a/c/v5;->f:Le/a/p5/a0;

    const-string v4, "android.permission.CAMERA"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 16
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/w5;

    invoke-interface {v0, v4}, Le/a/a/c/w5;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/w5;

    invoke-interface {v0}, Le/a/a/c/w5;->va()V

    goto :goto_1

    .line 18
    :cond_5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/w5;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Le/a/a/c/w5;->Te(I)V

    :goto_1
    move v0, v1

    :cond_6
    if-eqz v0, :cond_8

    .line 19
    iget-object v0, p0, Le/a/a/c/v5;->g:Le/a/b0/q/b;

    invoke-interface {v0}, Le/a/b0/q/b;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    const-string v1, "output"

    .line 20
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_7

    .line 21
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/w5;

    const/16 v1, 0x65

    invoke-interface {v0, v2, v1}, Le/a/a/c/w5;->Dj(Landroid/content/Intent;I)Z

    move-result v0

    goto :goto_2

    .line 22
    :cond_7
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/w5;

    const/16 v1, 0x64

    invoke-interface {v0, v2, v1}, Le/a/a/c/w5;->Dj(Landroid/content/Intent;I)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_8

    .line 23
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/w5;

    const v1, 0x7f1206f7

    invoke-interface {v0, v1}, Le/a/a/c/w5;->a(I)V

    .line 24
    iget-object v0, p0, Le/a/a/c/v5;->e:Le/a/o5/u1;

    iget-object v1, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    invoke-interface {v0, v1}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    .line 25
    :cond_8
    iget-object v0, p0, Le/a/a/c/v5;->d:Le/a/q2/a;

    const-string v8, "ConversationPickerClick"

    const-string v6, "type"

    .line 26
    invoke-static {v8, v6}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 27
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_9

    const-string p1, "video"

    goto :goto_3

    :cond_9
    const-string p1, "photo"

    :goto_3
    move-object v7, p1

    const-string v2, "name"

    const-string v4, "value"

    move-object v1, v6

    move-object v3, v7

    move-object v5, v10

    .line 28
    invoke-static/range {v1 .. v9}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object p1

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 29
    invoke-static {p1, v10, v1, v0}, Le/d/c/a/a;->x0(Le/a/l5/a/p3$b;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public hh(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "output_uri"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    const-string v0, "transport_type"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/c/v5;->j:I

    :cond_0
    return-void
.end method

.method public m2(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    const-string v1, "output_uri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2
    iget v0, p0, Le/a/a/c/v5;->j:I

    const-string v1, "transport_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/16 p3, 0x64

    if-eq p1, p3, :cond_0

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    goto :goto_4

    .line 1
    :cond_0
    iget-object v0, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-ne p2, v1, :cond_5

    const/4 p2, 0x1

    if-ne p1, p3, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p3, p0, Le/a/a/c/v5;->k:Le/a/a/c/u5$a;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_2

    .line 3
    sget-object p3, Lcom/truecaller/messaging/conversation/draft/DraftMode;->CAPTURE_PHOTO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/truecaller/messaging/conversation/draft/DraftMode;->CAPTURE_VIDEO:Lcom/truecaller/messaging/conversation/draft/DraftMode;

    :goto_1
    move-object v2, p3

    .line 4
    new-instance p3, Lcom/truecaller/messaging/conversation/draft/DraftUri;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->IMAGE:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/truecaller/messaging/conversation/draft/UriTypeHint;->VIDEO:Lcom/truecaller/messaging/conversation/draft/UriTypeHint;

    :goto_2
    invoke-direct {p3, v0, p1, p2}, Lcom/truecaller/messaging/conversation/draft/DraftUri;-><init>(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/draft/UriTypeHint;Z)V

    .line 5
    iget-object v1, p0, Le/a/a/c/v5;->k:Le/a/a/c/u5$a;

    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    invoke-interface/range {v1 .. v9}, Le/a/a/c/u5$a;->dc(Lcom/truecaller/messaging/conversation/draft/DraftMode;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZJI)V

    goto :goto_3

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/a/c/v5;->e:Le/a/o5/u1;

    invoke-interface {p1, v0}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    goto :goto_3

    .line 7
    :cond_5
    iget-object p1, p0, Le/a/a/c/v5;->e:Le/a/o5/u1;

    invoke-interface {p1, v0}, Le/a/o5/u1;->b(Landroid/net/Uri;)V

    :goto_3
    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Le/a/a/c/v5;->h:Landroid/net/Uri;

    :cond_6
    :goto_4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/v5;->f:Le/a/p5/a0;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, p3, v0}, Le/a/p5/a0;->g([Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Le/a/a/c/v5;->i:Z

    invoke-virtual {p0, p1}, Le/a/a/c/v5;->Mj(Z)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
