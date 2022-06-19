.class public final Le/a/n/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/d2;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/n/a1;

.field public final c:Le/a/n/d;

.field public final d:Le/a/n/i0;


# direct methods
.method public constructor <init>(Le/m/e/k;Le/a/n/a1;Le/a/n/d;Le/a/n/i0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "driveManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupSettingsRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/e2;->a:Le/m/e/k;

    iput-object p2, p0, Le/a/n/e2;->b:Le/a/n/a1;

    iput-object p3, p0, Le/a/n/e2;->c:Le/a/n/d;

    iput-object p4, p0, Le/a/n/e2;->d:Le/a/n/i0;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    .line 1
    iget-object v0, p0, Le/a/n/e2;->d:Le/a/n/i0;

    sget-object v1, Lcom/truecaller/backup/BackupFile;->SETTINGS:Lcom/truecaller/backup/BackupFile;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Le/a/n/e2;->c:Le/a/n/d;

    .line 3
    iget-object v1, v1, Le/a/n/d;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/n/v;

    .line 6
    invoke-interface {v4}, Le/a/n/v;->a()Z

    move-result v4

    .line 7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Le/a/n/v;

    .line 12
    new-instance v4, Lcom/truecaller/backup/BackupSettingItem;

    invoke-interface {v3}, Le/a/n/v;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Le/a/n/v;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/truecaller/backup/BackupSettingItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    iget-object v2, p0, Le/a/n/e2;->b:Le/a/n/a1;

    iget-object v3, p0, Le/a/n/e2;->a:Le/m/e/k;

    invoke-virtual {v3, v1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gson.toJson(settingsAsPairs)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v1, p1}, Le/a/n/a1;->f(Ljava/lang/String;[BLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :cond_3
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "+",
            "Lcom/truecaller/backup/BackupResult;",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lcom/truecaller/backup/AfterRestoreBehaviorFlag;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/n/e2$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/n/e2$b;

    iget v1, v0, Le/a/n/e2$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/e2$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/e2$b;

    invoke-direct {v0, p0, p2}, Le/a/n/e2$b;-><init>(Le/a/n/e2;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/n/e2$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/e2$b;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/n/e2$b;->g:Ljava/lang/Object;

    check-cast p1, Le/a/n/e2;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/n/e2;->d:Le/a/n/i0;

    sget-object v2, Lcom/truecaller/backup/BackupFile;->SETTINGS:Lcom/truecaller/backup/BackupFile;

    invoke-interface {p2, v2, p1}, Le/a/n/i0;->a(Lcom/truecaller/backup/BackupFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 5
    iget-object p2, p0, Le/a/n/e2;->b:Le/a/n/a1;

    iput-object p0, v0, Le/a/n/e2$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/n/e2$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/n/a1;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Ljava/io/InputStream;

    if-eqz p2, :cond_8

    .line 6
    :try_start_0
    iget-object v0, p1, Le/a/n/e2;->a:Le/m/e/k;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance p2, Le/a/n/e2$a;

    invoke-direct {p2}, Le/a/n/e2$a;-><init>()V

    invoke-virtual {p2}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    const-string v2, "object : TypeToken<T>() {}.type"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1, p2}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-static {p2, v1}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    const-string v0, "this.fromJson(json, typeToken<T>())"

    .line 11
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 15
    check-cast v1, Lcom/truecaller/backup/BackupSettingItem;

    invoke-virtual {v1}, Lcom/truecaller/backup/BackupSettingItem;->component1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/truecaller/backup/BackupSettingItem;->component2()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget-object v3, p1, Le/a/n/e2;->c:Le/a/n/d;

    .line 17
    iget-object v3, v3, Le/a/n/d;->f:Ljava/util/Map;

    .line 18
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/n/v;

    if-eqz v2, :cond_5

    .line 19
    invoke-interface {v2, v1}, Le/a/n/v;->b(Ljava/lang/Object;)Z

    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_3

    :cond_5
    move-object v1, v4

    .line 21
    :goto_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Le/a/n/v;->c()Lcom/truecaller/backup/AfterRestoreBehaviorFlag;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v4

    :goto_4
    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_7
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 25
    sget-object p2, Lcom/truecaller/backup/BackupResult;->Success:Lcom/truecaller/backup/BackupResult;

    .line 26
    new-instance v0, Ls1/k;

    invoke-direct {v0, p2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    const-string p1, "Cannot parse settings json file"

    .line 27
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    .line 29
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catch_1
    const-string p1, "IllegalStateException during parsing settings json file"

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->report([Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorJsonParsing:Lcom/truecaller/backup/BackupResult;

    .line 32
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 33
    :cond_8
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorRead:Lcom/truecaller/backup/BackupResult;

    .line 34
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 35
    :cond_9
    sget-object p1, Lcom/truecaller/backup/BackupResult;->ErrorFileName:Lcom/truecaller/backup/BackupResult;

    .line 36
    new-instance p2, Ls1/k;

    invoke-direct {p2, p1, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method
