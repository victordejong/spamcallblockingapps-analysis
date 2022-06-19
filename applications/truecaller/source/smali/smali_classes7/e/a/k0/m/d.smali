.class public final Le/a/k0/m/d;
.super Le/a/k0/m/c;
.source "SourceFile"


# instance fields
.field public final d:Le/a/k0/a/q;


# direct methods
.method public constructor <init>(Le/a/k0/a/q;Landroid/content/ContentResolver;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fileWrapper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/k0/m/c;-><init>(Le/a/k0/a/q;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Le/a/k0/m/d;->d:Le/a/k0/a/q;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 0

    const-string p2, "recordingName"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Le/a/k0/m/d$a;

    invoke-direct {p2, p0, p1}, Le/a/k0/m/d$a;-><init>(Le/a/k0/m/d;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le/a/k0/m/c;->f(Ljava/lang/String;Ls1/z/b/l;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Z)Le/a/k0/m/b;
    .locals 5

    .line 1
    sget-object v0, Le/a/k0/m/b$b;->a:Le/a/k0/m/b$b;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 2
    sget-object p1, Le/a/k0/m/b$a;->a:Le/a/k0/m/b$a;

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "TCCallRecordings"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "absolutePath"

    .line 5
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    .line 6
    :try_start_1
    iget-object v4, p0, Le/a/k0/m/d;->d:Le/a/k0/a/q;

    invoke-interface {v4, v1}, Le/a/k0/a/q;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    iget-object v4, p0, Le/a/k0/m/d;->d:Le/a/k0/a/q;

    invoke-interface {v4, v1}, Le/a/k0/a/q;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v2, "Failed to create recording directory"

    .line 8
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    :try_start_2
    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_0
    move v2, v3

    :cond_1
    if-nez v2, :cond_2

    return-object v0

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2}, Le/a/k0/m/c;->g(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance p2, Le/a/k0/m/b$d;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Uri.parse(absolutePath).\u2026Path(fileName).toString()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/k0/m/b$d;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_1
    return-object v0
.end method

.method public i(Ljava/lang/String;)I
    .locals 4

    const-string v0, "path"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/16 p1, 0x400

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method
