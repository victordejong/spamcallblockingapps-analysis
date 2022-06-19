.class public final Le/a/k/a/k/l$c;
.super Le/a/k/a/k/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k/a/k/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V
    .locals 2

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object p5, v1

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    move-object p6, v1

    :cond_3
    const-string p7, "playingBehaviour"

    .line 1
    invoke-static {p1, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "url"

    invoke-static {p2, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v1}, Le/a/k/a/k/l;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/k/a/k/l$c;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object p2, p0, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    iput-boolean p4, p0, Le/a/k/a/k/l$c;->d:Z

    iput-object p5, p0, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    iput-object p6, p0, Le/a/k/a/k/l$c;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/l$c;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-object v0
.end method

.method public b()Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/l$c;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k/a/k/l$c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k/a/k/l$c;

    .line 1
    iget-object v0, p0, Le/a/k/a/k/l$c;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object v1, p1, Le/a/k/a/k/l$c;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/k/a/k/l$c;->d:Z

    iget-boolean v1, p1, Le/a/k/a/k/l$c;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/k/a/k/l$c;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    iget-object p1, p1, Le/a/k/a/k/l$c;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

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
    iget-object v0, p0, Le/a/k/a/k/l$c;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

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

    iget-object v2, p0, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/k/a/k/l$c;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/a/k/a/k/l$c;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Url(playingBehaviour="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/a/k/a/k/l$c;->a:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/l$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/l$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/k/a/k/l$c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", businessNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/l$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/k/a/k/l$c;->f:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
