.class public final Le/a/n/j2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/j2/a;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/n/a1;

.field public final c:Le/a/n/i0;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/b0/o/a;

.field public final f:Le/a/n/j2/c;


# direct methods
.method public constructor <init>(Le/a/n/a1;Le/a/n/i0;Le/a/b0/e/l;Le/a/b0/o/a;Le/a/n/j2/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "driveManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "truecallerAccountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountBackupRequestHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/j2/b;->b:Le/a/n/a1;

    iput-object p2, p0, Le/a/n/j2/b;->c:Le/a/n/i0;

    iput-object p3, p0, Le/a/n/j2/b;->d:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/n/j2/b;->e:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/n/j2/b;->f:Le/a/n/j2/c;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/n/j2/b;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/backup/BackupResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/n/j2/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/j2/b$a;

    iget v1, v0, Le/a/n/j2/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/j2/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/j2/b$a;

    invoke-direct {v0, p0, p1}, Le/a/n/j2/b$a;-><init>(Le/a/n/j2/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/j2/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/j2/b$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/n/j2/b$a;->g:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/backup/BackupResult;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/n/j2/b$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/n/j2/b;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/n/j2/b;->e:Le/a/b0/o/a;

    const-wide/16 v5, -0x1

    const-string v2, "profileUserId"

    invoke-interface {p1, v2, v5, v6}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-nez p1, :cond_4

    .line 5
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/n/j2/b;->d:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 7
    iget-object v2, p0, Le/a/n/j2/b;->d:Le/a/b0/e/l;

    invoke-interface {v2}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 8
    iget-object v5, p0, Le/a/n/j2/b;->d:Le/a/b0/e/l;

    invoke-interface {v5}, Le/a/b0/e/l;->o()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 9
    new-instance v6, Lcom/truecaller/backup/account/BackedUpAccountData;

    invoke-direct {v6, p1, v2, v5}, Lcom/truecaller/backup/account/BackedUpAccountData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/n/j2/b;->b:Le/a/n/a1;

    .line 11
    iget-object v2, p0, Le/a/n/j2/b;->c:Le/a/n/i0;

    sget-object v5, Lcom/truecaller/backup/BackupFile;->ACCOUNT:Lcom/truecaller/backup/BackupFile;

    invoke-interface {v2, v5, v7, v8}, Le/a/n/i0;->b(Lcom/truecaller/backup/BackupFile;J)Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v5, p0, Le/a/n/j2/b;->a:Le/m/e/k;

    invoke-virtual {v5, v6}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gson.toJson(data)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, v0, Le/a/n/j2/b$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/n/j2/b$a;->e:I

    invoke-interface {p1, v2, v5, v0}, Le/a/n/a1;->f(Ljava/lang/String;[BLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 13
    :goto_1
    check-cast p1, Lcom/truecaller/backup/BackupResult;

    .line 14
    sget-object v4, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    if-ne p1, v4, :cond_8

    .line 15
    iput-object p1, v0, Le/a/n/j2/b$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/j2/b$a;->e:I

    invoke-virtual {v2, v0}, Le/a/n/j2/b;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorSave:Lcom/truecaller/backup/BackupResult;

    return-object p1

    :cond_7
    move-object p1, v0

    :cond_8
    return-object p1

    .line 17
    :cond_9
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 18
    :cond_a
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    return-object p1

    .line 19
    :cond_b
    sget-object p1, Lcom/truecaller/backup/BackupResult;->Skipped:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method

.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "+",
            "Lcom/truecaller/backup/BackupResult;",
            "Lcom/truecaller/backup/account/BackedUpAccountData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/n/j2/b$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/n/j2/b$c;

    iget v1, v0, Le/a/n/j2/b$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/j2/b$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/j2/b$c;

    invoke-direct {v0, p0, p3}, Le/a/n/j2/b$c;-><init>(Le/a/n/j2/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/n/j2/b$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/j2/b$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/n/j2/b$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/n/j2/b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/n/j2/b;->b:Le/a/n/a1;

    .line 5
    iget-object v2, p0, Le/a/n/j2/b;->c:Le/a/n/i0;

    sget-object v4, Lcom/truecaller/backup/BackupFile;->ACCOUNT:Lcom/truecaller/backup/BackupFile;

    invoke-interface {v2, v4, p1, p2}, Le/a/n/i0;->b(Lcom/truecaller/backup/BackupFile;J)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p0, v0, Le/a/n/j2/b$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/j2/b$c;->e:I

    invoke-interface {p3, p1, v0}, Le/a/n/a1;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p3, Ljava/io/InputStream;

    const/4 p2, 0x0

    if-eqz p3, :cond_4

    .line 7
    :try_start_0
    iget-object p1, p1, Le/a/n/j2/b;->a:Le/m/e/k;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 8
    new-instance p3, Le/a/n/j2/b$b;

    invoke-direct {p3}, Le/a/n/j2/b$b;-><init>()V

    invoke-virtual {p3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p3

    const-string v1, "object : TypeToken<T>() {}.type"

    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v0}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object v0

    .line 10
    invoke-virtual {p1, v0, p3}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {p1, v0}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    const-string p3, "this.fromJson(json, typeToken<T>())"

    .line 12
    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p1, Lcom/truecaller/backup/account/BackedUpAccountData;

    .line 14
    sget-object p3, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    .line 15
    new-instance v0, Ls1/k;

    invoke-direct {v0, p3, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Cannot parse settings json file"

    .line 16
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 17
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    .line 18
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    const-string p1, "IllegalStateException during parsing settings json file"

    .line 19
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 20
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    .line 21
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    return-object v0

    .line 22
    :cond_4
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorRead:Lcom/truecaller/backup/BackupResult;

    .line 23
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public final c(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/n/j2/b$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/j2/b$d;

    iget v1, v0, Le/a/n/j2/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/j2/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/j2/b$d;

    invoke-direct {v0, p0, p1}, Le/a/n/j2/b$d;-><init>(Le/a/n/j2/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/j2/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/j2/b$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/n/j2/b;->f:Le/a/n/j2/c;

    iput v3, v0, Le/a/n/j2/b$d;->e:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    check-cast p1, Le/a/n/j2/d;

    :try_start_2
    invoke-virtual {p1, v0}, Le/a/n/j2/d;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
