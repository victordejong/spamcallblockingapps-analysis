.class final Lm/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field private static final k:Ljava/lang/String;

.field private static final l:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lm/x;

.field private final c:Ljava/lang/String;

.field private final d:Lm/d0;

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lm/x;

.field private final h:Lm/w;

.field private final i:J

.field private final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v1}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v2

    invoke-virtual {v2}, Lm/k0/i/h;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Sent-Millis"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm/d$c;->k:Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v1

    invoke-virtual {v1}, Lm/k0/i/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lm/d$c;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lm/g0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->a:Ljava/lang/String;

    .line 38
    sget-object v0, Lm/d;->l:Lm/d$b;

    invoke-virtual {v0, p1}, Lm/d$b;->f(Lm/g0;)Lm/x;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->b:Lm/x;

    .line 39
    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lm/g0;->K()Lm/d0;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->d:Lm/d0;

    .line 41
    invoke-virtual {p1}, Lm/g0;->f()I

    move-result v0

    iput v0, p0, Lm/d$c;->e:I

    .line 42
    invoke-virtual {p1}, Lm/g0;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->f:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lm/g0;->r()Lm/x;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->g:Lm/x;

    .line 44
    invoke-virtual {p1}, Lm/g0;->i()Lm/w;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->h:Lm/w;

    .line 45
    invoke-virtual {p1}, Lm/g0;->N()J

    move-result-wide v0

    iput-wide v0, p0, Lm/d$c;->i:J

    .line 46
    invoke-virtual {p1}, Lm/g0;->L()J

    move-result-wide v0

    iput-wide v0, p0, Lm/d$c;->j:J

    return-void
.end method

