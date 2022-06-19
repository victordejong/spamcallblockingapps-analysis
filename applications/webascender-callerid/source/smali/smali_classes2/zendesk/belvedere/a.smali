.class public Lzendesk/belvedere/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/belvedere/a$a;
    }
.end annotation


# static fields
.field private static e:Lzendesk/belvedere/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lzendesk/belvedere/y;

.field private c:Lzendesk/belvedere/n;

.field private d:Lzendesk/belvedere/s;


# direct methods
.method constructor <init>(Lzendesk/belvedere/a$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lzendesk/belvedere/a$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lzendesk/belvedere/a;->a:Landroid/content/Context;

    .line 3
    iget-object v1, p1, Lzendesk/belvedere/a$a;->b:Lzendesk/belvedere/p$b;

    iget-boolean v2, p1, Lzendesk/belvedere/a$a;->c:Z

    invoke-interface {v1, v2}, Lzendesk/belvedere/p$b;->e(Z)V

    .line 4
    iget-object p1, p1, Lzendesk/belvedere/a$a;->b:Lzendesk/belvedere/p$b;

    invoke-static {p1}, Lzendesk/belvedere/p;->d(Lzendesk/belvedere/p$b;)V

    .line 5
    new-instance p1, Lzendesk/belvedere/n;

    invoke-direct {p1}, Lzendesk/belvedere/n;-><init>()V

    iput-object p1, p0, Lzendesk/belvedere/a;->c:Lzendesk/belvedere/n;

    .line 6
    new-instance v1, Lzendesk/belvedere/y;

    invoke-direct {v1}, Lzendesk/belvedere/y;-><init>()V

    iput-object v1, p0, Lzendesk/belvedere/a;->b:Lzendesk/belvedere/y;

    .line 7
    new-instance v2, Lzendesk/belvedere/s;

    invoke-direct {v2, v0, v1, p1}, Lzendesk/belvedere/s;-><init>(Landroid/content/Context;Lzendesk/belvedere/y;Lzendesk/belvedere/n;)V

    iput-object v2, p0, Lzendesk/belvedere/a;->d:Lzendesk/belvedere/s;

    const-string p1, "Belvedere"

    const-string v0, "Belvedere initialized"

    .line 8
    invoke-static {p1, v0}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lzendesk/belvedere/a;
    .locals 2

    .line 1
    const-class v0, Lzendesk/belvedere/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lzendesk/belvedere/a;->e:Lzendesk/belvedere/a;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lzendesk/belvedere/a$a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lzendesk/belvedere/a$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lzendesk/belvedere/a$a;->a()Lzendesk/belvedere/a;

    move-result-object p0

    sput-object p0, Lzendesk/belvedere/a;->e:Lzendesk/belvedere/a;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context provided"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    sget-object p0, Lzendesk/belvedere/a;->e:Lzendesk/belvedere/a;

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Lzendesk/belvedere/q$b;
    .locals 4

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/a;->c:Lzendesk/belvedere/n;

    invoke-virtual {v0}, Lzendesk/belvedere/n;->d()I

    move-result v0

    .line 2
    new-instance v1, Lzendesk/belvedere/q$b;

    iget-object v2, p0, Lzendesk/belvedere/a;->d:Lzendesk/belvedere/s;

    iget-object v3, p0, Lzendesk/belvedere/a;->c:Lzendesk/belvedere/n;

    invoke-direct {v1, v0, v2, v3}, Lzendesk/belvedere/q$b;-><init>(ILzendesk/belvedere/s;Lzendesk/belvedere/n;)V

    return-object v1
.end method

.method public b()Lzendesk/belvedere/q$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/a;->c:Lzendesk/belvedere/n;

    invoke-virtual {v0}, Lzendesk/belvedere/n;->d()I

    move-result v0

    .line 2
    new-instance v1, Lzendesk/belvedere/q$c;

    iget-object v2, p0, Lzendesk/belvedere/a;->d:Lzendesk/belvedere/s;

    invoke-direct {v1, v0, v2}, Lzendesk/belvedere/q$c;-><init>(ILzendesk/belvedere/s;)V

    return-object v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Lzendesk/belvedere/r;
    .locals 15

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lzendesk/belvedere/a;->b:Lzendesk/belvedere/y;

    iget-object v2, v0, Lzendesk/belvedere/a;->a:Landroid/content/Context;

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    invoke-virtual {v1, v2, v3, v7}, Lzendesk/belvedere/y;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    const-string v3, "Get internal File: %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Belvedere"

    invoke-static {v2, v1}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    .line 3
    iget-object v1, v0, Lzendesk/belvedere/a;->b:Lzendesk/belvedere/y;

    iget-object v2, v0, Lzendesk/belvedere/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lzendesk/belvedere/y;->i(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 4
    iget-object v1, v0, Lzendesk/belvedere/a;->a:Landroid/content/Context;

    invoke-static {v1, v6}, Lzendesk/belvedere/y;->j(Landroid/content/Context;Landroid/net/Uri;)Lzendesk/belvedere/r;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lzendesk/belvedere/r;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v8, -0x1

    if-eqz v2, :cond_0

    .line 6
    invoke-static {v4}, Lzendesk/belvedere/c;->a(Ljava/io/File;)Landroid/util/Pair;

    move-result-object v2

    .line 7
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    .line 8
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v13, v2

    move-wide v11, v8

    goto :goto_0

    :cond_0
    move-wide v11, v8

    move-wide v13, v11

    .line 9
    :goto_0
    new-instance v2, Lzendesk/belvedere/r;

    invoke-virtual {v1}, Lzendesk/belvedere/r;->k()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lzendesk/belvedere/r;->p()J

    move-result-wide v9

    move-object v3, v2

    move-object v5, v6

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v14}, Lzendesk/belvedere/r;-><init>(Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public e(IILandroid/content/Intent;Lzendesk/belvedere/d;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Lzendesk/belvedere/d<",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/a;->d:Lzendesk/belvedere/s;

    iget-object v1, p0, Lzendesk/belvedere/a;->a:Landroid/content/Context;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lzendesk/belvedere/s;->e(Landroid/content/Context;IILandroid/content/Intent;Lzendesk/belvedere/d;Z)V

    return-void
.end method

.method public f(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :cond_0
    invoke-virtual {p0, v0, p1}, Lzendesk/belvedere/a;->g(Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v0
.end method

.method public g(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Grant Permission - Intent: %s - Uri: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Belvedere"

    invoke-static {v1, v0}, Lzendesk/belvedere/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/a;->b:Lzendesk/belvedere/y;

    iget-object v1, p0, Lzendesk/belvedere/a;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, p2, v2}, Lzendesk/belvedere/y;->l(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;I)V

    return-void
.end method

.method public h(Ljava/util/List;Ljava/lang/String;Lzendesk/belvedere/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Lzendesk/belvedere/d<",
            "Ljava/util/List<",
            "Lzendesk/belvedere/r;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lzendesk/belvedere/a;->b:Lzendesk/belvedere/y;

    invoke-static {v0, v1, p3, p1, p2}, Lzendesk/belvedere/x;->d(Landroid/content/Context;Lzendesk/belvedere/y;Lzendesk/belvedere/d;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p3, p1}, Lzendesk/belvedere/d;->internalSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
