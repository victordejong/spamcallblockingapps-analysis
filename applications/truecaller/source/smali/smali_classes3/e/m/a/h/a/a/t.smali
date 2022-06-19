.class public final Le/m/a/h/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/a/s3;


# static fields
.field public static final g:Le/m/a/h/a/d/g;

.field public static final h:Landroid/content/Intent;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/m/a/h/a/a/b1;

.field public final c:Le/m/a/h/a/a/j2;

.field public d:Le/m/a/h/a/d/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/r<",
            "Le/m/a/h/a/d/t1;",
            ">;"
        }
    .end annotation
.end field

.field public e:Le/m/a/h/a/d/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/r<",
            "Le/m/a/h/a/d/t1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "AssetPackServiceImpl"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.play.core.assetmoduleservice.BIND_ASSET_MODULE_SERVICE"

    .line 2
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Le/m/a/h/a/a/t;->h:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/m/a/h/a/a/b1;Le/m/a/h/a/a/j2;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Le/m/a/h/a/a/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/m/a/h/a/a/t;->a:Ljava/lang/String;

    iput-object p2, p0, Le/m/a/h/a/a/t;->b:Le/m/a/h/a/a/b1;

    iput-object p3, p0, Le/m/a/h/a/a/t;->c:Le/m/a/h/a/a/j2;

    .line 3
    invoke-static {p1}, Le/m/a/h/a/d/b1;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4
    new-instance p2, Le/m/a/h/a/d/r;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 6
    :goto_0
    sget-object p3, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    sget-object v7, Le/m/a/h/a/a/t;->h:Landroid/content/Intent;

    sget-object v8, Le/m/a/h/a/a/t3;->a:Le/m/a/h/a/a/t3;

    const/4 v6, 0x0

    const-string v3, "AssetPackService"

    move-object v0, p2

    move-object v2, p3

    move-object v4, v7

    move-object v5, v8

    .line 7
    invoke-direct/range {v0 .. v6}, Le/m/a/h/a/d/r;-><init>(Landroid/content/Context;Le/m/a/h/a/d/g;Ljava/lang/String;Landroid/content/Intent;Le/m/a/h/a/d/n;Le/m/a/h/a/d/m;)V

    iput-object p2, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    new-instance p2, Le/m/a/h/a/d/r;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    const/4 p1, 0x0

    const-string v5, "AssetPackService-keepAlive"

    move-object v2, p2

    move-object v4, p3

    move-object v6, v7

    move-object v7, v8

    move-object v8, p1

    .line 9
    invoke-direct/range {v2 .. v8}, Le/m/a/h/a/d/r;-><init>(Landroid/content/Context;Le/m/a/h/a/d/g;Ljava/lang/String;Landroid/content/Intent;Le/m/a/h/a/d/n;Le/m/a/h/a/d/m;)V

    iput-object p2, p0, Le/m/a/h/a/a/t;->e:Le/m/a/h/a/d/r;

    :cond_2
    sget-object p1, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "AssetPackService initiated."

    .line 10
    invoke-virtual {p1, p3, p2}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public static e()Landroid/os/Bundle;
    .locals 4

    const-string v0, "playcore_version_code"

    const/16 v1, 0x2afa

    invoke-static {v0, v1}, Le/d/c/a/a;->M0(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "supported_compression_formats"

    .line 5
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "supported_patch_formats"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static f()Le/m/a/h/a/h/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Le/m/a/h/a/h/r<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, -0xb

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "onError(%d)"

    invoke-virtual {v0, v3, v1}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/a/a;

    .line 2
    invoke-direct {v0, v2}, Le/m/a/h/a/a/a;-><init>(I)V

    invoke-static {v0}, Ln3/g0/y;->m2(Ljava/lang/Exception;)Le/m/a/h/a/h/r;

    move-result-object v0

    return-object v0
.end method

.method public static h(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "session_id"

    .line 3
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "module_name"

    .line 4
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "slice_id"

    .line 5
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "chunk_number"

    .line 6
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static bridge synthetic i(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 6

    .line 1
    invoke-static {}, Le/m/a/h/a/a/t;->e()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Landroid/os/Bundle;

    .line 4
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "installed_asset_module_name"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "installed_asset_module_version"

    .line 7
    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "installed_asset_module"

    .line 9
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Le/m/a/h/a/a/t;->g(ILjava/lang/String;I)V

    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;I)Le/m/a/h/a/h/r;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Le/m/a/h/a/h/r<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Le/m/a/h/a/a/t;->f()Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    .line 2
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    .line 3
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/h/n;

    .line 4
    invoke-direct {v0}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    new-instance v2, Le/m/a/h/a/a/j;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    move-object v10, v0

    .line 5
    invoke-direct/range {v3 .. v10}, Le/m/a/h/a/a/j;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILjava/lang/String;Ljava/lang/String;ILe/m/a/h/a/h/n;)V

    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    .line 6
    iget-object p1, v0, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    return-object p1
.end method

.method public final c(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    iget-object v0, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyChunkTransferred"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/h/n;

    .line 3
    invoke-direct {v0}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    new-instance v2, Le/m/a/h/a/a/g;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move v9, p4

    move-object v10, v0

    .line 4
    invoke-direct/range {v3 .. v10}, Le/m/a/h/a/a/g;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILjava/lang/String;Ljava/lang/String;ILe/m/a/h/a/h/n;)V

    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Le/m/a/h/a/a/x0;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    .line 6
    invoke-direct {p2, p3, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public final d(Ljava/util/Map;)Le/m/a/h/a/h/r;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Le/m/a/h/a/h/r<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    if-nez v0, :cond_0

    .line 1
    invoke-static {}, Le/m/a/h/a/a/t;->f()Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "syncPacks"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/h/n;

    .line 3
    invoke-direct {v0}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    new-instance v2, Le/m/a/h/a/a/f;

    .line 4
    invoke-direct {v2, p0, v0, p1, v0}, Le/m/a/h/a/a/f;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;Ljava/util/Map;Le/m/a/h/a/h/n;)V

    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    .line 5
    iget-object p1, v0, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    return-object p1
.end method

.method public final g(ILjava/lang/String;I)V
    .locals 10

    iget-object v0, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifyModuleCompleted"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/h/n;

    .line 3
    invoke-direct {v0}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    new-instance v2, Le/m/a/h/a/a/h;

    move-object v3, v2

    move-object v4, p0

    move-object v5, v0

    move v6, p1

    move-object v7, p2

    move-object v8, v0

    move v9, p3

    .line 4
    invoke-direct/range {v3 .. v9}, Le/m/a/h/a/a/h;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILjava/lang/String;Le/m/a/h/a/h/n;I)V

    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    return-void

    .line 5
    :cond_0
    new-instance p2, Le/m/a/h/a/a/x0;

    const-string p3, "The Play Store app is not installed or is an unofficial version."

    .line 6
    invoke-direct {p2, p3, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public final zze(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "cancelDownloads(%s)"

    .line 1
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/h/n;

    .line 2
    invoke-direct {v0}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    new-instance v2, Le/m/a/h/a/a/e;

    .line 3
    invoke-direct {v2, p0, v0, p1, v0}, Le/m/a/h/a/a/e;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;Ljava/util/List;Le/m/a/h/a/h/n;)V

    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    return-void
.end method

.method public final declared-synchronized zzf()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/a/t;->e:Le/m/a/h/a/d/r;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const-string v2, "Keep alive connection manager is not initialized."

    new-array v1, v1, [Ljava/lang/Object;

    .line 1
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const-string v2, "keepAlive"

    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0, v2, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Le/m/a/h/a/a/t;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Service is already kept alive."

    new-array v1, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v0, Le/m/a/h/a/h/n;

    .line 5
    invoke-direct {v0}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/a/t;->e:Le/m/a/h/a/d/r;

    new-instance v2, Le/m/a/h/a/a/k;

    .line 6
    invoke-direct {v2, p0, v0, v0}, Le/m/a/h/a/a/k;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;Le/m/a/h/a/h/n;)V

    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzi(I)V
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Le/m/a/h/a/a/t;->g:Le/m/a/h/a/d/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "notifySessionFailed"

    .line 2
    invoke-virtual {v0, v2, v1}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Le/m/a/h/a/h/n;

    .line 3
    invoke-direct {v0}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v1, p0, Le/m/a/h/a/a/t;->d:Le/m/a/h/a/d/r;

    new-instance v2, Le/m/a/h/a/a/i;

    .line 4
    invoke-direct {v2, p0, v0, p1, v0}, Le/m/a/h/a/a/i;-><init>(Le/m/a/h/a/a/t;Le/m/a/h/a/h/n;ILe/m/a/h/a/h/n;)V

    invoke-virtual {v1, v2, v0}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Le/m/a/h/a/a/x0;

    const-string v1, "The Play Store app is not installed or is an unofficial version."

    .line 6
    invoke-direct {v0, v1, p1}, Le/m/a/h/a/a/x0;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
