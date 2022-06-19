.class public final Le/m/a/h/a/g/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le/m/a/h/a/d/g;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "SplitInstallInfoProvider"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/o0;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/m/a/h/a/g/o0;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "config."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const-string v1, "\\.config\\."

    .line 2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "config."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".config."

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()Le/m/a/h/a/g/h0;
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/g/o0;->e()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No metadata found in Context."

    .line 2
    invoke-virtual {v0, v3, v2}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    :cond_0
    const-string v3, "com.android.vending.splits"

    .line 3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No metadata found in AndroidManifest."

    .line 4
    invoke-virtual {v0, v3, v2}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    :cond_1
    :try_start_0
    iget-object v3, p0, Le/m/a/h/a/g/o0;->a:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v3, Le/m/a/h/a/g/g0;

    .line 6
    invoke-direct {v3}, Le/m/a/h/a/g/g0;-><init>()V

    .line 7
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    .line 8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "splits"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 10
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_2

    .line 11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 12
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "module"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "name"

    .line 13
    invoke-static {v4, v0, v3}, Ln3/g0/y;->D2(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 14
    :cond_4
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_3

    .line 15
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v5, :cond_4

    .line 16
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "language"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 17
    :cond_5
    :goto_3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v6, :cond_4

    .line 18
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    if-ne v7, v5, :cond_5

    .line 19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "entry"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "key"

    .line 20
    invoke-static {v7, v0, v3}, Ln3/g0/y;->D2(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "split"

    .line 21
    invoke-static {v8, v0, v3}, Ln3/g0/y;->D2(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)Ljava/lang/String;

    move-result-object v8

    .line 22
    invoke-static {v0, v3}, Ln3/g0/y;->N2(Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)V

    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    .line 23
    invoke-virtual {v3, v4, v7, v8}, Le/m/a/h/a/g/g0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/m/a/h/a/g/g0;

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {v0, v3}, Ln3/g0/y;->N2(Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)V

    goto :goto_3

    .line 25
    :cond_7
    invoke-static {v0, v3}, Ln3/g0/y;->N2(Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)V

    goto :goto_2

    .line 26
    :cond_8
    invoke-static {v0, v3}, Ln3/g0/y;->N2(Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)V

    goto :goto_1

    .line 27
    :cond_9
    invoke-static {v0, v3}, Ln3/g0/y;->N2(Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)V

    goto :goto_1

    .line 28
    :cond_a
    invoke-static {v0, v3}, Ln3/g0/y;->N2(Lorg/xmlpull/v1/XmlPullParser;Le/m/a/h/a/g/g0;)V

    goto/16 :goto_0

    .line 29
    :cond_b
    invoke-virtual {v3}, Le/m/a/h/a/g/g0;->b()Le/m/a/h/a/g/h0;

    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    if-nez v1, :cond_c

    .line 30
    sget-object v0, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Can\'t parse languages metadata."

    .line 31
    invoke-virtual {v0, v3, v2}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_c
    return-object v1

    :catch_1
    sget-object v0, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Resource with languages metadata doesn\'t exist."

    .line 32
    invoke-virtual {v0, v3, v2}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1
.end method

.method public final c()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    .line 1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/m/a/h/a/g/o0;->f()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {v2}, Le/m/a/h/a/g/o0;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Le/m/a/h/a/g/o0;->a:Landroid/content/Context;

    .line 1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Le/m/a/h/a/g/o0;->b:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 2
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return-object v2

    :cond_1
    :goto_0
    sget-object v2, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "App has no applicationInfo or metaData"

    .line 3
    invoke-virtual {v2, v3, v1}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0

    .line 4
    :catch_0
    sget-object v2, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "App is not found in PackageManager"

    .line 5
    invoke-virtual {v2, v3, v1}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v0
.end method

.method public final f()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    .line 1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/m/a/h/a/g/o0;->e()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "com.android.dynamic.apk.fused.modules"

    .line 3
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    const-string v4, ","

    .line 5
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, ""

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string v1, "base"

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-object v1, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "App has no fused modules."

    .line 9
    invoke-virtual {v1, v4, v3}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_1
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object v3, p0, Le/m/a/h/a/g/o0;->a:Landroid/content/Context;

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Le/m/a/h/a/g/o0;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 13
    :catch_0
    sget-object v3, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "App is not found in PackageManager"

    .line 14
    invoke-virtual {v3, v5, v4}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 15
    sget-object v3, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 16
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "Adding splits from package manager: %s"

    invoke-virtual {v3, v2, v4}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 17
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_4
    sget-object v1, Le/m/a/h/a/g/o0;->c:Le/m/a/h/a/d/g;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No splits are found or app cannot be found in package manager."

    .line 19
    invoke-virtual {v1, v3, v2}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 20
    :goto_3
    sget-object v1, Le/m/a/h/a/g/n0;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 21
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/h/a/g/m0;

    if-eqz v1, :cond_5

    .line 22
    invoke-interface {v1}, Le/m/a/h/a/g/m0;->zza()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method
