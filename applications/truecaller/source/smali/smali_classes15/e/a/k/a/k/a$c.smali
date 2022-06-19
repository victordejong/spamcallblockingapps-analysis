.class public final Le/a/k/a/k/a$c;
.super Le/a/k/a/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k/a/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V
    .locals 1

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playingBehaviour"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Le/a/k/a/k/a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/k/a/k/a$c;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iput-object p2, p0, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/k/a/k/a$c;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-boolean p4, p0, Le/a/k/a/k/a$c;->d:Z

    iput-object p5, p0, Le/a/k/a/k/a$c;->e:Ljava/lang/String;

    iput-object p6, p0, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    iput-object p7, p0, Le/a/k/a/k/a$c;->g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;I)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v1 .. v8}, Le/a/k/a/k/a$c;-><init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;ZLjava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/a$c;->g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-object v0
.end method

.method public b()Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/a$c;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k/a/k/a$c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k/a/k/a$c;

    .line 1
    iget-object v0, p0, Le/a/k/a/k/a$c;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iget-object v1, p1, Le/a/k/a/k/a$c;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/a$c;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object v1, p1, Le/a/k/a/k/a$c;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/k/a/k/a$c;->d:Z

    iget-boolean v1, p1, Le/a/k/a/k/a$c;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/k/a/k/a$c;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/a/k/a$c;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/k/a/k/a$c;->g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    iget-object p1, p1, Le/a/k/a/k/a$c;->g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

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
    iget-object v0, p0, Le/a/k/a/k/a$c;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/a$c;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/k/a/k/a$c;->d:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/a$c;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/a/k/a/k/a$c;->g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    if-eqz v2, :cond_6

    .line 4
    invoke-virtual {v2}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Url(avatarXConfig="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/a/k/a/k/a$c;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/a$c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playingBehaviour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/a$c;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/k/a/k/a$c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", identifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/a$c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", businessNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/a$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/k/a/k/a$c;->g:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
