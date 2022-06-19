.class public final Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/Format;Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;I)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->c:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    .line 3
    iget-object v0, p1, Landroidx/media2/exoplayer/external/Format;->A:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    invoke-static {p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->h(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Z

    .line 5
    iget-object p3, p2, Landroidx/media2/exoplayer/external/trackselection/TrackSelectionParameters;->a:Ljava/lang/String;

    .line 6
    invoke-static {p1, p3, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->e:I

    .line 7
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->c:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->h:Z

    .line 8
    iget p3, p1, Landroidx/media2/exoplayer/external/Format;->v:I

    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->i:I

    .line 9
    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->w:I

    iput v2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->j:I

    .line 10
    iget v2, p1, Landroidx/media2/exoplayer/external/Format;->e:I

    iput v2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->k:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 11
    iget v4, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->q:I

    if-gt v2, v4, :cond_2

    :cond_1
    if-eq p3, v3, :cond_3

    iget p2, p2, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->p:I

    if-gt p3, p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a:Z

    .line 12
    sget p2, Ln3/y/b/a/x0/x;->a:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 13
    sget p3, Ln3/y/b/a/x0/x;->a:I

    const/16 v2, 0x18

    if-lt p3, v2, :cond_4

    .line 14
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p2

    const-string p3, ","

    invoke-static {p2, p3}, Ln3/y/b/a/x0/x;->B(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    :goto_3
    move p3, v0

    goto :goto_5

    :cond_4
    const/16 v2, 0x15

    if-lt p3, v2, :cond_5

    new-array p3, v1, [Ljava/lang/String;

    .line 15
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    goto :goto_4

    :cond_5
    new-array p3, v1, [Ljava/lang/String;

    .line 16
    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    :goto_4
    move-object p2, p3

    goto :goto_3

    .line 17
    :goto_5
    array-length v1, p2

    if-ge p3, v1, :cond_6

    .line 18
    aget-object v1, p2, p3

    invoke-static {v1}, Ln3/y/b/a/x0/x;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_6
    const p3, 0x7fffffff

    move v1, v0

    .line 19
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_8

    .line 20
    aget-object v2, p2, v1

    .line 21
    invoke-static {p1, v2, v0}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->f(Landroidx/media2/exoplayer/external/Format;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_7

    move p3, v1

    move v0, v2

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 22
    :cond_8
    :goto_7
    iput p3, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->f:I

    .line 23
    iput v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->g:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 2
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->e:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->e:I

    if-eq v0, v1, :cond_2

    .line 3
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    return p1

    .line 4
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2

    .line 5
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->c:Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters;->v:Z

    if-eqz v0, :cond_6

    .line 6
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->k:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->k:I

    .line 7
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->e(II)I

    move-result v0

    if-eqz v0, :cond_6

    if-lez v0, :cond_5

    move v2, v3

    :cond_5
    return v2

    .line 8
    :cond_6
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->h:Z

    iget-boolean v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->h:Z

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move v2, v3

    :goto_2
    return v2

    .line 9
    :cond_8
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->f:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->f:I

    if-eq v0, v1, :cond_9

    .line 10
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 11
    :cond_9
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->g:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->g:I

    if-eq v0, v1, :cond_a

    .line 12
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    return p1

    .line 13
    :cond_a
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->d:Z

    if-eqz v0, :cond_b

    goto :goto_3

    :cond_b
    move v2, v3

    .line 14
    :goto_3
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->i:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->i:I

    if-eq v0, v1, :cond_c

    .line 15
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    mul-int/2addr p1, v2

    return p1

    .line 16
    :cond_c
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->j:I

    iget v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->j:I

    if-eq v0, v1, :cond_d

    .line 17
    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    mul-int/2addr p1, v2

    return p1

    .line 18
    :cond_d
    iget-object v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 19
    iget v0, p0, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->k:I

    iget p1, p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->k:I

    invoke-static {v0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector;->c(II)I

    move-result p1

    mul-int/2addr p1, v2

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;

    invoke-virtual {p0, p1}, Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;->a(Landroidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$b;)I

    move-result p1

    return p1
.end method
