.class public final Le/a/k/a/k/l$a;
.super Le/a/k/a/k/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k/a/k/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

.field public final b:Landroid/net/Uri;

.field public final c:Le/m/a/c/p1/h;

.field public final d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Landroid/net/Uri;Le/m/a/c/p1/h;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V
    .locals 0

    and-int/lit8 p4, p5, 0x8

    const-string p4, "playingBehaviour"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "uri"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "contentDataSource"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 2
    invoke-direct {p0, p4}, Le/a/k/a/k/l;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/k/a/k/l$a;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object p2, p0, Le/a/k/a/k/l$a;->b:Landroid/net/Uri;

    iput-object p3, p0, Le/a/k/a/k/l$a;->c:Le/m/a/c/p1/h;

    iput-object p4, p0, Le/a/k/a/k/l$a;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/l$a;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-object v0
.end method

.method public b()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/l$a;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k/a/k/l$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k/a/k/l$a;

    .line 1
    iget-object v0, p0, Le/a/k/a/k/l$a;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object v1, p1, Le/a/k/a/k/l$a;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/l$a;->b:Landroid/net/Uri;

    iget-object v1, p1, Le/a/k/a/k/l$a;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/l$a;->c:Le/m/a/c/p1/h;

    iget-object v1, p1, Le/a/k/a/k/l$a;->c:Le/m/a/c/p1/h;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/k/a/k/l$a;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    iget-object p1, p1, Le/a/k/a/k/l$a;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 4
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k/a/k/l$a;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/l$a;->b:Landroid/net/Uri;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/l$a;->c:Le/m/a/c/p1/h;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/a/k/a/k/l$a;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LocalDataUri(playingBehaviour="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/a/k/a/k/l$a;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/l$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDataSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/l$a;->c:Le/m/a/c/p1/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/k/a/k/l$a;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
