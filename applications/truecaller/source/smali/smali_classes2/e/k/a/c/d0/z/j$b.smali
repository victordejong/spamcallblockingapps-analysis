.class public abstract Le/k/a/c/d0/z/j$b;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/d0/z/e0<",
        "TT;>;",
        "Le/k/a/c/d0/i;"
    }
.end annotation


# instance fields
.field public final d:Ljava/text/DateFormat;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/j$b;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/j$b<",
            "TT;>;",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    iget-object p1, p1, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    invoke-direct {p0, p1}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    .line 5
    iput-object p2, p0, Le/k/a/c/d0/z/j$b;->d:Ljava/text/DateFormat;

    .line 6
    iput-object p3, p0, Le/k/a/c/d0/z/j$b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/z/j$b;->d:Ljava/text/DateFormat;

    .line 3
    iput-object p1, p0, Le/k/a/c/d0/z/j$b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Q(Le/k/a/b/j;Le/k/a/c/g;)Ljava/util/Date;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/j$b;->d:Ljava/text/DateFormat;

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Le/k/a/c/m0/f;->l:Le/k/a/c/m0/f;

    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, p2, p1, v0, v2}, Le/k/a/c/d0/z/b0;->v(Le/k/a/c/g;Ljava/lang/String;Le/k/a/c/m0/f;Ljava/lang/Class;)Le/k/a/c/c0/b;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-object v1

    .line 7
    :cond_0
    new-instance p1, Ljava/util/Date;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/j$b;->d:Ljava/text/DateFormat;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, p0, Le/k/a/c/d0/z/j$b;->d:Ljava/text/DateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 10
    :catch_0
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const-string v3, "expected format \"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 11
    iget-object v6, p0, Le/k/a/c/d0/z/j$b;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p2, v2, p1, v3, v4}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 12
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 13
    :cond_2
    invoke-super {p0, p1, p2}, Le/k/a/c/d0/z/b0;->Q(Le/k/a/b/j;Le/k/a/c/g;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 3
    invoke-virtual {p2}, Le/k/a/a/k$d;->c()Ljava/util/TimeZone;

    move-result-object v0

    .line 4
    iget-object v1, p2, Le/k/a/a/k$d;->e:Ljava/lang/Boolean;

    .line 5
    iget-object v2, p2, Le/k/a/a/k$d;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 6
    iget-object v2, p2, Le/k/a/a/k$d;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Le/k/a/a/k$d;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object p2, p2, Le/k/a/a/k$d;->c:Ljava/util/Locale;

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 10
    iget-object p2, p2, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 11
    iget-object p2, p2, Le/k/a/c/c0/a;->i:Ljava/util/Locale;

    .line 12
    :goto_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p1}, Le/k/a/c/g;->B()Ljava/util/TimeZone;

    move-result-object v0

    .line 14
    :cond_2
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 16
    :cond_3
    invoke-virtual {p0, v3, v2}, Le/k/a/c/d0/z/j$b;->m0(Ljava/text/DateFormat;Ljava/lang/String;)Le/k/a/c/d0/z/j$b;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v0, :cond_8

    .line 17
    iget-object v2, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 18
    iget-object v2, v2, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 19
    iget-object v2, v2, Le/k/a/c/c0/a;->h:Ljava/text/DateFormat;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Le/k/a/c/n0/z;

    if-ne v3, v4, :cond_6

    .line 21
    invoke-virtual {p2}, Le/k/a/a/k$d;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    iget-object p1, p2, Le/k/a/a/k$d;->c:Ljava/util/Locale;

    goto :goto_2

    .line 23
    :cond_5
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 24
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 25
    iget-object p1, p1, Le/k/a/c/c0/a;->i:Ljava/util/Locale;

    .line 26
    :goto_2
    check-cast v2, Le/k/a/c/n0/z;

    .line 27
    invoke-virtual {v2, v0}, Le/k/a/c/n0/z;->k(Ljava/util/TimeZone;)Le/k/a/c/n0/z;

    move-result-object p2

    .line 28
    invoke-virtual {p2, p1}, Le/k/a/c/n0/z;->j(Ljava/util/Locale;)Le/k/a/c/n0/z;

    move-result-object p1

    if-eqz v1, :cond_7

    .line 29
    invoke-virtual {p1, v1}, Le/k/a/c/n0/z;->i(Ljava/lang/Boolean;)Le/k/a/c/n0/z;

    move-result-object p1

    goto :goto_3

    .line 30
    :cond_6
    invoke-virtual {v2}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    .line 31
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    if-eqz v1, :cond_7

    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 33
    :cond_7
    :goto_3
    iget-object p2, p0, Le/k/a/c/d0/z/j$b;->e:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/j$b;->m0(Ljava/text/DateFormat;Ljava/lang/String;)Le/k/a/c/d0/z/j$b;

    move-result-object p1

    return-object p1

    :cond_8
    if-eqz v1, :cond_d

    .line 34
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 35
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 36
    iget-object p1, p1, Le/k/a/c/c0/a;->h:Ljava/text/DateFormat;

    .line 37
    iget-object p2, p0, Le/k/a/c/d0/z/j$b;->e:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Le/k/a/c/n0/z;

    if-ne v0, v2, :cond_a

    .line 39
    check-cast p1, Le/k/a/c/n0/z;

    .line 40
    invoke-virtual {p1, v1}, Le/k/a/c/n0/z;->i(Ljava/lang/Boolean;)Le/k/a/c/n0/z;

    move-result-object p1

    const/16 p2, 0x64

    const-string v0, "[one of: \'"

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    const-string v2, "\', \'"

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 41
    invoke-static {p2, v0, v1, v2, v3}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' ("

    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p1, Le/k/a/c/n0/z;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "strict"

    goto :goto_4

    :cond_9
    const-string v0, "lenient"

    :goto_4
    const-string v1, ")]"

    invoke-static {p2, v0, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 44
    :cond_a
    invoke-virtual {p1}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/DateFormat;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setLenient(Z)V

    .line 46
    instance-of v0, p1, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_b

    .line 47
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    :cond_b
    :goto_5
    if-nez p2, :cond_c

    const-string p2, "[unknown]"

    .line 48
    :cond_c
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/j$b;->m0(Ljava/text/DateFormat;Ljava/lang/String;)Le/k/a/c/d0/z/j$b;

    move-result-object p1

    return-object p1

    :cond_d
    return-object p0
.end method

.method public abstract m0(Ljava/text/DateFormat;Ljava/lang/String;)Le/k/a/c/d0/z/j$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")",
            "Le/k/a/c/d0/z/j$b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->l:Le/k/a/c/m0/f;

    return-object v0
.end method
