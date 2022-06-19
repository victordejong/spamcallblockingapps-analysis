.class public abstract Le/k/a/c/l0/t/l;
.super Le/k/a/c/l0/t/p0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/l0/t/p0<",
        "TT;>;",
        "Le/k/a/c/l0/i;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/Boolean;

.field public final d:Ljava/text/DateFormat;

.field public final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Boolean;",
            "Ljava/text/DateFormat;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/p0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/t/l;->c:Ljava/lang/Boolean;

    .line 3
    iput-object p3, p0, Le/k/a/c/l0/t/l;->d:Ljava/text/DateFormat;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    :goto_0
    iput-object p1, p0, Le/k/a/c/l0/t/l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1, p2, v1}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v1, p2, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    .line 4
    invoke-virtual {v1}, Le/k/a/a/k$c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/l;->r(Ljava/lang/Boolean;Ljava/text/DateFormat;)Le/k/a/c/l0/t/l;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v2, p2, Le/k/a/a/k$d;->a:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    if-eqz v2, :cond_6

    .line 7
    invoke-virtual {p2}, Le/k/a/a/k$d;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p2, Le/k/a/a/k$d;->c:Ljava/util/Locale;

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 10
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 11
    iget-object v1, v1, Le/k/a/c/c0/a;->i:Ljava/util/Locale;

    .line 12
    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 13
    iget-object v3, p2, Le/k/a/a/k$d;->a:Ljava/lang/String;

    .line 14
    invoke-direct {v2, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 15
    invoke-virtual {p2}, Le/k/a/a/k$d;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Le/k/a/a/k$d;->c()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_2

    .line 16
    :cond_4
    iget-object p1, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 17
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 18
    iget-object p1, p1, Le/k/a/c/c0/a;->j:Ljava/util/TimeZone;

    if-nez p1, :cond_5

    .line 19
    sget-object p1, Le/k/a/c/c0/a;->l:Ljava/util/TimeZone;

    .line 20
    :cond_5
    :goto_2
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 21
    invoke-virtual {p0, v0, v2}, Le/k/a/c/l0/t/l;->r(Ljava/lang/Boolean;Ljava/text/DateFormat;)Le/k/a/c/l0/t/l;

    move-result-object p1

    return-object p1

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/k/a/a/k$d;->d()Z

    move-result v2

    .line 23
    invoke-virtual {p2}, Le/k/a/a/k$d;->e()Z

    move-result v5

    .line 24
    sget-object v6, Le/k/a/a/k$c;->i:Le/k/a/a/k$c;

    if-ne v1, v6, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v4

    :goto_3
    if-nez v2, :cond_8

    if-nez v5, :cond_8

    if-nez v1, :cond_8

    return-object p0

    .line 25
    :cond_8
    iget-object v1, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 26
    iget-object v1, v1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 27
    iget-object v1, v1, Le/k/a/c/c0/a;->h:Ljava/text/DateFormat;

    .line 28
    instance-of v5, v1, Le/k/a/c/n0/z;

    if-eqz v5, :cond_b

    .line 29
    check-cast v1, Le/k/a/c/n0/z;

    .line 30
    invoke-virtual {p2}, Le/k/a/a/k$d;->d()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 31
    iget-object p1, p2, Le/k/a/a/k$d;->c:Ljava/util/Locale;

    .line 32
    invoke-virtual {v1, p1}, Le/k/a/c/n0/z;->j(Ljava/util/Locale;)Le/k/a/c/n0/z;

    move-result-object v1

    .line 33
    :cond_9
    invoke-virtual {p2}, Le/k/a/a/k$d;->e()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 34
    invoke-virtual {p2}, Le/k/a/a/k$d;->c()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/k/a/c/n0/z;->k(Ljava/util/TimeZone;)Le/k/a/c/n0/z;

    move-result-object v1

    .line 35
    :cond_a
    invoke-virtual {p0, v0, v1}, Le/k/a/c/l0/t/l;->r(Ljava/lang/Boolean;Ljava/text/DateFormat;)Le/k/a/c/l0/t/l;

    move-result-object p1

    return-object p1

    .line 36
    :cond_b
    instance-of v5, v1, Ljava/text/SimpleDateFormat;

    if-nez v5, :cond_c

    .line 37
    iget-object v5, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "Configured `DateFormat` (%s) not a `SimpleDateFormat`; cannot configure `Locale` or `TimeZone`"

    .line 39
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Le/k/a/c/e;->n(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    :cond_c
    check-cast v1, Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_d

    .line 41
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 42
    iget-object v2, p2, Le/k/a/a/k$d;->c:Ljava/util/Locale;

    .line 43
    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_4

    .line 44
    :cond_d
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/SimpleDateFormat;

    .line 45
    :goto_4
    invoke-virtual {p2}, Le/k/a/a/k$d;->c()Ljava/util/TimeZone;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 46
    invoke-virtual {p1}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    move v3, v4

    :goto_5
    if-eqz v3, :cond_f

    .line 47
    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 48
    :cond_f
    invoke-virtual {p0, v0, p1}, Le/k/a/c/l0/t/l;->r(Ljava/lang/Boolean;Ljava/text/DateFormat;)Le/k/a/c/l0/t/l;

    move-result-object p1

    return-object p1
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "TT;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public p(Le/k/a/c/a0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/l;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/l;->d:Ljava/text/DateFormat;

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Le/k/a/c/z;->l:Le/k/a/c/z;

    invoke-virtual {p1, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null SerializerProvider passed for "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 7
    invoke-static {v1, v0}, Le/d/c/a/a;->Z1(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public q(Ljava/util/Date;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/l;->d:Ljava/text/DateFormat;

    if-nez v0, :cond_1

    .line 2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Le/k/a/c/z;->l:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Le/k/a/b/g;->K0(J)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3}, Le/k/a/c/a0;->r()Ljava/text/DateFormat;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object p3, p0, Le/k/a/c/l0/t/l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/text/DateFormat;

    if-nez p3, :cond_2

    .line 7
    iget-object p3, p0, Le/k/a/c/l0/t/l;->d:Ljava/text/DateFormat;

    invoke-virtual {p3}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/text/DateFormat;

    .line 8
    :cond_2
    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/k/a/c/l0/t/l;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract r(Ljava/lang/Boolean;Ljava/text/DateFormat;)Le/k/a/c/l0/t/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/text/DateFormat;",
            ")",
            "Le/k/a/c/l0/t/l<",
            "TT;>;"
        }
    .end annotation
.end method
