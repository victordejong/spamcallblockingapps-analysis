.class public final Landroidx/media2/session/SessionTokenImplLegacy;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/session/SessionToken$SessionTokenImpl;


# instance fields
.field public a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field public b:Landroid/os/Bundle;

.field public c:I

.field public d:I

.field public e:Landroid/content/ComponentName;

.field public f:Ljava/lang/String;

.field public g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->b:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "android.support.v4.media.session.EXTRA_BINDER"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lm3/a/b/b/a/a$a;->m1(Landroid/os/IBinder;)Lm3/a/b/b/a/a;

    move-result-object v2

    const-string v3, "android.support.v4.media.session.SESSION_TOKEN2"

    .line 4
    invoke-static {v0, v3}, Ln3/i0/a;->a(Landroid/os/Bundle;Ljava/lang/String;)Ln3/i0/e;

    move-result-object v3

    const-string v4, "android.support.v4.media.session.TOKEN"

    .line 5
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->b:Ljava/lang/Object;

    invoke-direct {v1, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Lm3/a/b/b/a/a;Ln3/i0/e;)V

    .line 7
    :goto_0
    iput-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/media2/session/SessionTokenImplLegacy;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Landroidx/media2/session/SessionTokenImplLegacy;

    .line 3
    iget v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:I

    iget v2, p1, Landroidx/media2/session/SessionTokenImplLegacy;->d:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x64

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Landroid/content/ComponentName;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->e:Landroid/content/ComponentName;

    .line 5
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6
    :cond_3
    iget-object v0, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object p1, p1, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 7
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->e:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SessionToken {legacyToken="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media2/session/SessionTokenImplLegacy;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
