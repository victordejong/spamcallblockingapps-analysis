.class public final Le/a/s/p/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/p/b;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/s/s/c;

.field public final d:Le/a/p5/a0;

.field public final e:Le/a/s/o/d;

.field public final f:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/u3/g;Le/a/s/s/c;Le/a/p5/a0;Le/a/s/o/d;Le/a/b0/e/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callAssistantSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restAdapter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s/p/c;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/s/p/c;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/s/p/c;->c:Le/a/s/s/c;

    iput-object p4, p0, Le/a/s/p/c;->d:Le/a/p5/a0;

    iput-object p5, p0, Le/a/s/p/c;->e:Le/a/s/o/d;

    iput-object p6, p0, Le/a/s/p/c;->f:Le/a/b0/e/l;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s/p/c;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->H()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/s/p/c;->c:Le/a/s/s/c;

    invoke-interface {v0}, Le/a/s/s/c;->g1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/s/p/c;->d:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/s/p/c;->f:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 10

    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    const/16 v1, 0xa

    int-to-byte v1, v1

    .line 6
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string p1, "digest.digest()"

    invoke-static {v2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Le/a/s/p/c$a;->b:Le/a/s/p/c$a;

    const/16 v9, 0x1e

    const-string v3, ""

    invoke-static/range {v2 .. v9}, Le/q/f/a/d/a;->K1([BLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public execute()Landroidx/work/ListenableWorker$a;
    .locals 12

    .line 1
    invoke-virtual {p0}, Le/a/s/p/c;->a()Z

    move-result v0

    const-string v1, "Result.success()"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    iget-object v2, p0, Le/a/s/p/c;->a:Landroid/content/ContentResolver;

    .line 5
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "Phone.CONTENT_URI"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data4"

    .line 6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 7
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v0, 0x4e20

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0xa8

    const-string v5, "data4 NOT NULL"

    .line 9
    invoke-static/range {v2 .. v11}, Le/a/p5/s0/f;->C(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/os/CancellationSignal;I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p0, v0}, Le/a/s/p/c;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 11
    iget-object v4, p0, Le/a/s/p/c;->c:Le/a/s/s/c;

    invoke-interface {v4}, Le/a/s/s/c;->R2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    new-instance v3, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v3}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 13
    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 14
    :cond_1
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, -0x1

    .line 15
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 16
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    .line 17
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 18
    :cond_2
    :try_start_2
    iget-object v5, p0, Le/a/s/p/c;->e:Le/a/s/o/d;

    new-instance v6, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;

    invoke-direct {v6, v4}, Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Le/a/s/o/f;->j(Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;)Lx3/b;

    move-result-object v4

    invoke-interface {v4}, Lx3/b;->execute()Lx3/a0;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    iget-object v4, p0, Le/a/s/p/c;->c:Le/a/s/s/c;

    invoke-interface {v4, v3}, Le/a/s/s/c;->x0(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 21
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 22
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 23
    :catch_0
    :try_start_4
    new-instance v1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v3, "Result.retry()"

    .line 24
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 25
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 26
    :cond_3
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v1, "Result.failure()"

    .line 27
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
