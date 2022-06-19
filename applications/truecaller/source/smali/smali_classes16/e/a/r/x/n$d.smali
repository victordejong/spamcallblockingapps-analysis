.class public Le/a/r/x/n$d;
.super Le/a/r/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r/x/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r/c/c<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Le/a/r/c/c;-><init>(Landroid/content/Context;)V

    const-string p1, "url"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "destination"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/r/x/n$d;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Le/a/r/x/n$d;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Le/a/b0/b/a/a;->c()Lu3/e0;

    move-result-object v1

    .line 2
    new-instance v2, Lu3/g0$a;

    invoke-direct {v2}, Lu3/g0$a;-><init>()V

    iget-object v3, p0, Le/a/r/x/n$d;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    .line 4
    invoke-virtual {v2}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v2}, Lu3/e0;->a(Lu3/g0;)Lu3/f;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v1, Lu3/p0/g/e;

    :try_start_1
    invoke-virtual {v1}, Lu3/p0/g/e;->execute()Lu3/k0;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lu3/k0;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v1, v1, Lu3/k0;->h:Lu3/l0;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Lu3/l0;->l()Lu3/c0;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "image"

    .line 9
    iget-object v4, v2, Lu3/c0;->b:Ljava/lang/String;

    .line 10
    invoke-static {v3, v4}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {p0}, Ln3/w/b/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Le/a/r/x/n$d;->c:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    :try_start_2
    const-string v3, "$this$sink"

    .line 12
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v3, Lv3/s;

    new-instance v4, Lv3/c0;

    invoke-direct {v4}, Lv3/c0;-><init>()V

    invoke-direct {v3, v2, v4}, Lv3/s;-><init>(Ljava/io/OutputStream;Lv3/c0;)V

    const-string v4, "$this$buffer"

    .line 14
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v4, Lv3/u;

    invoke-direct {v4, v3}, Lv3/u;-><init>(Lv3/z;)V

    .line 16
    invoke-virtual {v1}, Lu3/l0;->q()Lv3/h;

    move-result-object v1

    invoke-virtual {v4, v1}, Lv3/u;->k1(Lv3/b0;)J

    .line 17
    invoke-virtual {v4}, Lv3/u;->close()V

    .line 18
    iget-object v0, p0, Le/a/r/x/n$d;->c:Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 20
    throw v1

    .line 21
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Content-Type, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method
