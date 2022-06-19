.class public final Le/m/a/h/a/d/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/h/a/f/e;

.field public final b:Landroid/content/Context;

.field public final c:Le/m/a/h/a/d/x;

.field public d:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/h/a/f/e;Le/m/a/h/a/d/t;)V
    .locals 1

    new-instance p3, Le/m/a/h/a/d/x;

    new-instance v0, Le/m/a/h/a/f/b;

    .line 1
    invoke-direct {v0, p2}, Le/m/a/h/a/f/b;-><init>(Le/m/a/h/a/f/e;)V

    invoke-direct {p3, v0}, Le/m/a/h/a/d/x;-><init>(Le/m/a/h/a/f/b;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/m/a/h/a/d/y;->a:Le/m/a/h/a/f/e;

    iput-object p1, p0, Le/m/a/h/a/d/y;->b:Landroid/content/Context;

    iput-object p3, p0, Le/m/a/h/a/d/y;->c:Le/m/a/h/a/d/x;

    return-void
.end method


# virtual methods
.method public final a([Ljava/io/File;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/d/y;->c()Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    .line 4
    :goto_0
    const-class v2, Landroid/content/res/AssetManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 6
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_1
    new-array v6, v3, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 9
    check-cast v2, Landroid/content/res/AssetManager;

    .line 10
    array-length v5, p1

    :cond_2
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_8

    iget-object v6, p0, Le/m/a/h/a/d/y;->c:Le/m/a/h/a/d/x;

    .line 11
    aget-object v7, p1, v5

    .line 12
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v2, v7}, Le/m/a/h/a/f/b;->b(Landroid/content/res/AssetManager;Ljava/io/File;)I

    move-result v7

    const-string v8, "AndroidManifest.xml"

    .line 14
    invoke-virtual {v2, v7, v8}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    iput-object v7, v6, Le/m/a/h/a/d/x;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 15
    iget-object v6, p0, Le/m/a/h/a/d/y;->c:Le/m/a/h/a/d/x;

    .line 16
    iget-object v7, v6, Le/m/a/h/a/d/x;->a:Lorg/xmlpull/v1/XmlPullParser;

    if-eqz v7, :cond_7

    :goto_1
    iget-object v7, v6, Le/m/a/h/a/d/x;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 17
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    if-eq v7, v4, :cond_6

    goto :goto_1

    .line 18
    :cond_3
    iget-object v7, v6, Le/m/a/h/a/d/x;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 19
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "manifest"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v6, Le/m/a/h/a/d/x;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v8, "http://schemas.android.com/apk/res/android"

    const-string v9, "versionCode"

    .line 20
    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v6, v6, Le/m/a/h/a/d/x;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v9, "versionCodeMajor"

    .line 21
    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v7, :cond_5

    .line 22
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_4

    int-to-long v6, v7

    goto :goto_2

    .line 23
    :cond_4
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    int-to-long v8, v6

    const/16 v6, 0x20

    shl-long/2addr v8, v6

    int-to-long v6, v7

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    or-long/2addr v6, v8

    :goto_2
    cmp-long v6, v0, v6

    if-eqz v6, :cond_2

    return v3

    :catch_0
    move-exception p1

    .line 24
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v1, v4, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "Couldn\'t parse versionCodeMajor to int: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 26
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v1, v4, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const-string p1, "Couldn\'t parse versionCode to int: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Manifest entry doesn\'t contain \'versionCode\' attribute."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Couldn\'t find manifest entry at top-level."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "Manifest file needs to be loaded before parsing."

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return v4

    :catch_2
    move-exception p1

    .line 31
    new-instance v0, Le/m/a/h/a/d/u0;

    new-array v1, v4, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "Failed to invoke default constructor on class %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/m/a/h/a/d/u0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b([Ljava/io/File;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Le/m/a/h/a/d/y;->c()Landroid/content/pm/PackageInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v3, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v0

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    :try_start_0
    const-string v7, "X509"

    .line 6
    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 7
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v6, v1

    :goto_1
    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :cond_3
    :goto_2
    if-eqz v1, :cond_c

    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_6

    .line 10
    :cond_4
    array-length v0, p1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 11
    aget-object v3, p1, v0

    .line 12
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 13
    :try_start_2
    invoke-static {v3}, Ln3/g0/y;->x2(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_9

    :try_start_3
    array-length v5, v4

    if-eqz v5, :cond_9

    .line 14
    aget-object v5, v4, v2

    array-length v5, v5

    if-nez v5, :cond_6

    goto :goto_4

    .line 15
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    .line 16
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    array-length v6, v4

    move v7, v2

    :goto_3
    if-ge v7, v6, :cond_a

    .line 17
    aget-object v8, v4, v7

    .line 18
    aget-object v8, v8, v2

    invoke-virtual {v8, v5}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 19
    :cond_9
    :goto_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    goto :goto_5

    .line 20
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :cond_a
    :goto_5
    return v2

    :cond_b
    const/4 p1, 0x1

    return p1

    :cond_c
    :goto_6
    return v2
.end method

.method public final c()Landroid/content/pm/PackageInfo;
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/d/y;->d:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/d/y;->b:Landroid/content/Context;

    .line 1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/d/y;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Le/m/a/h/a/d/y;->d:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    :goto_0
    iget-object v0, p0, Le/m/a/h/a/d/y;->d:Landroid/content/pm/PackageInfo;

    return-object v0
.end method
