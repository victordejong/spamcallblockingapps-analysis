.class public final Le/m/h/b/b/e/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/h/a/d/n/g;


# static fields
.field public static final c:Lcom/google/android/gms/common/internal/GmsLogger;


# instance fields
.field public final a:Le/m/h/a/d/g;

.field public final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "TranslateModelMover"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/m/h/b/b/e/y;->c:Lcom/google/android/gms/common/internal/GmsLogger;

    return-void
.end method

.method public constructor <init>(Le/m/h/a/d/g;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/b/b/e/y;->a:Le/m/h/a/d/g;

    .line 3
    iput-object p2, p0, Le/m/h/b/b/e/y;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/h/a/d/n/c;

    iget-object v1, p0, Le/m/h/b/b/e/y;->a:Le/m/h/a/d/g;

    invoke-direct {v0, v1}, Le/m/h/a/d/n/c;-><init>(Le/m/h/a/d/g;)V

    .line 2
    iget-object v1, p0, Le/m/h/b/b/e/y;->b:Ljava/lang/String;

    sget-object v2, Le/m/h/a/d/k;->d:Le/m/h/a/d/k;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Le/m/h/a/d/n/c;->c(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 5
    array-length v4, v1

    if-nez v4, :cond_0

    goto :goto_3

    .line 6
    :cond_0
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 7
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :catch_0
    sget-object v7, Le/m/h/a/d/n/c;->b:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v8, "Contains non-integer file name "

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    const-string v8, "ModelFileHelper"

    invoke-virtual {v7, v8, v6}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_2
    :goto_3
    new-instance v1, Ljava/io/File;

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    const-string v2, "TranslateModelMover"

    if-eqz v0, :cond_3

    .line 11
    sget-object p1, Le/m/h/b/b/e/y;->c:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v0, "Rename to serving model successfully"

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 13
    invoke-virtual {v1, v3}, Ljava/io/File;->setWritable(Z)Z

    return-object v1

    .line 14
    :cond_3
    sget-object v0, Le/m/h/b/b/e/y;->c:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "Rename to serving model failed, remove the temp file."

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Failed to delete the temp file: "

    .line 16
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method
