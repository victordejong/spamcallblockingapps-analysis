.class public final Le/a/k/a/k/a$b;
.super Le/a/k/a/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k/a/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Number;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

.field public final d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/util/List;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Number;",
            ">;",
            "Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;",
            "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numbers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playingBehaviour"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/k/a/k/a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/k/a/k/a$b;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iput-object p2, p0, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    iput-object p3, p0, Le/a/k/a/k/a$b;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iput-object p4, p0, Le/a/k/a/k/a$b;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/a$b;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    return-object v0
.end method

.method public b()Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/k/a$b;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/k/a/k/a$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/k/a/k/a$b;

    .line 1
    iget-object v0, p0, Le/a/k/a/k/a$b;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    iget-object v1, p1, Le/a/k/a/k/a$b;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    iget-object v1, p1, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k/a/k/a$b;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    iget-object v1, p1, Le/a/k/a/k/a$b;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/k/a/k/a$b;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    iget-object p1, p1, Le/a/k/a/k/a$b;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

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
    iget-object v0, p0, Le/a/k/a/k/a$b;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

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

    iget-object v2, p0, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/k/a/k/a$b;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

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
    iget-object v2, p0, Le/a/k/a/k/a$b;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

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

    const-string v0, "Numbers(avatarXConfig="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1
    iget-object v1, p0, Le/a/k/a/k/a$b;->a:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", numbers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/a$b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playingBehaviour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k/a/k/a$b;->c:Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/k/a/k/a$b;->d:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
