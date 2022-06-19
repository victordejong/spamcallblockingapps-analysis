.class public Ln3/e0/a/g/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e0/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[Ln3/e0/a/g/a;Ln3/e0/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/e0/a/c$a;

.field public final synthetic b:[Ln3/e0/a/g/a;


# direct methods
.method public constructor <init>(Ln3/e0/a/c$a;[Ln3/e0/a/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e0/a/g/b$a$a;->a:Ln3/e0/a/c$a;

    iput-object p2, p0, Ln3/e0/a/g/b$a$a;->b:[Ln3/e0/a/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e0/a/g/b$a$a;->a:Ln3/e0/a/c$a;

    iget-object v1, p0, Ln3/e0/a/g/b$a$a;->b:[Ln3/e0/a/g/a;

    invoke-static {v1, p1}, Ln3/e0/a/g/b$a;->d([Ln3/e0/a/g/a;Landroid/database/sqlite/SQLiteDatabase;)Ln3/e0/a/g/a;

    move-result-object p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ln3/e0/a/g/a;->d()Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ln3/e0/a/g/a;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ln3/e0/a/g/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/e0/a/c$a;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p1}, Ln3/e0/a/g/a;->b()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    .line 7
    :catch_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ln3/e0/a/g/a;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_1
    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 9
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln3/e0/a/c$a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Ln3/e0/a/g/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/e0/a/c$a;->a(Ljava/lang/String;)V

    .line 11
    :cond_2
    throw v2

    :catch_1
    :goto_3
    if-eqz v1, :cond_3

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 13
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ln3/e0/a/c$a;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 14
    :cond_3
    invoke-virtual {p1}, Ln3/e0/a/g/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/e0/a/c$a;->a(Ljava/lang/String;)V

    :cond_4
    :goto_5
    return-void
.end method
