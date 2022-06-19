.class Lzendesk/belvedere/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lzendesk/belvedere/y;

.field private final b:Lzendesk/belvedere/n;

.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lzendesk/belvedere/y;Lzendesk/belvedere/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/belvedere/s;->c:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lzendesk/belvedere/s;->a:Lzendesk/belvedere/y;

    .line 4
    iput-object p3, p0, Lzendesk/belvedere/s;->b:Lzendesk/belvedere/n;

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/belvedere/s;->g(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private b(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private d(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Belvedere"

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    const-string v2, "Gallery Intent, using \'ACTION_OPEN_DOCUMENT\'"

    .line 2
    invoke-static {v1, v2}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "Gallery Intent, using \'ACTION_GET_CONTENT\'"

    .line 4
    invoke-static {v1, v2}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.category.OPENABLE"

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x12

    if-lt v0, p1, :cond_1

    const-string p1, "android.intent.extra.ALLOW_MULTIPLE"

    .line 8
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-object v1
.end method

.method private g(Landroid/content/Context;)Z
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.camera"

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    const-string v2, "android.hardware.camera.front"

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    invoke-direct {p0, v0, p1}, Lzendesk/belvedere/s;->i(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result p1

    .line 7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "Camera present: %b, Camera App present: %b"

    invoke-static {v0, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Belvedere"

    invoke-static {v2, v0}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method private h(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "*/*"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lzendesk/belvedere/s;->d(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lzendesk/belvedere/s;->i(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private i(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private j(Landroid/content/Context;I)Lf/h/k/c;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lf/h/k/c<",
            "Lzendesk/belvedere/q;",
            "Lzendesk/belvedere/r;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lzendesk/belvedere/s;->a:Lzendesk/belvedere/y;

    invoke-virtual {v2, v1}, Lzendesk/belvedere/y;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    const/4 v2, 0x0

    const-string v3, "Belvedere"

    if-nez v4, :cond_0

    const-string v1, "Camera Intent: Image path is null. There\'s something wrong with the storage."

    .line 2
    invoke-static {v3, v1}, Lzendesk/belvedere/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 3
    :cond_0
    iget-object v5, v0, Lzendesk/belvedere/s;->a:Lzendesk/belvedere/y;

    invoke-virtual {v5, v1, v4}, Lzendesk/belvedere/y;->i(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v1, "Camera Intent: Uri to file is null. There\'s something wrong with the storage or FileProvider configuration."

    .line 4
    invoke-static {v3, v1}, Lzendesk/belvedere/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 5
    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v11, 0x2

    aput-object v6, v8, v11

    const-string v11, "Camera Intent: Request Id: %s - File: %s - Uri: %s"

    invoke-static {v5, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v15, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "output"

    .line 7
    invoke-virtual {v15, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    iget-object v3, v0, Lzendesk/belvedere/s;->a:Lzendesk/belvedere/y;

    invoke-virtual {v3, v1, v15, v6, v7}, Lzendesk/belvedere/y;->l(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;I)V

    const-string v13, "android.permission.CAMERA"

    .line 9
    invoke-static {v1, v13}, Lzendesk/belvedere/v;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    invoke-static {v1, v13}, Lzendesk/belvedere/v;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v16, 0x1

    goto :goto_0

    :cond_2
    const/16 v16, 0x0

    .line 11
    :goto_0
    invoke-static {v1, v6}, Lzendesk/belvedere/y;->j(Landroid/content/Context;Landroid/net/Uri;)Lzendesk/belvedere/r;

    move-result-object v1

    .line 12
    new-instance v14, Lzendesk/belvedere/r;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lzendesk/belvedere/r;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lzendesk/belvedere/r;->p()J

    move-result-wide v9

    invoke-virtual {v1}, Lzendesk/belvedere/r;->s()J

    move-result-wide v11

    invoke-virtual {v1}, Lzendesk/belvedere/r;->j()J

    move-result-wide v17

    move-object v3, v14

    move-object v5, v6

    move-object/from16 v19, v13

    move-object v1, v14

    move-wide/from16 v13, v17

    invoke-direct/range {v3 .. v14}, Lzendesk/belvedere/r;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    .line 13
    new-instance v3, Lzendesk/belvedere/q;

    if-eqz v16, :cond_3

    move-object/from16 v14, v19

    goto :goto_1

    :cond_3
    move-object v14, v2

    :goto_1
    const/4 v2, 0x1

    const/16 v16, 0x2

    move-object v11, v3

    move/from16 v12, p2

    move-object v13, v15

    move v15, v2

    invoke-direct/range {v11 .. v16}, Lzendesk/belvedere/q;-><init>(ILandroid/content/Intent;Ljava/lang/String;ZI)V

    .line 14
    new-instance v2, Lf/h/k/c;

    invoke-direct {v2, v3, v1}, Lf/h/k/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method


# virtual methods
.method c(I)Lf/h/k/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lf/h/k/c<",
            "Lzendesk/belvedere/q;",
            "Lzendesk/belvedere/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/s;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lzendesk/belvedere/s;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/s;->c:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lzendesk/belvedere/s;->j(Landroid/content/Context;I)Lf/h/k/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lf/h/k/c;

    invoke-static {}, Lzendesk/belvedere/q;->e()Lzendesk/belvedere/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lf/h/k/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method e(Landroid/content/Context;IILandroid/content/Intent;Lzendesk/belvedere/d;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Landroid/content/Intent;",
            "Lzendesk/belvedere/d<",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    .line 1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v6, v0, Lzendesk/belvedere/s;->b:Lzendesk/belvedere/n;

    invoke-virtual {v6, v2}, Lzendesk/belvedere/n;->b(I)Lzendesk/belvedere/r;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 3
    invoke-virtual {v6}, Lzendesk/belvedere/r;->h()Ljava/io/File;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v11, "Belvedere"

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lzendesk/belvedere/r;->q()Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v10, [Ljava/lang/Object;

    if-ne v3, v8, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v9

    const-string v13, "Parsing activity result - Camera - Ok: %s"

    invoke-static {v7, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x3

    .line 5
    iget-object v13, v0, Lzendesk/belvedere/s;->a:Lzendesk/belvedere/y;

    invoke-virtual {v6}, Lzendesk/belvedere/r;->q()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v1, v14, v12}, Lzendesk/belvedere/y;->m(Landroid/content/Context;Landroid/net/Uri;I)V

    if-ne v3, v8, :cond_2

    .line 6
    invoke-virtual {v6}, Lzendesk/belvedere/r;->q()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v1, v3}, Lzendesk/belvedere/y;->j(Landroid/content/Context;Landroid/net/Uri;)Lzendesk/belvedere/r;

    move-result-object v1

    .line 7
    new-instance v3, Lzendesk/belvedere/r;

    invoke-virtual {v6}, Lzendesk/belvedere/r;->h()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v6}, Lzendesk/belvedere/r;->q()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v6}, Lzendesk/belvedere/r;->n()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v6}, Lzendesk/belvedere/r;->m()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lzendesk/belvedere/r;->k()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v1}, Lzendesk/belvedere/r;->p()J

    move-result-wide v18

    invoke-virtual {v1}, Lzendesk/belvedere/r;->s()J

    move-result-wide v20

    invoke-virtual {v1}, Lzendesk/belvedere/r;->j()J

    move-result-wide v22

    move-object v12, v3

    invoke-direct/range {v12 .. v23}, Lzendesk/belvedere/r;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v1, v10, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v6}, Lzendesk/belvedere/r;->h()Ljava/io/File;

    move-result-object v3

    aput-object v3, v1, v9

    const-string v3, "Image from camera: %s"

    invoke-static {v7, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v1, v0, Lzendesk/belvedere/s;->b:Lzendesk/belvedere/n;

    invoke-virtual {v1, v2}, Lzendesk/belvedere/n;->a(I)V

    goto :goto_4

    .line 10
    :cond_3
    :goto_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v6, v10, [Ljava/lang/Object;

    if-ne v3, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "Parsing activity result - Gallery - Ok: %s"

    invoke-static {v2, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v8, :cond_6

    move-object/from16 v3, p4

    .line 11
    invoke-direct {v0, v3}, Lzendesk/belvedere/s;->b(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v3

    new-array v6, v10, [Ljava/lang/Object;

    .line 12
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const-string v7, "Number of items received from gallery: %s"

    invoke-static {v2, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_5

    const-string v2, "Resolving items"

    .line 13
    invoke-static {v11, v2}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, v0, Lzendesk/belvedere/s;->a:Lzendesk/belvedere/y;

    invoke-static {v1, v2, v4, v3}, Lzendesk/belvedere/x;->c(Landroid/content/Context;Lzendesk/belvedere/y;Lzendesk/belvedere/d;Ljava/util/List;)V

    return-void

    :cond_5
    const-string v2, "Resolving items turned off"

    .line 15
    invoke-static {v11, v2}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 17
    invoke-static {v1, v3}, Lzendesk/belvedere/y;->j(Landroid/content/Context;Landroid/net/Uri;)Lzendesk/belvedere/r;

    move-result-object v3

    .line 18
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 19
    invoke-virtual {v4, v5}, Lzendesk/belvedere/d;->internalSuccess(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method f(ILjava/lang/String;Z)Lzendesk/belvedere/q;
    .locals 7

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/s;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lzendesk/belvedere/s;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lzendesk/belvedere/q;

    invoke-direct {p0, p2, p3}, Lzendesk/belvedere/s;->d(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lzendesk/belvedere/q;-><init>(ILandroid/content/Intent;Ljava/lang/String;ZI)V

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lzendesk/belvedere/q;->e()Lzendesk/belvedere/q;

    move-result-object p1

    return-object p1
.end method
