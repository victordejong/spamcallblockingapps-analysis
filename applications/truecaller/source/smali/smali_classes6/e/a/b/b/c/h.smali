.class public final Le/a/b/b/c/h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.bizmon.ui.profile.CreateBusinessProfileActivity$downloadLogoLocally$1"
    f = "CreateBusinessProfileActivity.kt"
    l = {
        0x20f,
        0x215
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

.field public final synthetic i:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Landroid/net/Uri;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iput-object p2, p0, Le/a/b/b/c/h;->i:Landroid/net/Uri;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/b/b/c/h;

    iget-object v0, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iget-object v1, p0, Le/a/b/b/c/h;->i:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/b/c/h;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Landroid/net/Uri;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/b/c/h;

    iget-object v0, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    iget-object v1, p0, Le/a/b/b/c/h;->i:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, p2}, Le/a/b/b/c/h;-><init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;Landroid/net/Uri;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/b/c/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/b/c/h;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/b/b/c/h;->f:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v3, p0, Le/a/b/b/c/h;->e:Ljava/lang/Object;

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance p1, Ls1/z/c/c0;

    invoke-direct {p1}, Ls1/z/c/c0;-><init>()V

    iget-object v1, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-static {v1}, Le/a/b0/q/s;->g(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Le/a/b/b/c/h;->i:Landroid/net/Uri;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_5

    .line 6
    :try_start_2
    iget-object v5, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v5, :cond_4

    :try_start_3
    const-string v6, "input"

    .line 7
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "output"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v1, v5, v6, v4}, Le/q/f/a/d/a;->U(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    .line 8
    iget-object v6, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {v6}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ra()Ls1/w/f;

    move-result-object v6

    new-instance v7, Le/a/b/b/c/h$b;

    invoke-direct {v7, v2, v1, p0, p1}, Le/a/b/b/c/h$b;-><init>(Ls1/w/d;Ljava/io/InputStream;Le/a/b/b/c/h;Ls1/z/c/c0;)V

    iput-object v1, p0, Le/a/b/b/c/h;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/b/b/c/h;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/b/b/c/h;->g:I

    invoke-static {v6, v7, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    move-object v1, v5

    .line 9
    :goto_0
    :try_start_4
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v3, v1

    move-object v1, v5

    :goto_1
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v5

    :try_start_6
    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 10
    :cond_4
    :goto_2
    :try_start_7
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catchall_4
    move-exception p1

    :goto_3
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception v3

    :try_start_9
    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 11
    :catch_0
    iget-object p1, p0, Le/a/b/b/c/h;->h:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-virtual {p1}, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->ra()Ls1/w/f;

    move-result-object p1

    new-instance v1, Le/a/b/b/c/h$a;

    invoke-direct {v1, p0, v2}, Le/a/b/b/c/h$a;-><init>(Le/a/b/b/c/h;Ls1/w/d;)V

    iput-object v2, p0, Le/a/b/b/c/h;->e:Ljava/lang/Object;

    iput-object v2, p0, Le/a/b/b/c/h;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/b/b/c/h;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 12
    :cond_5
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