.method public constructor <init>(Ln/d0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "rawSource"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lm/d$c;->a:Ljava/lang/String;

    .line 4
    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lm/d$c;->c:Ljava/lang/String;

    .line 5
    new-instance v1, Lm/x$a;

    invoke-direct {v1}, Lm/x$a;-><init>()V

    .line 6
    sget-object v2, Lm/d;->l:Lm/d$b;

    invoke-virtual {v2, v0}, Lm/d$b;->c(Ln/h;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 7
    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lm/x$a;->c(Ljava/lang/String;)Lm/x$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lm/x$a;->e()Lm/x;

    move-result-object v1

    iput-object v1, p0, Lm/d$c;->b:Lm/x;

    .line 9
    sget-object v1, Lm/k0/f/k;->d:Lm/k0/f/k$a;

    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lm/k0/f/k$a;->a(Ljava/lang/String;)Lm/k0/f/k;

    move-result-object v1

    .line 10
    iget-object v2, v1, Lm/k0/f/k;->a:Lm/d0;

    iput-object v2, p0, Lm/d$c;->d:Lm/d0;

    .line 11
    iget v2, v1, Lm/k0/f/k;->b:I

    iput v2, p0, Lm/d$c;->e:I

    .line 12
    iget-object v1, v1, Lm/k0/f/k;->c:Ljava/lang/String;

    iput-object v1, p0, Lm/d$c;->f:Ljava/lang/String;

    .line 13
    new-instance v1, Lm/x$a;

    invoke-direct {v1}, Lm/x$a;-><init>()V

    .line 14
    sget-object v2, Lm/d;->l:Lm/d$b;

    invoke-virtual {v2, v0}, Lm/d$b;->c(Ln/h;)I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 15
    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lm/x$a;->c(Ljava/lang/String;)Lm/x$a;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 16
    :cond_1
    sget-object v2, Lm/d$c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lm/x$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    sget-object v5, Lm/d$c;->l:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lm/x$a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {v1, v2}, Lm/x$a;->h(Ljava/lang/String;)Lm/x$a;

    .line 19
    invoke-virtual {v1, v5}, Lm/x$a;->h(Ljava/lang/String;)Lm/x$a;

    const-wide/16 v7, 0x0

    if-eqz v4, :cond_2

    .line 20
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2

    :cond_2
    move-wide v4, v7

    :goto_2
    iput-wide v4, p0, Lm/d$c;->i:J

    if-eqz v6, :cond_3

    .line 21
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :cond_3
    iput-wide v7, p0, Lm/d$c;->j:J

    .line 22
    invoke-virtual {v1}, Lm/x$a;->e()Lm/x;

    move-result-object v1

    iput-object v1, p0, Lm/d$c;->g:Lm/x;

    .line 23
    invoke-direct {p0}, Lm/d$c;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 24
    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-nez v3, :cond_6

    .line 26
    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v1

    .line 27
    sget-object v2, Lm/j;->t:Lm/j$b;

    invoke-virtual {v2, v1}, Lm/j$b;->b(Ljava/lang/String;)Lm/j;

    move-result-object v1

    .line 28
    invoke-direct {p0, v0}, Lm/d$c;->c(Ln/h;)Ljava/util/List;

    move-result-object v2

    .line 29
    invoke-direct {p0, v0}, Lm/d$c;->c(Ln/h;)Ljava/util/List;

    move-result-object v3

    .line 30
    invoke-interface {v0}, Ln/h;->S()Z

    move-result v4

    if-nez v4, :cond_5

    .line 31
    sget-object v4, Lm/j0;->Companion:Lm/j0$a;

    invoke-interface {v0}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lm/j0$a;->a(Ljava/lang/String;)Lm/j0;

    move-result-object v0

    goto :goto_3

    .line 32
    :cond_5
    sget-object v0, Lm/j0;->SSL_3_0:Lm/j0;

    .line 33
    :goto_3
    sget-object v4, Lm/w;->e:Lm/w$a;

    invoke-virtual {v4, v0, v1, v2, v3}, Lm/w$a;->b(Lm/j0;Lm/j;Ljava/util/List;Ljava/util/List;)Lm/w;

    move-result-object v0

    iput-object v0, p0, Lm/d$c;->h:Lm/w;

    goto :goto_4

    .line 34
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected \"\" but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lm/d$c;->h:Lm/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_4
    invoke-interface {p1}, Ln/d0;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Ln/d0;->close()V

    throw v0
.end method

.method private final a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm/d$c;->a:Ljava/lang/String;

    const-string v1, "https://"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final c(Ln/h;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/h;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lm/d;->l:Lm/d$b;

    invoke-virtual {v0, p1}, Lm/d$b;->c(Ln/h;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    const-string v1, "X.509"

    .line 3
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 5
    invoke-interface {p1}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v5, Ln/f;

    invoke-direct {v5}, Ln/f;-><init>()V

    .line 7
    sget-object v6, Ln/i;->j:Ln/i$a;

    invoke-virtual {v6, v4}, Ln/i$a;->a(Ljava/lang/String;)Ln/i;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v5, v4}, Ln/f;->G0(Ln/i;)Ln/f;

    .line 8
    invoke-virtual {v5}, Ln/f;->v1()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-object v2

    :catch_0
    move-exception p1

    .line 10
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e(Ln/g;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln/g;",
            "Ljava/util/List<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v0, v1}, Ln/g;->p1(J)Ln/g;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ln/g;->T(I)Ln/g;

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    .line 4
    sget-object v4, Ln/i;->j:Ln/i$a;

    const-string v3, "bytes"

    invoke-static {v5, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ln/i$a;->g(Ln/i$a;[BIIILjava/lang/Object;)Ln/i;

    move-result-object v3

    invoke-virtual {v3}, Ln/i;->c()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-interface {p1, v3}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v3

    invoke-interface {v3, v1}, Ln/g;->T(I)Ln/g;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final b(Lm/e0;Lm/g0;)Z
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/d$c;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v1}, Lm/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm/d$c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lm/d;->l:Lm/d$b;

    .line 3
    iget-object v1, p0, Lm/d$c;->b:Lm/x;

    invoke-virtual {v0, p2, v1, p1}, Lm/d$b;->g(Lm/g0;Lm/x;Lm/e0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Lm/k0/d/d$c;)Lm/g0;
    .locals 5

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/d$c;->g:Lm/x;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lm/d$c;->g:Lm/x;

    const-string v2, "Content-Length"

    invoke-virtual {v1, v2}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Lm/e0$a;

    invoke-direct {v2}, Lm/e0$a;-><init>()V

    .line 4
    iget-object v3, p0, Lm/d$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lm/e0$a;->k(Ljava/lang/String;)Lm/e0$a;

    .line 5
    iget-object v3, p0, Lm/d$c;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lm/e0$a;->g(Ljava/lang/String;Lm/f0;)Lm/e0$a;

    .line 6
    iget-object v3, p0, Lm/d$c;->b:Lm/x;

    invoke-virtual {v2, v3}, Lm/e0$a;->f(Lm/x;)Lm/e0$a;

    .line 7
    invoke-virtual {v2}, Lm/e0$a;->b()Lm/e0;

    move-result-object v2

    .line 8
    new-instance v3, Lm/g0$a;

    invoke-direct {v3}, Lm/g0$a;-><init>()V

    .line 9
    invoke-virtual {v3, v2}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    .line 10
    iget-object v2, p0, Lm/d$c;->d:Lm/d0;

    invoke-virtual {v3, v2}, Lm/g0$a;->p(Lm/d0;)Lm/g0$a;

    .line 11
    iget v2, p0, Lm/d$c;->e:I

    invoke-virtual {v3, v2}, Lm/g0$a;->g(I)Lm/g0$a;

    .line 12
    iget-object v2, p0, Lm/d$c;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lm/g0$a;->m(Ljava/lang/String;)Lm/g0$a;

    .line 13
    iget-object v2, p0, Lm/d$c;->g:Lm/x;

    invoke-virtual {v3, v2}, Lm/g0$a;->k(Lm/x;)Lm/g0$a;

    .line 14
    new-instance v2, Lm/d$a;

    invoke-direct {v2, p1, v0, v1}, Lm/d$a;-><init>(Lm/k0/d/d$c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    .line 15
    iget-object p1, p0, Lm/d$c;->h:Lm/w;

    invoke-virtual {v3, p1}, Lm/g0$a;->i(Lm/w;)Lm/g0$a;

    .line 16
    iget-wide v0, p0, Lm/d$c;->i:J

    invoke-virtual {v3, v0, v1}, Lm/g0$a;->s(J)Lm/g0$a;

    .line 17
    iget-wide v0, p0, Lm/d$c;->j:J

    invoke-virtual {v3, v0, v1}, Lm/g0$a;->q(J)Lm/g0$a;

    .line 18
    invoke-virtual {v3}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lm/k0/d/d$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lm/k0/d/d$a;->f(I)Ln/b0;

    move-result-object p1

    invoke-static {p1}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object p1

    .line 2
    :try_start_0
    iget-object v1, p0, Lm/d$c;->a:Ljava/lang/String;

    invoke-interface {p1, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Ln/g;->T(I)Ln/g;

    .line 3
    iget-object v1, p0, Lm/d$c;->c:Ljava/lang/String;

    invoke-interface {p1, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v1

    invoke-interface {v1, v2}, Ln/g;->T(I)Ln/g;

    .line 4
    iget-object v1, p0, Lm/d$c;->b:Lm/x;

    invoke-virtual {v1}, Lm/x;->size()I

    move-result v1

    int-to-long v3, v1

    invoke-interface {p1, v3, v4}, Ln/g;->p1(J)Ln/g;

    move-result-object v1

    invoke-interface {v1, v2}, Ln/g;->T(I)Ln/g;

    .line 5
    iget-object v1, p0, Lm/d$c;->b:Lm/x;

    invoke-virtual {v1}, Lm/x;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    :goto_0
    const-string v4, ": "

    if-ge v3, v1, :cond_0

    .line 6
    :try_start_1
    iget-object v5, p0, Lm/d$c;->b:Lm/x;

    invoke-virtual {v5, v3}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v5

    .line 7
    invoke-interface {v5, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lm/d$c;->b:Lm/x;

    invoke-virtual {v5, v3}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v4

    .line 9
    invoke-interface {v4, v2}, Ln/g;->T(I)Ln/g;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lm/k0/f/k;

    iget-object v3, p0, Lm/d$c;->d:Lm/d0;

    iget v5, p0, Lm/d$c;->e:I

    iget-object v6, p0, Lm/d$c;->f:Ljava/lang/String;

    invoke-direct {v1, v3, v5, v6}, Lm/k0/f/k;-><init>(Lm/d0;ILjava/lang/String;)V

    invoke-virtual {v1}, Lm/k0/f/k;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v1

    invoke-interface {v1, v2}, Ln/g;->T(I)Ln/g;

    .line 11
    iget-object v1, p0, Lm/d$c;->g:Lm/x;

    invoke-virtual {v1}, Lm/x;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    int-to-long v5, v1

    invoke-interface {p1, v5, v6}, Ln/g;->p1(J)Ln/g;

    move-result-object v1

    invoke-interface {v1, v2}, Ln/g;->T(I)Ln/g;

    .line 12
    iget-object v1, p0, Lm/d$c;->g:Lm/x;

    invoke-virtual {v1}, Lm/x;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 13
    iget-object v3, p0, Lm/d$c;->g:Lm/x;

    invoke-virtual {v3, v0}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v3

    .line 14
    invoke-interface {v3, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v3

    .line 15
    iget-object v5, p0, Lm/d$c;->g:Lm/x;

    invoke-virtual {v5, v0}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v3

    .line 16
    invoke-interface {v3, v2}, Ln/g;->T(I)Ln/g;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17
    :cond_1
    sget-object v0, Lm/d$c;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v0

    .line 18
    invoke-interface {v0, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v0

    .line 19
    iget-wide v5, p0, Lm/d$c;->i:J

    invoke-interface {v0, v5, v6}, Ln/g;->p1(J)Ln/g;

    move-result-object v0

    .line 20
    invoke-interface {v0, v2}, Ln/g;->T(I)Ln/g;

    .line 21
    sget-object v0, Lm/d$c;->l:Ljava/lang/String;

    invoke-interface {p1, v0}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v0

    .line 22
    invoke-interface {v0, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v0

    .line 23
    iget-wide v3, p0, Lm/d$c;->j:J

    invoke-interface {v0, v3, v4}, Ln/g;->p1(J)Ln/g;

    move-result-object v0

    .line 24
    invoke-interface {v0, v2}, Ln/g;->T(I)Ln/g;

    .line 25
    invoke-direct {p0}, Lm/d$c;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 26
    invoke-interface {p1, v2}, Ln/g;->T(I)Ln/g;

    .line 27
    iget-object v0, p0, Lm/d$c;->h:Lm/w;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lm/w;->a()Lm/j;

    move-result-object v0

    invoke-virtual {v0}, Lm/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v0

    invoke-interface {v0, v2}, Ln/g;->T(I)Ln/g;

    .line 28
    iget-object v0, p0, Lm/d$c;->h:Lm/w;

    invoke-virtual {v0}, Lm/w;->d()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lm/d$c;->e(Ln/g;Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lm/d$c;->h:Lm/w;

    invoke-virtual {v0}, Lm/w;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lm/d$c;->e(Ln/g;Ljava/util/List;)V

    .line 30
    iget-object v0, p0, Lm/d$c;->h:Lm/w;

    invoke-virtual {v0}, Lm/w;->e()Lm/j0;

    move-result-object v0

    invoke-virtual {v0}, Lm/j0;->javaName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v0

    invoke-interface {v0, v2}, Ln/g;->T(I)Ln/g;

    goto :goto_2

    .line 31
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 32
    :cond_3
    :goto_2
    :try_start_2
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    invoke-static {p1, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
