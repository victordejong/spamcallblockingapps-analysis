.class public final Le/m/a/h/a/f/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Le/m/a/h/a/f/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "lib/([^/]+)/(.*\\.so)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/a/h/a/f/m;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Le/m/a/h/a/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/f/m;->a:Le/m/a/h/a/f/e;

    return-void
.end method

.method public static b(Le/m/a/h/a/f/s;Le/m/a/h/a/f/j;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    :try_start_1
    invoke-virtual {p0}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/util/HashMap;

    .line 3
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 7
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Le/m/a/h/a/f/m;->b:Ljava/util/regex/Pattern;

    .line 8
    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 9
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual {v7, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p0, v9, v5

    aput-object v7, v9, v6

    aput-object v8, v9, v4

    const-string v4, "NativeLibraryExtractor: split \'%s\' has native library \'%s\' for ABI \'%s\'"

    .line 12
    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/HashSet;

    .line 14
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 15
    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v5, Le/m/a/h/a/f/l;

    .line 16
    invoke-direct {v5, v3, v7}, Le/m/a/h/a/f/l;-><init>(Ljava/util/zip/ZipEntry;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/HashMap;

    .line 17
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 18
    array-length v3, v2

    move v7, v5

    :goto_1
    if-ge v7, v3, :cond_6

    aget-object v8, v2, v7

    .line 19
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v5

    const-string v10, "NativeLibraryExtractor: there are native libraries for supported ABI %s; will use this ABI"

    .line 20
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/m/a/h/a/f/l;

    .line 22
    iget-object v11, v10, Le/m/a/h/a/f/l;->a:Ljava/lang/String;

    invoke-virtual {p0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-array v11, v4, [Ljava/lang/Object;

    .line 23
    iget-object v10, v10, Le/m/a/h/a/f/l;->a:Ljava/lang/String;

    aput-object v10, v11, v5

    aput-object v8, v11, v6

    const-string v10, "NativeLibraryExtractor: skipping library %s for ABI %s; already present for a better ABI"

    .line 24
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    .line 25
    :cond_3
    iget-object v11, v10, Le/m/a/h/a/f/l;->a:Ljava/lang/String;

    invoke-virtual {p0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v11, v4, [Ljava/lang/Object;

    .line 26
    iget-object v10, v10, Le/m/a/h/a/f/l;->a:Ljava/lang/String;

    aput-object v10, v11, v5

    aput-object v8, v11, v6

    const-string v10, "NativeLibraryExtractor: using library %s for ABI %s"

    .line 27
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-array v9, v6, [Ljava/lang/Object;

    aput-object v8, v9, v5

    const-string v8, "NativeLibraryExtractor: there are no native libraries for supported ABI %s"

    .line 28
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 29
    :cond_6
    new-instance v1, Ljava/util/HashSet;

    .line 30
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-interface {p1, v0, v1}, Le/m/a/h/a/f/j;->a(Ljava/util/zip/ZipFile;Ljava/util/Set;)V

    .line 32
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 33
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 34
    :catch_2
    :cond_7
    throw p0
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/h/a/f/m;->a:Le/m/a/h/a/f/e;

    .line 2
    invoke-virtual {v0}, Le/m/a/h/a/f/e;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/f/m;->a:Le/m/a/h/a/f/e;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1}, Le/m/a/h/a/f/e;->g()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    .line 6
    aget-object v6, v1, v5

    .line 7
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 8
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    move-object v5, v0

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/m/a/h/a/f/s;

    .line 11
    invoke-virtual {v6}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v5, "NativeLibraryExtractor: extracted split \'%s\' has no corresponding split; deleting"

    .line 12
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    iget-object v4, p0, Le/m/a/h/a/f/m;->a:Le/m/a/h/a/f/e;

    .line 14
    invoke-virtual {v4}, Le/m/a/h/a/f/e;->g()Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v2}, Le/m/a/h/a/f/e;->f(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Le/m/a/h/a/f/e;->i(Ljava/io/File;)Ljava/io/File;

    .line 15
    invoke-static {v2}, Le/m/a/h/a/f/e;->e(Ljava/io/File;)V

    goto :goto_1

    .line 16
    :cond_4
    new-instance v1, Ljava/util/HashSet;

    .line 17
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 18
    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/h/a/f/s;

    new-instance v5, Ljava/util/HashSet;

    .line 19
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Le/m/a/h/a/f/h;

    .line 20
    invoke-direct {v6, p0, v5, v2}, Le/m/a/h/a/f/h;-><init>(Le/m/a/h/a/f/m;Ljava/util/Set;Le/m/a/h/a/f/s;)V

    invoke-static {v2, v6}, Le/m/a/h/a/f/m;->b(Le/m/a/h/a/f/s;Le/m/a/h/a/f/j;)V

    iget-object v6, p0, Le/m/a/h/a/f/m;->a:Le/m/a/h/a/f/e;

    .line 21
    invoke-virtual {v2}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/util/HashSet;

    .line 23
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 24
    invoke-virtual {v6}, Le/m/a/h/a/f/e;->g()Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v7}, Le/m/a/h/a/f/e;->f(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Le/m/a/h/a/f/e;->i(Ljava/io/File;)Ljava/io/File;

    .line 25
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_6

    array-length v7, v6

    move v9, v3

    :goto_3
    if-ge v9, v7, :cond_6

    .line 26
    aget-object v10, v6, v9

    .line 27
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 28
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 29
    :cond_6
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 30
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 32
    invoke-virtual {v2}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x2

    .line 33
    invoke-virtual {v2}, Le/m/a/h/a/f/s;->a()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "NativeLibraryExtractor: file \'%s\' found in split \'%s\' that is not in the split file \'%s\'; removing"

    .line 34
    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    iget-object v8, p0, Le/m/a/h/a/f/m;->a:Le/m/a/h/a/f/e;

    .line 36
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8}, Le/m/a/h/a/f/e;->g()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "File to remove is not a native library"

    .line 38
    invoke-static {v8, v9}, Ln3/g0/y;->H2(ZLjava/lang/Object;)V

    .line 39
    invoke-static {v7}, Le/m/a/h/a/f/e;->e(Ljava/io/File;)V

    goto :goto_4

    .line 40
    :cond_8
    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_9
    return-object v1
.end method

.method public final c(Le/m/a/h/a/f/s;Ljava/util/Set;Le/m/a/h/a/f/k;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/f/s;",
            "Ljava/util/Set<",
            "Le/m/a/h/a/f/l;",
            ">;",
            "Le/m/a/h/a/f/k;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/h/a/f/l;

    iget-object v1, p0, Le/m/a/h/a/f/m;->a:Le/m/a/h/a/f/e;

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/f/s;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Le/m/a/h/a/f/l;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v1}, Le/m/a/h/a/f/e;->g()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v2}, Le/m/a/h/a/f/e;->f(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Le/m/a/h/a/f/e;->i(Ljava/io/File;)Ljava/io/File;

    .line 4
    invoke-static {v1, v3}, Le/m/a/h/a/f/e;->f(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-object v2, v0, Le/m/a/h/a/f/l;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v4

    .line 8
    :goto_1
    invoke-interface {p3, v0, v1, v3}, Le/m/a/h/a/f/k;->a(Le/m/a/h/a/f/l;Ljava/io/File;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
