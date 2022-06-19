.class public Lg/g/a/a/k/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/k/j$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "j"

.field private static e:Lg/g/a/a/k/j$a;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:J

.field private final c:Lg/g/a/b/j1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/g/a/b/j1/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lg/g/a/a/k/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iput-object p1, p0, Lg/g/a/a/k/j;->c:Lg/g/a/b/j1/a;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    .line 2
    sget-object v1, Lg/g/a/a/k/j;->e:Lg/g/a/a/k/j$a;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lg/g/a/a/k/j;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lcom/hiya/api/exception/HiyaExcessiveAuthRequestsException;

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->v()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Excessive auth requests"

    invoke-direct {p1, v0, v1}, Lcom/hiya/api/exception/HiyaExcessiveAuthRequestsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lm/g0;->f()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_5

    .line 6
    sget-object v2, Lg/g/a/a/k/j;->d:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "intercept Request is not successful"

    invoke-static {v2, v4, v3}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object v2, Lg/g/a/a/k/j;->e:Lg/g/a/a/k/j$a;

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lg/g/a/a/k/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    return-object v1

    .line 9
    :cond_2
    iget-object v2, p0, Lg/g/a/a/k/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    sget-object v2, Lg/g/a/a/k/j;->e:Lg/g/a/a/k/j$a;

    invoke-virtual {v1}, Lm/g0;->a()Lm/h0;

    move-result-object v3

    invoke-virtual {v3}, Lm/h0;->string()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lg/g/a/a/k/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lg/g/a/a/k/j$a;->a(Ljava/lang/String;I)V

    .line 11
    iget-object v2, p0, Lg/g/a/a/k/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 12
    :cond_3
    invoke-virtual {v1}, Lm/g0;->close()V

    .line 13
    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object v1

    .line 14
    iget-object p1, p0, Lg/g/a/a/k/j;->c:Lg/g/a/b/j1/a;

    invoke-interface {p1}, Lg/g/a/b/j1/a;->a()Ljava/util/Map;

    move-result-object p1

    sget-object v2, Lg/g/a/b/j1/n/b;->AUTH:Lg/g/a/b/j1/n/b;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/g/a/b/j1/n/c;

    if-eqz p1, :cond_4

    .line 15
    invoke-virtual {p1}, Lg/g/a/b/j1/n/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lm/g0;->y()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {v1}, Lm/g0;->L()J

    move-result-wide v2

    iput-wide v2, p0, Lg/g/a/a/k/j;->b:J

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    .line 17
    iput-wide v2, p0, Lg/g/a/a/k/j;->b:J

    :cond_5
    :goto_1
    return-object v1
.end method
