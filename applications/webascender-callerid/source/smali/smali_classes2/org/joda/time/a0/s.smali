.class public final Lorg/joda/time/a0/s;
.super Lorg/joda/time/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/joda/time/d;",
            "Lorg/joda/time/a0/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Lorg/joda/time/d;

.field private final g:Lorg/joda/time/h;


# direct methods
.method private constructor <init>(Lorg/joda/time/d;Lorg/joda/time/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/c;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lorg/joda/time/a0/s;->f:Lorg/joda/time/d;

    .line 3
    iput-object p2, p0, Lorg/joda/time/a0/s;->g:Lorg/joda/time/h;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static declared-synchronized J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;
    .locals 4

    const-class v0, Lorg/joda/time/a0/s;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lorg/joda/time/a0/s;->h:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/joda/time/a0/s;->h:Ljava/util/HashMap;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/a0/s;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lorg/joda/time/a0/s;->l()Lorg/joda/time/h;

    move-result-object v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 5
    new-instance v2, Lorg/joda/time/a0/s;

    invoke-direct {v2, p0, p1}, Lorg/joda/time/a0/s;-><init>(Lorg/joda/time/d;Lorg/joda/time/h;)V

    .line 6
    sget-object p1, Lorg/joda/time/a0/s;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private K()Ljava/lang/UnsupportedOperationException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/joda/time/a0/s;->f:Lorg/joda/time/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/s;->f:Lorg/joda/time/d;

    iget-object v1, p0, Lorg/joda/time/a0/s;->g:Lorg/joda/time/h;

    invoke-static {v0, v1}, Lorg/joda/time/a0/s;->J(Lorg/joda/time/d;Lorg/joda/time/h;)Lorg/joda/time/a0/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public B(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public C(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public D(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public E(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public F(J)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public G(JI)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public H(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/s;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/h;->c(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/s;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->d(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public f(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public i(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/s;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->h(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/s;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->j(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/s;->g:Lorg/joda/time/h;

    return-object v0
.end method

.method public m()Lorg/joda/time/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public o()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public p(J)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public s()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public t(Lorg/joda/time/t;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UnsupportedDateTimeField"

    return-object v0
.end method

.method public u(Lorg/joda/time/t;[I)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/s;->f:Lorg/joda/time/d;

    invoke-virtual {v0}, Lorg/joda/time/d;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Lorg/joda/time/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/s;->f:Lorg/joda/time/d;

    return-object v0
.end method

.method public y(J)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/joda/time/a0/s;->K()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
