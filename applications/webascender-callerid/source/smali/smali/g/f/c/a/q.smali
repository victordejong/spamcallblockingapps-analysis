.class public final Lg/f/c/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Ljava/nio/charset/Charset;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/f/c/a/q$a<",
            "TP;>;>;>;"
        }
    .end annotation
.end field

.field private b:Lg/f/c/a/q$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/c/a/q$a<",
            "TP;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lg/f/c/a/q;->d:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TP;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lg/f/c/a/q;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    iput-object p1, p0, Lg/f/c/a/q;->c:Ljava/lang/Class;

    return-void
.end method

.method public static f(Ljava/lang/Class;)Lg/f/c/a/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)",
            "Lg/f/c/a/q<",
            "TP;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/q;

    invoke-direct {v0, p0}, Lg/f/c/a/q;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lg/f/c/a/f0/w0$c;)Lg/f/c/a/q$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lg/f/c/a/f0/w0$c;",
            ")",
            "Lg/f/c/a/q$a<",
            "TP;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lg/f/c/a/f0/w0$c;->e0()Lg/f/c/a/f0/t0;

    move-result-object v0

    sget-object v1, Lg/f/c/a/f0/t0;->ENABLED:Lg/f/c/a/f0/t0;

    if-ne v0, v1, :cond_1

    .line 2
    new-instance v0, Lg/f/c/a/q$a;

    .line 3
    invoke-static {p2}, Lg/f/c/a/c;->a(Lg/f/c/a/f0/w0$c;)[B

    move-result-object v4

    .line 4
    invoke-virtual {p2}, Lg/f/c/a/f0/w0$c;->e0()Lg/f/c/a/f0/t0;

    move-result-object v5

    .line 5
    invoke-virtual {p2}, Lg/f/c/a/f0/w0$c;->d0()Lg/f/c/a/f0/c1;

    move-result-object v6

    .line 6
    invoke-virtual {p2}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result v7

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lg/f/c/a/q$a;-><init>(Ljava/lang/Object;[BLg/f/c/a/f0/t0;Lg/f/c/a/f0/c1;I)V

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p2, Ljava/lang/String;

    invoke-virtual {v0}, Lg/f/c/a/q$a;->a()[B

    move-result-object v1

    sget-object v2, Lg/f/c/a/q;->d:Ljava/nio/charset/Charset;

    invoke-direct {p2, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 10
    iget-object v1, p0, Lg/f/c/a/q;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lg/f/c/a/q;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    .line 15
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "only ENABLED key is allowed"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lg/f/c/a/q$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/q$a<",
            "TP;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/q;->b:Lg/f/c/a/q$a;

    return-object v0
.end method

.method public c([B)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lg/f/c/a/q$a<",
            "TP;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/q;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lg/f/c/a/q;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/q;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/f/c/a/q$a<",
            "TP;>;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/c;->a:[B

    invoke-virtual {p0, v0}, Lg/f/c/a/q;->c([B)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(Lg/f/c/a/q$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/c/a/q$a<",
            "TP;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/q$a;->d()Lg/f/c/a/f0/t0;

    move-result-object v0

    sget-object v1, Lg/f/c/a/f0/t0;->ENABLED:Lg/f/c/a/f0/t0;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/q$a;->a()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lg/f/c/a/q;->c([B)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lg/f/c/a/q;->b:Lg/f/c/a/q$a;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry cannot be set to an entry which is not held by this primitive set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry has to be ENABLED"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the primary entry must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
