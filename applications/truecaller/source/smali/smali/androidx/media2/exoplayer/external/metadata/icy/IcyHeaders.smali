.class public final Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders$a;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    if-eq p6, v0, :cond_1

    if-lez p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->p(Z)V

    .line 3
    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    .line 4
    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->c:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->d:Ljava/lang/String;

    .line 7
    iput-boolean p5, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->e:Z

    .line 8
    iput p6, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->b:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->d:Ljava/lang/String;

    .line 14
    sget v0, Ln3/y/b/a/x0/x;->a:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->e:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    return-void
.end method

.method public static a(Ljava/util/Map;)Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;"
        }
    .end annotation

    const-string v0, "Invalid metadata interval: "

    const-string v1, "icy-br"

    .line 1
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 v5, v5, 0x3e8

    if-lez v5, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :try_start_1
    const-string v6, "Invalid bitrate: "

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    move v5, v2

    goto :goto_2

    :goto_1
    move v6, v5

    goto :goto_3

    :catch_0
    move v5, v2

    :catch_1
    const-string v6, "Invalid bitrate header: "

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v6, v2

    move v1, v4

    :goto_3
    const-string v5, "icy-genre"

    .line 6
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    const/4 v7, 0x0

    if-eqz v5, :cond_4

    .line 7
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    move v1, v3

    goto :goto_4

    :cond_4
    move-object v8, v7

    :goto_4
    const-string v5, "icy-name"

    .line 8
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_5

    .line 9
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v9, v1

    move v1, v3

    goto :goto_5

    :cond_5
    move-object v9, v7

    :goto_5
    const-string v5, "icy-url"

    .line 10
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_6

    .line 11
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    move v1, v3

    goto :goto_6

    :cond_6
    move-object v10, v7

    :goto_6
    const-string v5, "icy-pub"

    .line 12
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_7

    .line 13
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v11, v1

    move v1, v3

    goto :goto_7

    :cond_7
    move v11, v4

    :goto_7
    const-string v5, "icy-metaint"

    .line 14
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_b

    .line 15
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 16
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    if-lez v4, :cond_8

    move v2, v4

    goto :goto_9

    .line 17
    :cond_8
    :try_start_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_8
    move v3, v1

    :goto_9
    move v1, v3

    goto :goto_a

    :catch_2
    move v2, v4

    .line 18
    :catch_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_a

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_b
    :goto_a
    if-eqz v1, :cond_c

    .line 19
    new-instance p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    move-object v5, p0

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move v11, v2

    invoke-direct/range {v5 .. v11}, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object v7, p0

    :cond_c
    return-object v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;

    .line 3
    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    iget v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->b:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->b:Ljava/lang/String;

    .line 4
    invoke-static {v2, v3}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->c:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->c:Ljava/lang/String;

    .line 5
    invoke-static {v2, v3}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->d:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->d:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->e:Z

    iget-boolean v3, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->e:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    iget p1, p1, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->e:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    add-int/2addr v1, v0

    return v1
.end method

.method public j()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Landroidx/media2/exoplayer/external/Format;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->c:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->b:Ljava/lang/String;

    iget v2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    iget v3, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    const/16 v4, 0x50

    invoke-static {v0, v4}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1, v4}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "IcyHeaders: name=\""

    const-string v6, "\", genre=\""

    invoke-static {v4, v5, v0, v6, v1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", metadataInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-boolean p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->e:Z

    .line 6
    sget v0, Ln3/y/b/a/x0/x;->a:I

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Landroidx/media2/exoplayer/external/metadata/icy/IcyHeaders;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
