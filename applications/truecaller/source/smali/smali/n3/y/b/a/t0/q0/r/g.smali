.class public final Ln3/y/b/a/t0/q0/r/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/b0$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/t0/q0/r/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/y/b/a/w0/b0$a<",
        "Ln3/y/b/a/t0/q0/r/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ljava/util/regex/Pattern;

.field public static final B:Ljava/util/regex/Pattern;

.field public static final C:Ljava/util/regex/Pattern;

.field public static final D:Ljava/util/regex/Pattern;

.field public static final E:Ljava/util/regex/Pattern;

.field public static final F:Ljava/util/regex/Pattern;

.field public static final G:Ljava/util/regex/Pattern;

.field public static final H:Ljava/util/regex/Pattern;

.field public static final I:Ljava/util/regex/Pattern;

.field public static final J:Ljava/util/regex/Pattern;

.field public static final K:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;

.field public static final j:Ljava/util/regex/Pattern;

.field public static final k:Ljava/util/regex/Pattern;

.field public static final l:Ljava/util/regex/Pattern;

.field public static final m:Ljava/util/regex/Pattern;

.field public static final n:Ljava/util/regex/Pattern;

.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;

.field public static final r:Ljava/util/regex/Pattern;

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Ljava/util/regex/Pattern;

.field public static final w:Ljava/util/regex/Pattern;

.field public static final x:Ljava/util/regex/Pattern;

.field public static final y:Ljava/util/regex/Pattern;

.field public static final z:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ln3/y/b/a/t0/q0/r/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->b:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->c:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->d:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->e:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->f:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->g:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->h:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->i:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->j:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->k:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->l:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->m:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->n:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->o:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->p:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->q:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->r:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->s:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->t:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->u:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->v:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->w:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->x:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->y:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->z:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->A:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->B:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->C:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->D:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->E:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 31
    invoke-static {v0}, Ln3/y/b/a/t0/q0/r/g;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->F:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 32
    invoke-static {v0}, Ln3/y/b/a/t0/q0/r/g;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->G:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 33
    invoke-static {v0}, Ln3/y/b/a/t0/q0/r/g;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->H:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->I:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->J:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ln3/y/b/a/t0/q0/r/g;->K:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/y/b/a/t0/q0/r/d;->n:Ln3/y/b/a/t0/q0/r/d;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Ln3/y/b/a/t0/q0/r/g;->a:Ln3/y/b/a/t0/q0/r/d;

    return-void
.end method

