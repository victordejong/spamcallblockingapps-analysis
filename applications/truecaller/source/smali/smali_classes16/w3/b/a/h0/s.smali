.class public final Lw3/b/a/h0/s;
.super Lw3/b/a/j;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lw3/b/a/k;",
            "Lw3/b/a/h0/s;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lw3/b/a/k;


# direct methods
.method public constructor <init>(Lw3/b/a/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/j;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    return-void
.end method

.method public static declared-synchronized m(Lw3/b/a/k;)Lw3/b/a/h0/s;
    .locals 3

    const-class v0, Lw3/b/a/h0/s;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lw3/b/a/h0/s;->b:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lw3/b/a/h0/s;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b/a/h0/s;

    :goto_0
    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lw3/b/a/h0/s;

    invoke-direct {v1, p0}, Lw3/b/a/h0/s;-><init>(Lw3/b/a/k;)V

    .line 5
    sget-object v2, Lw3/b/a/h0/s;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(JI)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/s;->n()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public c(JJ)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/s;->n()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/j;

    const/4 p1, 0x0

    return p1
.end method

.method public d(JJ)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/s;->n()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public e(JJ)J
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/h0/s;->n()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/h0/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lw3/b/a/h0/s;

    .line 3
    iget-object p1, p1, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    .line 4
    iget-object p1, p1, Lw3/b/a/k;->a:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    .line 6
    iget-object p1, p1, Lw3/b/a/k;->a:Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 7
    :cond_2
    iget-object v0, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    .line 8
    iget-object v0, v0, Lw3/b/a/k;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v2
.end method

.method public final f()Lw3/b/a/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    return-object v0
.end method

.method public g()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    .line 2
    iget-object v0, v0, Lw3/b/a/k;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Ljava/lang/UnsupportedOperationException;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "UnsupportedDurationField["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/h0/s;->a:Lw3/b/a/k;

    .line 3
    iget-object v1, v1, Lw3/b/a/k;->a:Ljava/lang/String;

    const/16 v2, 0x5d

    .line 4
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
