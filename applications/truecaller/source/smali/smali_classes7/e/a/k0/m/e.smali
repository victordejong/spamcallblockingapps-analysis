.class public final Le/a/k0/m/e;
.super Le/a/k0/m/c;
.source "SourceFile"


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

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 1

    const-string v0, "recordingName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/k0/m/e$a;

    invoke-direct {v0, p2}, Le/a/k0/m/e$a;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Le/a/k0/m/c;->f(Ljava/lang/String;Ls1/z/b/l;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Z)Le/a/k0/m/b;
    .locals 2

    .line 1
    sget-object v0, Le/a/k0/m/b$c;->a:Le/a/k0/m/b$c;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/a/k0/m/c;->g(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "recordingName"

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/a/k0/m/e$a;

    invoke-direct {v1, p2}, Le/a/k0/m/e$a;-><init>(Z)V

    invoke-virtual {p0, p1, v1}, Le/a/k0/m/c;->f(Ljava/lang/String;Ls1/z/b/l;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p2, Le/a/k0/m/b$d;

    invoke-direct {p2, p1}, Le/a/k0/m/b$d;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public i(Ljava/lang/String;)I
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Absolute path should be not available for Android 10+"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 3
    throw p1
.end method
