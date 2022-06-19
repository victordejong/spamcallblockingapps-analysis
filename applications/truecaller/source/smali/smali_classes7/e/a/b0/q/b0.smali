.class public final Le/a/b0/q/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    invoke-virtual {p1}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object p1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v0

    .line 5
    iget v0, v0, Le/m/f/a/o;->b:I

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    invoke-static {p0, p1, v0}, Le/a/b0/q/b0;->d(Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    sget-object v0, Le/m/f/a/j$c;->b:Le/m/f/a/j$c;

    invoke-static {p0, p1, v0}, Le/a/b0/q/b0;->d(Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    new-instance v0, Le/m/f/a/e;

    sget-object v1, Le/m/f/a/e$a;->a:Le/m/f/a/e$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad country ISO code, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/b0/q/b0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/b0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p0}, Le/a/b0/q/n;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/a/b0/q/b0;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    .line 7
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_1
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/f/a/e;
        }
    .end annotation

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->T()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-static {p0, v0, v1}, Le/a/b0/q/b0;->d(Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$c;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/f/a/e;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Le/a/p5/g0;->E(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    const-class v0, Le/a/b0/q/b0;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-static {p1}, Le/a/b0/q/b0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object p1

    .line 10
    sget-object v1, Le/m/f/a/p;->c:Le/m/f/a/p;

    .line 11
    :try_start_2
    invoke-virtual {p1, p0, v0}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 12
    invoke-virtual {p1, v0}, Le/m/f/a/j;->G(Le/m/f/a/o;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    .line 13
    :cond_1
    invoke-virtual {v1, v0}, Le/m/f/a/p;->b(Le/m/f/a/o;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    .line 14
    :cond_2
    invoke-virtual {p1, v0, p2}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p0

    :catch_1
    return-object p0

    .line 15
    :cond_3
    new-instance p0, Le/m/f/a/e;

    sget-object p2, Le/m/f/a/e$a;->a:Le/m/f/a/e$a;

    const-string v0, "Bad country ISO code, "

    invoke-static {v0, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw p0

    .line 16
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 17
    :cond_4
    new-instance p1, Le/m/f/a/e;

    sget-object p2, Le/m/f/a/e$a;->b:Le/m/f/a/e$a;

    invoke-direct {p1, p2, p0}, Le/m/f/a/e;-><init>(Le/m/f/a/e$a;Ljava/lang/String;)V

    throw p1
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Le/a/b0/q/b0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    sget-object v0, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    invoke-static {p0, p1, v0}, Le/a/b0/q/b0;->d(Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Le/a/b0/q/b0;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Le/a/b0/q/b0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, p1

    :goto_1
    const-string p1, "+"

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lw3/c/a/a/a/h;->z(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
