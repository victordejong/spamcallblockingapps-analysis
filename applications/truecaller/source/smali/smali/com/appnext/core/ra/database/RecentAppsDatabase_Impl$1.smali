.class public final Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;
.super Ln3/c0/x$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->createOpenHelper(Ln3/c0/h;)Ln3/e0/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ln3/c0/x$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final createAllTables(Ln3/e0/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `RecentApp` (`recentAppPackage` TEXT NOT NULL, `storeDate` TEXT NOT NULL, `sent` INTEGER NOT NULL, PRIMARY KEY(`recentAppPackage`, `storeDate`))"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'e1eb051e9230fda8568d681a1d3cf00b\')"

    .line 3
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    return-void
.end method

.method public final dropAllTables(Ln3/e0/a/b;)V
    .locals 3

    const-string v0, "DROP TABLE IF EXISTS `RecentApp`"

    .line 1
    invoke-interface {p1, v0}, Ln3/e0/a/b;->S0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v0}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->a(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->b(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 4
    iget-object v2, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v2}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->c(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->b(Ln3/e0/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCreate(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v0}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->d(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->e(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v2}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->f(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->a(Ln3/e0/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onOpen(Ln3/e0/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v0, p1}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->a(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;Ln3/e0/a/b;)Ln3/e0/a/b;

    .line 2
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v0, p1}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->b(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;Ln3/e0/a/b;)V

    .line 3
    iget-object v0, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v0}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->g(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v1}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->h(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl$1;->eY:Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;

    invoke-static {v2}, Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;->i(Lcom/appnext/core/ra/database/RecentAppsDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/c0/q$b;

    invoke-virtual {v2, p1}, Ln3/c0/q$b;->c(Ln3/e0/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMigrate(Ln3/e0/a/b;)V
    .locals 0

    return-void
.end method

.method public final onPreMigrate(Ln3/e0/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/c0/h0/b;->a(Ln3/e0/a/b;)V

    return-void
.end method

.method public final onValidateSchema(Ln3/e0/a/b;)Ln3/c0/x$b;
    .locals 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v3, "recentAppPackage"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    const/4 v13, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, v1

    move v6, v13

    invoke-direct/range {v2 .. v8}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "recentAppPackage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v7, "storeDate"

    const-string v8, "TEXT"

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v6, v1

    move v9, v13

    move-object v11, v2

    move v12, v3

    invoke-direct/range {v6 .. v12}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v4, "storeDate"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ln3/c0/h0/e$a;

    const-string v7, "sent"

    const-string v8, "INTEGER"

    const/4 v10, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Ln3/c0/h0/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v2, "sent"

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Le/d/c/a/a;->W(Ljava/util/HashMap;Ljava/lang/String;Ln3/c0/h0/e$a;I)Ljava/util/HashSet;

    move-result-object v1

    .line 5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 6
    new-instance v4, Ln3/c0/h0/e;

    const-string v5, "RecentApp"

    invoke-direct {v4, v5, v0, v1, v2}, Ln3/c0/h0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 7
    invoke-static {p1, v5}, Ln3/c0/h0/e;->a(Ln3/e0/a/b;Ljava/lang/String;)Ln3/c0/h0/e;

    move-result-object p1

    .line 8
    invoke-virtual {v4, p1}, Ln3/c0/h0/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Ln3/c0/x$b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RecentApp(com.appnext.core.ra.database.RecentApp).\n Expected:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 10
    :cond_0
    new-instance p1, Ln3/c0/x$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Ln3/c0/x$b;-><init>(ZLjava/lang/String;)V

    return-object p1
.end method