.method public constructor <init>(Ln3/y/b/a/t0/q0/r/d;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ln3/y/b/a/t0/q0/r/g;->a:Ln3/y/b/a/t0/q0/r/d;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    const-string v1, "=("

    const-string v2, "NO"

    const-string v3, "|"

    invoke-static {v0, p0, v1, v2, v3}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "YES"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->w:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 2
    invoke-static {p0, v0, v1, p2}, Ln3/y/b/a/t0/q0/r/g;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x2c

    const-string v4, "video/mp4"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 4
    sget-object p1, Ln3/y/b/a/t0/q0/r/g;->x:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Ln3/y/b/a/c;->d:Ljava/util/UUID;

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v4, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance p1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    sget-object p2, Ln3/y/b/a/c;->d:Ljava/util/UUID;

    invoke-static {p0}, Ln3/y/b/a/x0/x;->q(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    invoke-direct {p1, p2, v0, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    sget-object p1, Ln3/y/b/a/t0/q0/r/g;->x:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 12
    sget-object p1, Ln3/y/b/a/c;->e:Ljava/util/UUID;

    if-eqz p0, :cond_2

    .line 13
    array-length p2, p0

    goto :goto_0

    :cond_2
    move p2, v5

    :goto_0
    add-int/lit8 p2, p2, 0x20

    .line 14
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const p2, 0x70737368    # 3.013775E29f

    .line 16
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 18
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 19
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_3

    .line 20
    array-length p2, p0

    if-eqz p2, :cond_3

    .line 21
    array-length p2, p0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 23
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 24
    new-instance p2, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-direct {p2, p1, v4, p0}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p2

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "cenc"

    :goto_1
    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static f(Ln3/y/b/a/t0/q0/r/g$a;Ljava/lang/String;)Ln3/y/b/a/t0/q0/r/d;
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v40, v10

    move v10, v9

    move/from16 v9, v40

    .line 11
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/q0/r/g$a;->a()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 12
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/q0/r/g$a;->b()Ljava/lang/String;

    move-result-object v13

    const-string v14, "#EXT"

    .line 13
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 14
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v14, "#EXT-X-DEFINE"

    .line 15
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 16
    sget-object v14, Ln3/y/b/a/t0/q0/r/g;->B:Ljava/util/regex/Pattern;

    .line 17
    invoke-static {v13, v14, v11}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ln3/y/b/a/t0/q0/r/g;->I:Ljava/util/regex/Pattern;

    .line 18
    invoke-static {v13, v15, v11}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 19
    invoke-virtual {v11, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v14, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 20
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const-string v14, "#EXT-X-MEDIA"

    .line 21
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 22
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move/from16 v17, v10

    :goto_2
    move-object/from16 v19, v12

    goto/16 :goto_8

    :cond_3
    const-string v14, "#EXT-X-SESSION-KEY"

    .line 23
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 24
    sget-object v14, Ln3/y/b/a/t0/q0/r/g;->v:Ljava/util/regex/Pattern;

    const-string v15, "identity"

    .line 25
    invoke-static {v13, v14, v15, v11}, Ln3/y/b/a/t0/q0/r/g;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 26
    invoke-static {v13, v14, v11}, Ln3/y/b/a/t0/q0/r/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 27
    sget-object v15, Ln3/y/b/a/t0/q0/r/g;->u:Ljava/util/regex/Pattern;

    invoke-static {v13, v15, v11}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 28
    invoke-static {v13}, Ln3/y/b/a/t0/q0/r/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 29
    new-instance v15, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    move/from16 v17, v10

    const/4 v10, 0x1

    move-object/from16 v18, v7

    new-array v7, v10, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    const/16 v16, 0x0

    aput-object v14, v7, v16

    .line 30
    invoke-direct {v15, v13, v10, v7}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    .line 31
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_4
    move-object/from16 v18, v7

    move/from16 v17, v10

    goto/16 :goto_7

    :cond_5
    move-object/from16 v18, v7

    move/from16 v17, v10

    const-string v7, "#EXT-X-STREAM-INF"

    .line 32
    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "CLOSED-CAPTIONS=NONE"

    .line 33
    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    or-int/2addr v9, v7

    .line 34
    sget-object v7, Ln3/y/b/a/t0/q0/r/g;->g:Ljava/util/regex/Pattern;

    invoke-static {v13, v7}, Ln3/y/b/a/t0/q0/r/g;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v7

    .line 35
    sget-object v10, Ln3/y/b/a/t0/q0/r/g;->b:Ljava/util/regex/Pattern;

    .line 36
    invoke-static {v13, v10, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 37
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 38
    :cond_6
    sget-object v10, Ln3/y/b/a/t0/q0/r/g;->i:Ljava/util/regex/Pattern;

    invoke-static {v13, v10, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v23

    .line 39
    sget-object v10, Ln3/y/b/a/t0/q0/r/g;->j:Ljava/util/regex/Pattern;

    .line 40
    invoke-static {v13, v10, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v14, "x"

    .line 41
    invoke-virtual {v10, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    .line 42
    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v19, 0x1

    .line 43
    aget-object v10, v10, v19

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-lez v14, :cond_8

    if-gtz v10, :cond_7

    goto :goto_3

    :cond_7
    move v15, v14

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v10, -0x1

    const/4 v15, -0x1

    :goto_4
    move/from16 v27, v10

    move/from16 v26, v15

    goto :goto_5

    :cond_9
    const/16 v26, -0x1

    const/16 v27, -0x1

    .line 44
    :goto_5
    sget-object v10, Ln3/y/b/a/t0/q0/r/g;->k:Ljava/util/regex/Pattern;

    .line 45
    invoke-static {v13, v10, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 46
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    move/from16 v28, v14

    goto :goto_6

    :cond_a
    const/high16 v28, -0x40800000    # -1.0f

    .line 47
    :goto_6
    sget-object v10, Ln3/y/b/a/t0/q0/r/g;->c:Ljava/util/regex/Pattern;

    invoke-static {v13, v10, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 48
    sget-object v14, Ln3/y/b/a/t0/q0/r/g;->d:Ljava/util/regex/Pattern;

    invoke-static {v13, v14, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 49
    sget-object v15, Ln3/y/b/a/t0/q0/r/g;->e:Ljava/util/regex/Pattern;

    .line 50
    invoke-static {v13, v15, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    move/from16 v36, v9

    .line 51
    sget-object v9, Ln3/y/b/a/t0/q0/r/g;->f:Ljava/util/regex/Pattern;

    .line 52
    invoke-static {v13, v9, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 53
    invoke-virtual/range {p0 .. p0}, Ln3/y/b/a/t0/q0/r/g$a;->b()Ljava/lang/String;

    move-result-object v13

    .line 54
    invoke-static {v13, v11}, Ln3/y/b/a/t0/q0/r/g;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 55
    invoke-static {v1, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->l1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 56
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v21, "application/x-mpegURL"

    move/from16 v25, v7

    .line 57
    invoke-static/range {v19 .. v31}, Landroidx/media2/exoplayer/external/Format;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v31

    move-object/from16 v19, v12

    .line 58
    new-instance v12, Ln3/y/b/a/t0/q0/r/d$b;

    move-object/from16 v29, v12

    move-object/from16 v30, v13

    move-object/from16 v32, v10

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    move-object/from16 v35, v9

    invoke-direct/range {v29 .. v35}, Ln3/y/b/a/t0/q0/r/d$b;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_b

    .line 61
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_b
    new-instance v13, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;

    move-object/from16 v20, v8

    int-to-long v7, v7

    move-object/from16 v29, v13

    move-wide/from16 v30, v7

    move-object/from16 v32, v10

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    move-object/from16 v35, v9

    invoke-direct/range {v29 .. v35}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, v17

    move-object/from16 v7, v18

    move-object/from16 v12, v19

    move-object/from16 v8, v20

    move/from16 v9, v36

    goto/16 :goto_0

    :cond_c
    :goto_7
    move-object/from16 v20, v8

    goto/16 :goto_2

    :goto_8
    move/from16 v10, v17

    move-object/from16 v7, v18

    move-object/from16 v12, v19

    move-object/from16 v8, v20

    goto/16 :goto_0

    :cond_d
    move-object/from16 v18, v7

    move-object/from16 v20, v8

    move/from16 v17, v10

    move-object/from16 v19, v12

    .line 64
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v10, 0x0

    .line 66
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    if-ge v10, v12, :cond_10

    .line 67
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/y/b/a/t0/q0/r/d$b;

    .line 68
    iget-object v14, v12, Ln3/y/b/a/t0/q0/r/d$b;->a:Landroid/net/Uri;

    invoke-virtual {v8, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 69
    iget-object v14, v12, Ln3/y/b/a/t0/q0/r/d$b;->b:Landroidx/media2/exoplayer/external/Format;

    iget-object v14, v14, Landroidx/media2/exoplayer/external/Format;->g:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-nez v14, :cond_e

    const/4 v14, 0x1

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    :goto_a
    invoke-static {v14}, Landroid/support/v4/media/session/MediaSessionCompat;->y(Z)V

    .line 70
    new-instance v14, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    iget-object v15, v12, Ln3/y/b/a/t0/q0/r/d$b;->a:Landroid/net/Uri;

    .line 71
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-direct {v14, v13, v13, v15}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 72
    iget-object v13, v12, Ln3/y/b/a/t0/q0/r/d$b;->b:Landroidx/media2/exoplayer/external/Format;

    new-instance v15, Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v22, v0

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    const/16 v23, 0x0

    aput-object v14, v0, v23

    invoke-direct {v15, v0}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 73
    iget-object v0, v13, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v13, v0, v15}, Landroidx/media2/exoplayer/external/Format;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v25

    .line 74
    new-instance v0, Ln3/y/b/a/t0/q0/r/d$b;

    iget-object v13, v12, Ln3/y/b/a/t0/q0/r/d$b;->a:Landroid/net/Uri;

    iget-object v14, v12, Ln3/y/b/a/t0/q0/r/d$b;->c:Ljava/lang/String;

    iget-object v15, v12, Ln3/y/b/a/t0/q0/r/d$b;->d:Ljava/lang/String;

    move-object/from16 p0, v8

    iget-object v8, v12, Ln3/y/b/a/t0/q0/r/d$b;->e:Ljava/lang/String;

    iget-object v12, v12, Ln3/y/b/a/t0/q0/r/d$b;->f:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v24, v13

    move-object/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v8

    move-object/from16 v29, v12

    invoke-direct/range {v23 .. v29}, Ln3/y/b/a/t0/q0/r/d$b;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    move-object/from16 v22, v0

    move-object/from16 p0, v8

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p0

    move-object/from16 v0, v22

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    move-object v8, v13

    .line 76
    :goto_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_2a

    .line 77
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 78
    sget-object v12, Ln3/y/b/a/t0/q0/r/g;->C:Ljava/util/regex/Pattern;

    invoke-static {v10, v12, v11}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 79
    sget-object v14, Ln3/y/b/a/t0/q0/r/g;->B:Ljava/util/regex/Pattern;

    invoke-static {v10, v14, v11}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 80
    sget-object v15, Ln3/y/b/a/t0/q0/r/g;->x:Ljava/util/regex/Pattern;

    invoke-static {v10, v15, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_11

    const/4 v15, 0x0

    goto :goto_d

    .line 81
    :cond_11
    invoke-static {v1, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->l1(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 82
    :goto_d
    sget-object v1, Ln3/y/b/a/t0/q0/r/g;->A:Ljava/util/regex/Pattern;

    invoke-static {v10, v1, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v35, v3

    .line 83
    sget-object v3, Ln3/y/b/a/t0/q0/r/g;->G:Ljava/util/regex/Pattern;

    move-object/from16 p0, v8

    const/4 v8, 0x0

    invoke-static {v10, v3, v8}, Ln3/y/b/a/t0/q0/r/g;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v3

    move-object/from16 v36, v7

    .line 84
    sget-object v7, Ln3/y/b/a/t0/q0/r/g;->H:Ljava/util/regex/Pattern;

    invoke-static {v10, v7, v8}, Ln3/y/b/a/t0/q0/r/g;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v7

    if-eqz v7, :cond_12

    or-int/lit8 v3, v3, 0x2

    .line 85
    :cond_12
    sget-object v7, Ln3/y/b/a/t0/q0/r/g;->F:Ljava/util/regex/Pattern;

    invoke-static {v10, v7, v8}, Ln3/y/b/a/t0/q0/r/g;->h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v7

    if-eqz v7, :cond_13

    or-int/lit8 v3, v3, 0x4

    .line 86
    :cond_13
    sget-object v7, Ln3/y/b/a/t0/q0/r/g;->D:Ljava/util/regex/Pattern;

    .line 87
    invoke-static {v10, v7, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v7, 0x0

    move/from16 v37, v9

    goto :goto_f

    :cond_14
    const-string v8, ","

    .line 89
    invoke-static {v7, v8}, Ln3/y/b/a/x0/x;->B(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "public.accessibility.describes-video"

    .line 90
    invoke-static {v7, v8}, Ln3/y/b/a/x0/x;->i([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/16 v8, 0x200

    goto :goto_e

    :cond_15
    const/4 v8, 0x0

    :goto_e
    move/from16 v37, v9

    const-string v9, "public.accessibility.transcribes-spoken-dialog"

    .line 91
    invoke-static {v7, v9}, Ln3/y/b/a/x0/x;->i([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    or-int/lit16 v8, v8, 0x1000

    :cond_16
    const-string v9, "public.accessibility.describes-music-and-sound"

    .line 92
    invoke-static {v7, v9}, Ln3/y/b/a/x0/x;->i([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    or-int/lit16 v8, v8, 0x400

    :cond_17
    const-string v9, "public.easy-to-read"

    .line 93
    invoke-static {v7, v9}, Ln3/y/b/a/x0/x;->i([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    or-int/lit16 v7, v8, 0x2000

    goto :goto_f

    :cond_18
    move v7, v8

    .line 94
    :goto_f
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    const-string v8, ":"

    invoke-static {v9, v12, v8, v14}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 95
    new-instance v8, Landroidx/media2/exoplayer/external/metadata/Metadata;

    const/4 v9, 0x1

    new-array v9, v9, [Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move/from16 v38, v0

    new-instance v0, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;

    move-object/from16 v39, v6

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v12, v14, v6}, Landroidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v6, 0x0

    aput-object v0, v9, v6

    invoke-direct {v8, v9}, Landroidx/media2/exoplayer/external/metadata/Metadata;-><init>([Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;)V

    .line 97
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->z:Ljava/util/regex/Pattern;

    invoke-static {v10, v0, v11}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v23

    sparse-switch v23, :sswitch_data_0

    :goto_10
    const/4 v9, -0x1

    goto :goto_11

    :sswitch_0
    const-string v9, "VIDEO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_10

    :cond_19
    const/4 v9, 0x3

    goto :goto_11

    :sswitch_1
    const-string v9, "AUDIO"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v9, 0x2

    goto :goto_11

    :sswitch_2
    const-string v9, "CLOSED-CAPTIONS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v9, 0x1

    goto :goto_11

    :sswitch_3
    const-string v9, "SUBTITLES"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v9, 0x0

    :goto_11
    packed-switch v9, :pswitch_data_0

    goto/16 :goto_16

    :pswitch_0
    const/4 v0, 0x0

    .line 98
    :goto_12
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 99
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/q0/r/d$b;

    .line 100
    iget-object v9, v1, Ln3/y/b/a/t0/q0/r/d$b;->c:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    goto :goto_13

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1e
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_1f

    .line 101
    iget-object v0, v1, Ln3/y/b/a/t0/q0/r/d$b;->b:Landroidx/media2/exoplayer/external/Format;

    .line 102
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    invoke-static {v1, v6}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 103
    iget v6, v0, Landroidx/media2/exoplayer/external/Format;->n:I

    .line 104
    iget v9, v0, Landroidx/media2/exoplayer/external/Format;->o:I

    .line 105
    iget v0, v0, Landroidx/media2/exoplayer/external/Format;->p:F

    move/from16 v31, v0

    move-object/from16 v26, v1

    move/from16 v29, v6

    move/from16 v30, v9

    goto :goto_14

    :cond_1f
    const/4 v0, 0x0

    move-object/from16 v26, v0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/high16 v31, -0x40800000    # -1.0f

    :goto_14
    if-eqz v26, :cond_20

    .line 106
    invoke-static/range {v26 .. v26}, Ln3/y/b/a/x0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_20
    const/4 v0, 0x0

    :goto_15
    move-object/from16 v25, v0

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v32, 0x0

    const-string v24, "application/x-mpegURL"

    move-object/from16 v23, v14

    move/from16 v33, v3

    move/from16 v34, v7

    .line 107
    invoke-static/range {v22 .. v34}, Landroidx/media2/exoplayer/external/Format;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIIFLjava/util/List;II)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 108
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v0, v1, v8}, Landroidx/media2/exoplayer/external/Format;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    if-nez v15, :cond_21

    goto :goto_16

    .line 109
    :cond_21
    new-instance v1, Ln3/y/b/a/t0/q0/r/d$a;

    invoke-direct {v1, v15, v0, v12, v14}, Ln3/y/b/a/t0/q0/r/d$a;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_16
    move-object/from16 v6, v39

    goto/16 :goto_1e

    :pswitch_1
    const/4 v0, 0x0

    .line 110
    :goto_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_23

    .line 111
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/y/b/a/t0/q0/r/d$b;

    .line 112
    iget-object v9, v6, Ln3/y/b/a/t0/q0/r/d$b;->d:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    goto :goto_18

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_23
    const/4 v6, 0x0

    :goto_18
    if-eqz v6, :cond_24

    .line 113
    iget-object v0, v6, Ln3/y/b/a/t0/q0/r/d$b;->b:Landroidx/media2/exoplayer/external/Format;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/Format;->f:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static {v0, v6}, Ln3/y/b/a/x0/x;->k(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_24
    const/4 v0, 0x0

    :goto_19
    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    .line 114
    invoke-static/range {v26 .. v26}, Ln3/y/b/a/x0/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_25
    const/4 v0, 0x0

    :goto_1a
    move-object/from16 v25, v0

    .line 115
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->h:Ljava/util/regex/Pattern;

    invoke-static {v10, v0, v11}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 116
    sget v6, Ln3/y/b/a/x0/x;->a:I

    const-string v6, "/"

    const/4 v9, 0x2

    .line 117
    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    .line 118
    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v29, v0

    goto :goto_1b

    :cond_26
    const/16 v29, -0x1

    :goto_1b
    const/16 v27, 0x0

    const/16 v28, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const-string v24, "application/x-mpegURL"

    move-object/from16 v23, v14

    move/from16 v32, v3

    move/from16 v33, v7

    move-object/from16 v34, v1

    .line 119
    invoke-static/range {v22 .. v34}, Landroidx/media2/exoplayer/external/Format;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;IIILjava/util/List;IILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    if-nez v15, :cond_27

    move-object v8, v0

    goto :goto_1d

    .line 120
    :cond_27
    new-instance v1, Ln3/y/b/a/t0/q0/r/d$a;

    .line 121
    iget-object v3, v0, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v0, v3, v8}, Landroidx/media2/exoplayer/external/Format;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 122
    invoke-direct {v1, v15, v0, v12, v14}, Ln3/y/b/a/t0/q0/r/d$a;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 123
    :pswitch_2
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->E:Ljava/util/regex/Pattern;

    invoke-static {v10, v0, v11}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "CC"

    .line 124
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    const/4 v6, 0x2

    .line 125
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "application/cea-608"

    goto :goto_1c

    :cond_28
    const/4 v6, 0x7

    .line 126
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v6, "application/cea-708"

    :goto_1c
    move/from16 v31, v0

    move-object/from16 v25, v6

    if-nez v13, :cond_29

    .line 127
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_29
    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v23, v14

    move/from16 v28, v3

    move/from16 v29, v7

    move-object/from16 v30, v1

    .line 128
    invoke-static/range {v22 .. v31}, Landroidx/media2/exoplayer/external/Format;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 129
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    :goto_1d
    move-object/from16 v6, v39

    goto :goto_1f

    :pswitch_3
    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v31, -0x1

    const-string v24, "application/x-mpegURL"

    const-string v25, "text/vtt"

    move-object/from16 v23, v14

    move/from16 v28, v3

    move/from16 v29, v7

    move-object/from16 v30, v1

    .line 130
    invoke-static/range {v22 .. v31}, Landroidx/media2/exoplayer/external/Format;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 131
    iget-object v1, v0, Landroidx/media2/exoplayer/external/Format;->l:Landroidx/media2/exoplayer/external/drm/DrmInitData;

    invoke-virtual {v0, v1, v8}, Landroidx/media2/exoplayer/external/Format;->a(Landroidx/media2/exoplayer/external/drm/DrmInitData;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    .line 132
    new-instance v1, Ln3/y/b/a/t0/q0/r/d$a;

    invoke-direct {v1, v15, v0, v12, v14}, Ln3/y/b/a/t0/q0/r/d$a;-><init>(Landroid/net/Uri;Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v39

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1e
    move-object/from16 v8, p0

    :goto_1f
    add-int/lit8 v0, v38, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v35

    move-object/from16 v7, v36

    move/from16 v9, v37

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v36, v7

    move-object/from16 p0, v8

    move/from16 v37, v9

    if-eqz v37, :cond_2b

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    goto :goto_20

    :cond_2b
    move-object v9, v13

    .line 134
    :goto_20
    new-instance v13, Ln3/y/b/a/t0/q0/r/d;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move-object/from16 v3, v36

    move-object/from16 v7, v18

    move-object/from16 v8, p0

    move/from16 v10, v17

    move-object/from16 v12, v19

    invoke-direct/range {v0 .. v12}, Ln3/y/b/a/t0/q0/r/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media2/exoplayer/external/Format;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Ln3/y/b/a/t0/q0/r/d;Ln3/y/b/a/t0/q0/r/g$a;Ljava/lang/String;)Ln3/y/b/a/t0/q0/r/e;
    .locals 79
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Ln3/y/b/a/t0/q0/r/f;->c:Z

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v12, v10

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v51, 0x0

    :goto_0
    const-wide/16 v35, -0x1

    const-string v9, ""

    move-object/from16 v70, v0

    move-object/from16 v37, v9

    move-object/from16 v7, v18

    move-object/from16 v8, v29

    move-object/from16 v53, v34

    move-wide/from16 v54, v35

    const/16 v50, 0x0

    const-wide/16 v71, 0x0

    move-wide/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, v25

    move-wide/from16 v24, v23

    move-wide/from16 v75, v12

    move/from16 v12, v16

    move-object/from16 v13, v17

    move-wide/from16 v16, v75

    move-wide/from16 v77, v19

    move/from16 v20, v22

    move-wide/from16 v22, v77

    .line 6
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/t0/q0/r/g$a;->a()Z

    move-result v34

    if-eqz v34, :cond_2e

    .line 7
    invoke-virtual/range {p1 .. p1}, Ln3/y/b/a/t0/q0/r/g$a;->b()Ljava/lang/String;

    move-result-object v5

    const-string v4, "#EXT"

    .line 8
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v4, "#EXT-X-PLAYLIST-TYPE"

    .line 10
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    sget-object v4, Ln3/y/b/a/t0/q0/r/g;->n:Ljava/util/regex/Pattern;

    invoke-static {v5, v4, v2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VOD"

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const-string v5, "EVENT"

    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v12, 0x2

    goto :goto_2

    :cond_2
    const-string v4, "#EXT-X-START"

    .line 14
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-wide v38, 0x412e848000000000L    # 1000000.0

    if-eqz v4, :cond_4

    .line 15
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->r:Ljava/util/regex/Pattern;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v5, v0, v4}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    mul-double v4, v4, v38

    double-to-long v10, v4

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    goto :goto_1

    :cond_4
    const-string v4, "#EXT-X-MAP"

    .line 17
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v0, "@"

    if-eqz v4, :cond_9

    .line 18
    sget-object v4, Ln3/y/b/a/t0/q0/r/g;->x:Ljava/util/regex/Pattern;

    invoke-static {v5, v4, v2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    move/from16 v74, v1

    .line 19
    sget-object v1, Ln3/y/b/a/t0/q0/r/g;->t:Ljava/util/regex/Pattern;

    invoke-static {v5, v1, v2}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    .line 22
    array-length v1, v0

    const/4 v5, 0x1

    if-le v1, v5, :cond_5

    .line 23
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    :cond_5
    move-wide/from16 v65, v28

    move-wide/from16 v67, v38

    goto :goto_3

    :cond_6
    move-wide/from16 v65, v28

    move-wide/from16 v67, v54

    :goto_3
    if-eqz v13, :cond_8

    if-eqz v8, :cond_7

    goto :goto_4

    .line 24
    :cond_7
    new-instance v0, Ln3/y/b/a/c0;

    const-string v1, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v0, v1}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_8
    :goto_4
    new-instance v0, Ln3/y/b/a/t0/q0/r/e$a;

    move-object/from16 v53, v0

    const/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, -0x1

    const-wide v60, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v62, 0x0

    const/16 v69, 0x0

    const-string v56, ""

    move-object/from16 v54, v4

    move-object/from16 v63, v13

    move-object/from16 v64, v8

    .line 26
    invoke-direct/range {v53 .. v69}, Ln3/y/b/a/t0/q0/r/e$a;-><init>(Ljava/lang/String;Ln3/y/b/a/t0/q0/r/e$a;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    const-wide/16 v28, 0x0

    move-wide/from16 v54, v35

    move/from16 v1, v74

    goto :goto_2

    :cond_9
    move/from16 v74, v1

    const-string v1, "#EXT-X-TARGETDURATION"

    .line 27
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 28
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->l:Ljava/util/regex/Pattern;

    invoke-static {v5, v0}, Ln3/y/b/a/t0/q0/r/g;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v4, 0xf4240

    mul-long v16, v0, v4

    :goto_5
    move-object/from16 v57, v3

    :goto_6
    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    :goto_7
    const/4 v3, 0x1

    :goto_8
    const/4 v10, 0x0

    goto/16 :goto_16

    :cond_a
    const-string v1, "#EXT-X-MEDIA-SEQUENCE"

    .line 29
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->o:Ljava/util/regex/Pattern;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v5, v0, v1}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v57, v3

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    move-wide/from16 v31, v24

    goto :goto_7

    :cond_b
    const-string v1, "#EXT-X-VERSION"

    .line 32
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 33
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->m:Ljava/util/regex/Pattern;

    invoke-static {v5, v0}, Ln3/y/b/a/t0/q0/r/g;->e(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v26

    goto :goto_5

    :cond_c
    const-string v1, "#EXT-X-DEFINE"

    .line 34
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 35
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->J:Ljava/util/regex/Pattern;

    invoke-static {v5, v0, v2}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object/from16 v1, v70

    .line 36
    iget-object v1, v1, Ln3/y/b/a/t0/q0/r/d;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 37
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 38
    :cond_d
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->B:Ljava/util/regex/Pattern;

    .line 39
    invoke-static {v5, v0, v2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ln3/y/b/a/t0/q0/r/g;->I:Ljava/util/regex/Pattern;

    .line 40
    invoke-static {v5, v1, v2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_9
    move-object/from16 v34, v9

    move/from16 v56, v14

    goto/16 :goto_10

    :cond_f
    move-object/from16 v1, v70

    const-string v4, "#EXTINF"

    .line 42
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 43
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->p:Ljava/util/regex/Pattern;

    .line 44
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v5, v0, v4}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v40

    move-object v4, v1

    mul-double v0, v40, v38

    double-to-long v0, v0

    move-wide/from16 v37, v0

    .line 45
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->q:Ljava/util/regex/Pattern;

    invoke-static {v5, v0, v9, v2}, Ln3/y/b/a/t0/q0/r/g;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v57, v3

    move-object/from16 v70, v4

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    move-wide/from16 v71, v37

    const/4 v3, 0x1

    const/4 v10, 0x0

    move-object/from16 v37, v0

    goto/16 :goto_16

    :cond_10
    move-object v4, v1

    const-string v1, "#EXT-X-KEY"

    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 47
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->u:Ljava/util/regex/Pattern;

    invoke-static {v5, v0, v2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v1, Ln3/y/b/a/t0/q0/r/g;->v:Ljava/util/regex/Pattern;

    const-string v8, "identity"

    .line 49
    invoke-static {v5, v1, v8, v2}, Ln3/y/b/a/t0/q0/r/g;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v13, "NONE"

    .line 50
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 51
    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    const/4 v13, 0x0

    goto :goto_a

    .line 52
    :cond_11
    sget-object v13, Ln3/y/b/a/t0/q0/r/g;->y:Ljava/util/regex/Pattern;

    invoke-static {v5, v13, v2}, Ln3/y/b/a/t0/q0/r/g;->j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 53
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v1, "AES-128"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 55
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->x:Ljava/util/regex/Pattern;

    invoke-static {v5, v0, v2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v57, v3

    move-object/from16 v70, v4

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    move-object v8, v13

    const/4 v3, 0x1

    const/4 v10, 0x0

    move-object v13, v0

    goto/16 :goto_16

    :cond_12
    if-nez v7, :cond_13

    .line 56
    invoke-static {v0}, Ln3/y/b/a/t0/q0/r/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 57
    :cond_13
    invoke-static {v5, v1, v2}, Ln3/y/b/a/t0/q0/r/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 58
    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    move-object/from16 v57, v3

    move-object/from16 v70, v4

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    move-object v8, v13

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v33, 0x0

    goto/16 :goto_16

    :cond_14
    move-object/from16 v57, v3

    move-object/from16 v70, v4

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    move-object v8, v13

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v13, 0x0

    goto/16 :goto_16

    :cond_15
    const-string v1, "#EXT-X-BYTERANGE"

    .line 59
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 60
    sget-object v1, Ln3/y/b/a/t0/q0/r/g;->s:Ljava/util/regex/Pattern;

    invoke-static {v5, v1, v2}, Ln3/y/b/a/t0/q0/r/g;->k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 62
    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 63
    array-length v1, v0

    const/4 v5, 0x1

    if-le v1, v5, :cond_16

    .line 64
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v28, v0

    :cond_16
    move-object/from16 v57, v3

    move-object/from16 v70, v4

    move v3, v5

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    goto/16 :goto_8

    :cond_17
    const/4 v0, 0x1

    const-string v1, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 65
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v0, 0x3a

    if-eqz v1, :cond_18

    .line 66
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v57, v3

    move-object/from16 v70, v4

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v14, 0x1

    goto/16 :goto_16

    :cond_18
    const-string v1, "#EXT-X-DISCONTINUITY"

    .line 67
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    add-int/lit8 v30, v30, 0x1

    move-object/from16 v57, v3

    move-object/from16 v70, v4

    goto/16 :goto_6

    :cond_19
    const-string v1, "#EXT-X-PROGRAM-DATE-TIME"

    .line 68
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-wide/16 v18, 0x0

    cmp-long v1, v22, v18

    if-nez v1, :cond_e

    .line 69
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v1, Ln3/y/b/a/x0/x;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 72
    new-instance v1, Ln3/y/b/a/c0;

    const-string v2, "Invalid date/time format: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_b
    invoke-direct {v1, v0}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    const/16 v0, 0x9

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1c

    goto :goto_c

    .line 74
    :cond_1c
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Z"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_c
    move-object/from16 v38, v4

    const/4 v0, 0x0

    goto :goto_d

    :cond_1d
    const/16 v0, 0xc

    .line 75
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    const/16 v5, 0xd

    .line 76
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v0, v5

    const/16 v5, 0xb

    .line 77
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v38, v4

    const-string v4, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    mul-int/lit8 v0, v0, -0x1

    .line 78
    :cond_1e
    :goto_d
    new-instance v4, Ljava/util/GregorianCalendar;

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 79
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    const/4 v5, 0x1

    .line 80
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    const/4 v5, 0x2

    .line 81
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v41, v5, -0x1

    const/4 v5, 0x3

    .line 82
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    const/4 v5, 0x4

    .line 83
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v43

    const/4 v5, 0x5

    .line 84
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v44

    const/4 v5, 0x6

    .line 85
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v45

    move-object/from16 v39, v4

    .line 86
    invoke-virtual/range {v39 .. v45}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v5, 0x8

    .line 87
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    move-object/from16 v34, v9

    if-nez v23, :cond_20

    .line 88
    new-instance v9, Ljava/math/BigDecimal;

    move/from16 v56, v14

    const-string v14, "0."

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v14, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_1f
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-direct {v9, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xe

    const/4 v5, 0x3

    .line 89
    invoke-virtual {v9, v5}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->intValue()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/util/Calendar;->set(II)V

    goto :goto_f

    :cond_20
    move/from16 v56, v14

    .line 90
    :goto_f
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    if-eqz v0, :cond_21

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr v4, v0

    .line 91
    :cond_21
    invoke-static {v4, v5}, Ln3/y/b/a/c;->a(J)J

    move-result-wide v0

    sub-long v22, v0, v51

    move-object/from16 v0, p0

    move-object/from16 v9, v34

    move-object/from16 v70, v38

    move/from16 v14, v56

    goto/16 :goto_17

    :cond_22
    :goto_10
    move-object/from16 v57, v3

    move-object/from16 v58, v8

    move-wide/from16 v59, v10

    const/4 v3, 0x1

    const/4 v10, 0x0

    goto/16 :goto_15

    :cond_23
    move-object/from16 v38, v4

    move-object/from16 v34, v9

    move/from16 v56, v14

    const-string v0, "#EXT-X-GAP"

    .line 92
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object/from16 v0, p0

    move-object/from16 v9, v34

    move-object/from16 v70, v38

    move/from16 v14, v56

    move/from16 v1, v74

    const/16 v50, 0x1

    goto/16 :goto_1

    :cond_24
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 93
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object/from16 v0, p0

    move-object/from16 v9, v34

    move-object/from16 v70, v38

    move/from16 v14, v56

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_25
    const-string v0, "#EXT-X-ENDLIST"

    .line 94
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v9, v34

    move-object/from16 v70, v38

    move/from16 v14, v56

    move/from16 v1, v74

    const/16 v27, 0x1

    goto/16 :goto_1

    :cond_26
    const-string v0, "#"

    .line 95
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    if-nez v13, :cond_27

    const/16 v45, 0x0

    goto :goto_11

    :cond_27
    if-eqz v8, :cond_28

    move-object/from16 v45, v8

    goto :goto_11

    .line 96
    :cond_28
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v45, v0

    :goto_11
    const-wide/16 v0, 0x1

    add-long v31, v31, v0

    cmp-long v0, v54, v35

    if-nez v0, :cond_29

    const-wide/16 v28, 0x0

    :cond_29
    if-nez v33, :cond_2c

    .line 97
    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 98
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v4, 0x0

    new-array v9, v4, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    invoke-interface {v1, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    .line 99
    new-instance v9, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v14, 0x1

    .line 100
    invoke-direct {v9, v7, v14, v1}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    if-nez v21, :cond_2b

    .line 101
    array-length v14, v1

    new-array v14, v14, [Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-object/from16 v57, v3

    .line 102
    :goto_12
    array-length v3, v1

    if-ge v4, v3, :cond_2a

    .line 103
    aget-object v3, v1, v4

    move-object/from16 v33, v1

    .line 104
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;

    move-object/from16 v58, v8

    iget-object v8, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->b:Ljava/util/UUID;

    move-object/from16 v34, v9

    iget-object v9, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->c:Ljava/lang/String;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;->d:Ljava/lang/String;

    move-wide/from16 v59, v10

    const/4 v10, 0x0

    invoke-direct {v1, v8, v9, v3, v10}, Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 105
    aput-object v1, v14, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v33

    move-object/from16 v9, v34

    move-object/from16 v8, v58

    move-wide/from16 v10, v59

    goto :goto_12

    :cond_2a
    move-object/from16 v58, v8

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    const/4 v10, 0x0

    .line 106
    new-instance v1, Landroidx/media2/exoplayer/external/drm/DrmInitData;

    const/4 v3, 0x1

    .line 107
    invoke-direct {v1, v7, v3, v14}, Landroidx/media2/exoplayer/external/drm/DrmInitData;-><init>(Ljava/lang/String;Z[Landroidx/media2/exoplayer/external/drm/DrmInitData$SchemeData;)V

    move-object/from16 v21, v1

    goto :goto_13

    :cond_2b
    move-object/from16 v57, v3

    move-object/from16 v58, v8

    move-object/from16 v34, v9

    move-wide/from16 v59, v10

    const/4 v3, 0x1

    const/4 v10, 0x0

    :goto_13
    move-object/from16 v33, v34

    goto :goto_14

    :cond_2c
    move-object/from16 v57, v3

    move-object/from16 v58, v8

    move-wide/from16 v59, v10

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 108
    :goto_14
    new-instance v1, Ln3/y/b/a/t0/q0/r/e$a;

    move-object/from16 v34, v1

    .line 109
    invoke-static {v5, v2}, Ln3/y/b/a/t0/q0/r/g;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v36, v53

    move-wide/from16 v38, v71

    move/from16 v40, v30

    move-wide/from16 v41, v51

    move-object/from16 v43, v33

    move-object/from16 v44, v13

    move-wide/from16 v46, v28

    move-wide/from16 v48, v54

    invoke-direct/range {v34 .. v50}, Ln3/y/b/a/t0/q0/r/e$a;-><init>(Ljava/lang/String;Ln3/y/b/a/t0/q0/r/e$a;Ljava/lang/String;JIJLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 110
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v51, v51, v71

    if-eqz v0, :cond_2d

    add-long v28, v28, v54

    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v18, v7

    move-object/from16 v34, v53

    move/from16 v14, v56

    move-object/from16 v3, v57

    move-wide/from16 v10, v59

    move/from16 v1, v74

    move-wide/from16 v75, v16

    move/from16 v16, v12

    move-object/from16 v17, v13

    move-wide/from16 v12, v75

    move-wide/from16 v77, v22

    move/from16 v22, v20

    move-wide/from16 v19, v77

    move-wide/from16 v23, v24

    move/from16 v25, v26

    move/from16 v26, v27

    move-wide/from16 v27, v28

    move-object/from16 v29, v58

    goto/16 :goto_0

    :goto_15
    move-object/from16 v70, p0

    move/from16 v14, v56

    move-object/from16 v8, v58

    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v9, v34

    move-object/from16 v3, v57

    move-wide/from16 v10, v59

    :goto_17
    move/from16 v1, v74

    goto/16 :goto_1

    :cond_2e
    move/from16 v74, v1

    move-wide/from16 v59, v10

    move/from16 v56, v14

    const/4 v3, 0x1

    .line 111
    new-instance v0, Ln3/y/b/a/t0/q0/r/e;

    const-wide/16 v1, 0x0

    cmp-long v1, v22, v1

    if-eqz v1, :cond_2f

    move/from16 v73, v3

    goto :goto_18

    :cond_2f
    const/16 v73, 0x0

    :goto_18
    move-object v3, v0

    move v4, v12

    move-object/from16 v5, p2

    move-wide/from16 v7, v59

    move-wide/from16 v9, v22

    move/from16 v11, v56

    move/from16 v12, v20

    move-wide/from16 v13, v24

    move-object v1, v15

    move/from16 v15, v26

    move/from16 v18, v74

    move/from16 v19, v27

    move/from16 v20, v73

    move-object/from16 v22, v1

    invoke-direct/range {v3 .. v22}, Ln3/y/b/a/t0/q0/r/e;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLandroidx/media2/exoplayer/external/drm/DrmInitData;Ljava/util/List;)V

    return-object v0
.end method

.method public static h(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p2, p3}, Ln3/y/b/a/t0/q0/r/g;->l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static j(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Ln3/y/b/a/t0/q0/r/g;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, p2}, Ln3/y/b/a/t0/q0/r/g;->i(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Ln3/y/b/a/c0;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t match "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static l(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/y/b/a/t0/q0/r/g;->K:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 1
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Ln3/y/b/a/x0/x;->t(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xef

    if-ne v1, v3, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbb

    if-ne v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    const/16 v3, 0xbf

    if-eq v1, v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    :cond_1
    const/4 v3, 0x1

    .line 6
    invoke-static {v0, v3, v1}, Ln3/y/b/a/t0/q0/r/g;->m(Ljava/io/BufferedReader;ZI)I

    move-result v1

    const/4 v3, 0x7

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    const-string v5, "#EXTM3U"

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v1, v5, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v0, v2, v1}, Ln3/y/b/a/t0/q0/r/g;->m(Ljava/io/BufferedReader;ZI)I

    move-result v1

    .line 10
    invoke-static {v1}, Ln3/y/b/a/x0/x;->t(I)Z

    move-result v2

    :cond_4
    :goto_1
    if-eqz v2, :cond_a

    .line 11
    :goto_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, "#EXT-X-STREAM-INF"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance v1, Ln3/y/b/a/t0/q0/r/g$a;

    invoke-direct {v1, p2, v0}, Ln3/y/b/a/t0/q0/r/g$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ln3/y/b/a/t0/q0/r/g;->f(Ln3/y/b/a/t0/q0/r/g$a;Ljava/lang/String;)Ln3/y/b/a/t0/q0/r/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_3
    sget p2, Ln3/y/b/a/x0/x;->a:I

    .line 18
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_6
    :try_start_2
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXTINF"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-KEY"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-BYTERANGE"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#EXT-X-ENDLIST"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 27
    :cond_7
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 28
    :cond_8
    :goto_4
    invoke-virtual {p2, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, p0, Ln3/y/b/a/t0/q0/r/g;->a:Ln3/y/b/a/t0/q0/r/d;

    new-instance v2, Ln3/y/b/a/t0/q0/r/g$a;

    invoke-direct {v2, p2, v0}, Ln3/y/b/a/t0/q0/r/g$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-static {v1, v2, p1}, Ln3/y/b/a/t0/q0/r/g;->g(Ln3/y/b/a/t0/q0/r/d;Ln3/y/b/a/t0/q0/r/g$a;Ljava/lang/String;)Ln3/y/b/a/t0/q0/r/e;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    :goto_5
    return-object p1

    .line 32
    :cond_9
    sget p1, Ln3/y/b/a/x0/x;->a:I

    .line 33
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 34
    :catch_1
    new-instance p1, Ln3/y/b/a/c0;

    const-string p2, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {p1, p2}, Ln3/y/b/a/c0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_a
    :try_start_4
    new-instance p2, Ln3/y/b/a/t0/n0;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {p2, v1, p1}, Ln3/y/b/a/t0/n0;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    .line 36
    sget p2, Ln3/y/b/a/x0/x;->a:I

    .line 37
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 38
    :catch_2
    throw p1
.end method
