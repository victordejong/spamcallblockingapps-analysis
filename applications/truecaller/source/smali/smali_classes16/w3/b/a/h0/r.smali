.class public final Lw3/b/a/h0/r;
.super Lw3/b/a/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lw3/b/a/d;",
            "Lw3/b/a/h0/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lw3/b/a/d;

.field public final b:Lw3/b/a/j;


# direct methods
.method public constructor <init>(Lw3/b/a/d;Lw3/b/a/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/c;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Lw3/b/a/h0/r;->a:Lw3/b/a/d;

    .line 3
    iput-object p2, p0, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static declared-synchronized F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;
    .locals 4

    const-class v0, Lw3/b/a/h0/r;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lw3/b/a/h0/r;->c:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lw3/b/a/h0/r;->c:Ljava/util/HashMap;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b/a/h0/r;

    if-eqz v1, :cond_1

    .line 4
    iget-object v3, v1, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    if-eq v3, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_2

    .line 5
    new-instance v2, Lw3/b/a/h0/r;

    invoke-direct {v2, p0, p1}, Lw3/b/a/h0/r;-><init>(Lw3/b/a/d;Lw3/b/a/j;)V

    .line 6
    sget-object p1, Lw3/b/a/h0/r;->c:Ljava/util/HashMap;

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

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->a:Lw3/b/a/d;

    iget-object v1, p0, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    invoke-static {v0, v1}, Lw3/b/a/h0/r;->F(Lw3/b/a/d;Lw3/b/a/j;)Lw3/b/a/h0/r;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public B(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public C(JI)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public final G()Ljava/lang/UnsupportedOperationException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lw3/b/a/h0/r;->a:Lw3/b/a/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/j;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->c(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public f(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->a:Lw3/b/a/d;

    .line 2
    iget-object v0, v0, Lw3/b/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public i(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->d(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->e(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->b:Lw3/b/a/j;

    return-object v0
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public o()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public p(J)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public s()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public t(Lw3/b/a/b0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UnsupportedDateTimeField"

    return-object v0
.end method

.method public u(Lw3/b/a/b0;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Lw3/b/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/r;->a:Lw3/b/a/d;

    return-object v0
.end method

.method public x(J)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z(J)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/r;->G()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
