.class public final Le/a/q2/b1/f/a;
.super Ln3/c0/q$b;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/c0/q$b;-><init>()V

    iput-object p1, p0, Le/a/q2/b1/f/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ln3/e0/a/b;)V
    .locals 6

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Le/a/q2/b1/f/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "events-v2.queue"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Le/a/q2/b1/f/b;

    invoke-direct {v1, v0}, Le/a/q2/b1/f/b;-><init>(Ljava/io/File;)V

    .line 4
    iget v2, v1, Le/a/q2/b1/f/b;->c:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    new-instance v4, Le/a/q2/b1/f/b$d;

    invoke-direct {v4, v1, v2, v5}, Le/a/q2/b1/f/b$d;-><init>(Le/a/q2/b1/f/b;ILe/a/q2/b1/f/b$a;)V

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_3

    .line 6
    :goto_2
    invoke-virtual {v5}, Le/a/q2/b1/f/b$d;->a()[B

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "record"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "persisted_event"

    .line 8
    invoke-interface {p1, v1, v3, v2}, Ln3/e0/a/b;->s0(Ljava/lang/String;ILandroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/a/q2/b1/f/b$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_6

    .line 10
    :goto_3
    :try_start_1
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 11
    :goto_4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_4
    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    :goto_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw p1
.end method
