.class public final Le/a/c/t/b$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/t/b$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.qa.InsightsQaManagerImpl$corruptDB$1$1"
    f = "InsightsQaManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/t/b$b;


# direct methods
.method public constructor <init>(Le/a/c/t/b$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/t/b$b$a;

    iget-object v0, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    invoke-direct {p1, v0, p2}, Le/a/c/t/b$b$a;-><init>(Le/a/c/t/b$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/t/b$b$a;

    iget-object v0, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    invoke-direct {p1, v0, p2}, Le/a/c/t/b$b$a;-><init>(Le/a/c/t/b$b;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/t/b$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    iget-object v0, v0, Le/a/c/t/b$b;->g:Landroid/content/Context;

    const-string v1, "insights.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "appContext.getDatabasePa\u2026dConfig.INSIGHTS_DB_NAME)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    iget-object v3, v3, Le/a/c/t/b$b;->g:Landroid/content/Context;

    const-string v4, "temp_insights.db"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v5, "appContext.getDatabasePa\u2026onfig.INSIGHTS_DB_NAME}\")"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    new-array v3, v3, [B

    .line 4
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    .line 6
    :goto_0
    invoke-virtual {v6, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_1

    add-int/lit8 v9, v8, 0x1

    .line 7
    rem-int/lit8 v8, v8, 0x2

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    const/16 v8, 0x20

    .line 8
    invoke-virtual {v7, v3, v8, v8}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_0
    move v8, v9

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 10
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 12
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    iget-object v6, v6, Le/a/c/t/b$b;->g:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    :try_start_1
    new-instance p1, Ljava/io/File;

    iget-object v2, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    iget-object v2, v2, Le/a/c/t/b$b;->g:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    goto :goto_2

    :catch_0
    move-exception v2

    move-object p1, v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 14
    :goto_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, p1

    .line 15
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 16
    iget-object p1, p0, Le/a/c/t/b$b$a;->e:Le/a/c/t/b$b;

    iget-object p1, p1, Le/a/c/t/b$b;->g:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
