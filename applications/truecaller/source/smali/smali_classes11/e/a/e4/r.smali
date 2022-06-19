.class public abstract Le/a/e4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e4/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e4/r$b;,
        Le/a/e4/r$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/e4/f0/a;

.field public final c:Le/a/e4/e0/a;

.field public final d:Le/a/l0/f;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public volatile h:Z

.field public volatile i:Z

.field public volatile j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/e4/r;->h:Z

    .line 3
    iput-boolean v0, p0, Le/a/e4/r;->i:Z

    .line 4
    iput-boolean v0, p0, Le/a/e4/r;->j:Z

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Le/a/e4/r;->a:Landroid/content/Context;

    .line 6
    invoke-static {p1}, Le/a/l0/f;->c(Landroid/content/Context;)Le/a/l0/f;

    move-result-object v1

    iput-object v1, p0, Le/a/e4/r;->d:Le/a/l0/f;

    .line 7
    new-instance v1, Le/a/e4/f0/a;

    invoke-direct {v1, v0}, Le/a/e4/f0/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Le/a/e4/r;->b:Le/a/e4/f0/a;

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 9
    new-instance v0, Le/a/e4/e0/c;

    invoke-direct {v0, p1}, Le/a/e4/e0/c;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Le/a/e4/e0/b;

    invoke-direct {v0, p1}, Le/a/e4/e0/b;-><init>(Landroid/content/Context;)V

    .line 11
    :goto_0
    iput-object v0, p0, Le/a/e4/r;->c:Le/a/e4/e0/a;

    return-void
.end method

.method public static B(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;
    .locals 6

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Le/a/e4/r$a;->values()[Le/a/e4/r$a;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    .line 3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v5, v3, Le/a/e4/r$a;->b:I

    if-ge v4, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, v3, Le/a/e4/r$a;->c:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v3, v3, Le/a/e4/r$a;->a:Le/a/e4/s;

    invoke-interface {v3, p0, p1}, Le/a/e4/s;->a(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Le/a/e4/p;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance v0, Le/a/e4/d0;

    invoke-direct {v0, p0, p1}, Le/a/e4/d0;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;)V

    return-object v0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/multisim/SimInfo;

    .line 4
    iget-object v3, v2, Lcom/truecaller/multisim/SimInfo;->h:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v2, v2, Lcom/truecaller/multisim/SimInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final C(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/e4/r;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id ASC LIMIT 1"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    .line 4
    :catchall_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " could not be queried for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    return v1
.end method

.method public abstract D()Ljava/lang/String;
.end method

.method public abstract E()Ljava/lang/String;
.end method

.method public abstract F()Ljava/lang/String;
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "-1"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/e4/r;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e4/r;->f:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Le/a/e4/r;->i:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/e4/r;->f:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/e4/r;->b:Le/a/e4/f0/a;

    const-string v1, "android.permission.READ_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/e4/f0/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/a/e4/r;->E()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Le/a/e4/r;->C(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iput-object v0, p0, Le/a/e4/r;->f:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Le/a/e4/r;->i:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Le/a/e4/r;->f:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/e4/r;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e4/r;->e:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Le/a/e4/r;->h:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/e4/r;->e:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/e4/r;->b:Le/a/e4/f0/a;

    const-string v1, "android.permission.READ_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/e4/f0/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/a/e4/r;->F()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Le/a/e4/r;->C(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iput-object v0, p0, Le/a/e4/r;->e:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Le/a/e4/r;->h:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Le/a/e4/r;->e:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public m(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e4/r;->c:Le/a/e4/e0/a;

    invoke-virtual {v0, p1}, Le/a/e4/e0/a;->a(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public n(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e4/r;->d:Le/a/l0/f;

    invoke-virtual {v0, p1}, Le/a/l0/f;->d(I)I

    move-result p1

    return p1
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/a/e4/r;->j:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/e4/r;->g:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Le/a/e4/r;->j:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/e4/r;->g:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/e4/r;->b:Le/a/e4/f0/a;

    const-string v1, "android.permission.READ_CALL_LOG"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/e4/f0/a;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 7
    monitor-exit p0

    return-object v0

    .line 8
    :cond_2
    invoke-virtual {p0}, Le/a/e4/r;->D()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Le/a/e4/r;->d:Le/a/l0/f;

    invoke-virtual {v1}, Le/a/l0/f;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Le/a/e4/r;->C(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iput-object v0, p0, Le/a/e4/r;->g:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Le/a/e4/r;->j:Z

    .line 12
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Le/a/e4/r;->g:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public w(Ljava/lang/String;)Landroid/telephony/SmsManager;
    .locals 0

    .line 1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object p1

    return-object p1
.end method

.method public x(Landroid/database/Cursor;)Le/a/e4/l;
    .locals 1

    .line 1
    new-instance v0, Le/a/e4/r$b;

    invoke-direct {v0, p0, p1}, Le/a/e4/r$b;-><init>(Le/a/e4/r;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
