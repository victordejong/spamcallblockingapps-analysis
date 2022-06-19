.class public Le/m/h/a/d/n/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final b:Lcom/google/android/gms/common/internal/GmsLogger;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Le/m/h/a/d/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "ModelFileHelper"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/GmsLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Le/m/h/a/d/n/c;->b:Lcom/google/android/gms/common/internal/GmsLogger;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "automl"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.google.mlkit.%s.models"

    .line 2
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/m/h/a/d/n/c;->c:Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v4, "translate"

    aput-object v4, v1, v3

    .line 3
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/m/h/a/d/n/c;->d:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "base"

    aput-object v1, v0, v3

    .line 4
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/h/a/d/n/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/m/h/a/d/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/h/a/d/n/c;->a:Le/m/h/a/d/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 7
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string v3, "null reference"

    .line 3
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    array-length v3, v1

    move v4, v0

    move v5, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v6, v1, v4

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {p0, v6}, Le/m/h/a/d/n/c;->a(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v2

    :cond_3
    if-eqz v5, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public b(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;
    .locals 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    sget-object v0, Le/m/h/a/d/n/j;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p2, Le/m/h/a/d/n/c;->d:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x45

    invoke-static {p2, p3}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result p3

    const-string v0, "Unknown model type "

    const-string v1, ". Cannot find a dir to store the downloaded model."

    invoke-static {p3, v0, p2, v1}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    sget-object p2, Le/m/h/a/d/n/c;->c:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_2
    sget-object p2, Le/m/h/a/d/n/c;->e:Ljava/lang/String;

    .line 7
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Le/m/h/a/d/n/c;->a:Le/m/h/a/d/g;

    .line 8
    invoke-virtual {v1}, Le/m/h/a/d/g;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 9
    new-instance p2, Ljava/io/File;

    const-string p3, "temp"

    invoke-direct {p2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p2

    .line 10
    :cond_3
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p2
.end method

.method public final c(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/h/a/a;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/m/h/a/d/n/c;->b(Ljava/lang/String;Le/m/h/a/d/k;Z)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    sget-object p2, Le/m/h/a/d/n/c;->b:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string p3, "model folder does not exist, creating one: "

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p3, v0

    :goto_0
    const-string v0, "ModelFileHelper"

    invoke-virtual {p2, v0, p3}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p2, Le/m/h/a/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x1f

    const-string v0, "Failed to create model folder: "

    invoke-static {p3, v0, p1}, Le/d/c/a/a;->Q1(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xd

    invoke-direct {p2, p1, p3}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p2

    if-eqz p2, :cond_3

    :goto_1
    return-object p1

    .line 7
    :cond_3
    new-instance p2, Le/m/h/a/a;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x47

    const-string v0, "Can not create model folder, since an existing file has the same name: "

    invoke-static {p3, v0, p1}, Le/d/c/a/a;->Q1(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Le/m/h/a/a;-><init>(Ljava/lang/String;I)V

    throw p2
.end method
