.class public Le/a/r/x/q$a;
.super Le/a/r/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/x/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r/c/c<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Le/a/r/c/c;-><init>(Landroid/content/Context;)V

    const-string p1, "source"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "destination"

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    const-string v2, "Source and destination Uris should be provided via Loader arguments"

    .line 3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    .line 4
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Le/a/r/x/q$a;->b:Landroid/net/Uri;

    .line 5
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Le/a/r/x/q$a;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/w/b/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/a/r/x/q$a;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/r/x/q$a;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_1
    const-string v2, "$this$sink"

    .line 4
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lv3/s;

    new-instance v3, Lv3/c0;

    invoke-direct {v3}, Lv3/c0;-><init>()V

    invoke-direct {v2, v0, v3}, Lv3/s;-><init>(Ljava/io/OutputStream;Lv3/c0;)V

    const-string v3, "$this$buffer"

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Lv3/u;

    invoke-direct {v3, v2}, Lv3/u;-><init>(Lv3/z;)V

    const-string v2, "$this$source"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lv3/q;

    new-instance v4, Lv3/c0;

    invoke-direct {v4}, Lv3/c0;-><init>()V

    invoke-direct {v2, v1, v4}, Lv3/q;-><init>(Ljava/io/InputStream;Lv3/c0;)V

    .line 10
    invoke-virtual {v3, v2}, Lv3/u;->k1(Lv3/b0;)J

    .line 11
    invoke-virtual {v3}, Lv3/u;->close()V

    .line 12
    iget-object v2, p0, Le/a/r/x/q$a;->c:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 14
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 16
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 17
    throw v2

    :cond_0
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method
