.class public final Le/a/k/a/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/a/f/g;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/k/a/f/g;->b:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/k/a/k/l;
    .locals 15

    move-object/from16 v3, p1

    .line 1
    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/k/a/f/g;->b()Le/a/k/a/k/l;

    move-result-object v0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    new-instance v8, Le/a/k/a/k/l$c;

    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    .line 4
    new-instance v0, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 5
    sget-object v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->FIRST_FRAME:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 6
    sget-object v4, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->PLAY_PARTLY_ONCE_THEN_BUFFER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 7
    invoke-direct {v0, v2, v4}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 8
    invoke-direct {v1, v0}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x38

    move-object v0, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v7}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Le/a/k/a/k/l$a;

    new-instance v10, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$a;-><init>(F)V

    .line 10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string v1, "Uri.fromFile(File(url.toString()))"

    invoke-static {v11, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Le/m/a/c/p1/h;

    move-object v1, p0

    iget-object v2, v1, Le/a/k/a/f/g;->a:Landroid/content/Context;

    invoke-direct {v12, v2}, Le/m/a/c/p1/h;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    const/16 v14, 0x8

    move-object v9, v0

    .line 11
    invoke-direct/range {v9 .. v14}, Le/a/k/a/k/l$a;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Landroid/net/Uri;Le/m/a/c/p1/h;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    :goto_1
    return-object v0
.end method

.method public b()Le/a/k/a/k/l;
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/k/a/f/g;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->Z5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x171

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v0, Le/a/k/a/k/l$c;

    new-instance v2, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;

    .line 5
    new-instance v1, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;

    .line 6
    sget-object v3, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;->FIRST_FRAME_WITH_LOADER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;

    .line 7
    sget-object v5, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;->FIRST_FRAME_WITH_LOADER:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;

    .line 8
    invoke-direct {v1, v3, v5}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$Partly;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback$LessThanPartly;)V

    .line 9
    invoke-direct {v2, v1}, Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour$Fallback;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    move-object v1, v0

    move-object v3, v4

    invoke-direct/range {v1 .. v8}, Le/a/k/a/k/l$c;-><init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V

    return-object v0
.end method
