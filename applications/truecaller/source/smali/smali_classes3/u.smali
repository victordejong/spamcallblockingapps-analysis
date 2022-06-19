.class public final Lu;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lu;->a:I

    iput-object p2, p0, Lu;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lu;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    .line 1
    iget-object v1, v0, Lu;->b:Ljava/lang/Object;

    check-cast v1, Le/a/k/b/b;

    .line 2
    sget-object v2, Le/a/k/b/b;->c:[Ls1/a/l;

    .line 3
    invoke-virtual {v1}, Le/a/k/b/b;->PA()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xefff

    move/from16 v16, p2

    .line 4
    invoke-static/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/k/b/b;->OA(Le/a/k/b/b;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void

    .line 5
    :cond_0
    throw v2

    .line 6
    :cond_1
    iget-object v1, v0, Lu;->b:Ljava/lang/Object;

    check-cast v1, Le/a/k/b/b;

    .line 7
    sget-object v2, Le/a/k/b/b;->c:[Ls1/a/l;

    .line 8
    invoke-virtual {v1}, Le/a/k/b/b;->PA()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xfdff

    move/from16 v13, p2

    .line 9
    invoke-static/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/k/b/b;->OA(Le/a/k/b/b;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void

    .line 10
    :cond_2
    iget-object v1, v0, Lu;->b:Ljava/lang/Object;

    check-cast v1, Le/a/k/b/b;

    .line 11
    sget-object v2, Le/a/k/b/b;->c:[Ls1/a/l;

    .line 12
    invoke-virtual {v1}, Le/a/k/b/b;->PA()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xfeff

    move/from16 v12, p2

    .line 13
    invoke-static/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/k/b/b;->OA(Le/a/k/b/b;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 14
    iget-object v1, v0, Lu;->b:Ljava/lang/Object;

    check-cast v1, Le/a/k/b/b;

    .line 15
    sget-object v4, Le/a/k/b/b;->c:[Ls1/a/l;

    .line 16
    new-instance v4, Le/a/k/a/k/a$c;

    .line 17
    invoke-virtual {v1}, Le/a/k/b/b;->PA()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v6

    .line 18
    new-instance v8, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    .line 19
    new-instance v5, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 20
    sget-object v7, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 21
    sget-object v9, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->WAIT_FOR_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 22
    invoke-direct {v5, v7, v9}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 23
    invoke-direct {v8, v5}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    .line 24
    new-instance v12, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    sget-object v5, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->DEBUG_DIALOG:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v7, "debug_call_id"

    const-string v9, "debug_video_id"

    invoke-direct {v12, v5, v7, v9}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;-><init>(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x38

    const-string v7, "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4"

    move-object v5, v4

    .line 25
    invoke-direct/range {v5 .. v13}, Le/a/k/a/k/a$c;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    iput-object v4, v1, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    .line 26
    invoke-virtual {v1}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object v4

    iget-object v4, v4, Le/a/k/m/j;->e:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    iget-object v1, v1, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    invoke-static {v4, v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;->g(Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Le/a/k/a/k/a;Ljava/lang/String;I)V

    goto :goto_0

    .line 27
    :cond_4
    iget-object v1, v0, Lu;->b:Ljava/lang/Object;

    check-cast v1, Le/a/k/b/b;

    .line 28
    sget-object v4, Le/a/k/b/b;->c:[Ls1/a/l;

    .line 29
    new-instance v4, Le/a/k/a/k/a$a;

    invoke-virtual {v1}, Le/a/k/b/b;->PA()Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v5

    invoke-direct {v4, v5}, Le/a/k/a/k/a$a;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    iput-object v4, v1, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    .line 30
    invoke-virtual {v1}, Le/a/k/b/b;->QA()Le/a/k/m/j;

    move-result-object v4

    iget-object v4, v4, Le/a/k/m/j;->e:Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;

    iget-object v1, v1, Le/a/k/b/b;->b:Le/a/k/a/k/a;

    invoke-static {v4, v1, v2, v3}, Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;->g(Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;Le/a/k/a/k/a;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
