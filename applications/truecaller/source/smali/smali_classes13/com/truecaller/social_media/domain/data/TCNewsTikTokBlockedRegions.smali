.class public final Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0010\u0010\n\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0005\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0004\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "regions",
        "copy",
        "(Ljava/lang/String;)Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getRegions",
        "<init>",
        "(Ljava/lang/String;)V",
        "social-media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final regions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;-><init>(Ljava/lang/String;ILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "regions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->copy(Ljava/lang/String;)Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;
    .locals 1

    const-string v0, "regions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    invoke-direct {v0, p1}, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    iget-object v0, p0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

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

.method public final getRegions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "TCNewsTikTokBlockedRegions(regions="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->regions:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
