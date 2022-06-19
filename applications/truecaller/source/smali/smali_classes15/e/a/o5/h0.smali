.class public Le/a/o5/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/a/o5/h0;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 12

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v1

    :goto_1
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_5

    .line 4
    array-length v0, p0

    move v5, v2

    move-wide v6, v3

    :goto_2
    if-ge v5, v0, :cond_4

    aget-object v8, p0, v5

    .line 5
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Le/a/o5/h0;->a(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    :goto_3
    cmp-long v10, v8, v3

    if-ltz v10, :cond_3

    move v10, v1

    goto :goto_4

    :cond_3
    move v10, v2

    :goto_4
    new-array v11, v2, [Ljava/lang/String;

    .line 7
    invoke-static {v10, v11}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->isTrue(Z[Ljava/lang/String;)V

    add-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-wide v3, v6

    :cond_5
    return-wide v3
.end method
