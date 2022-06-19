.class public final Lp3/a/o1/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/q1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/o1/d;


# direct methods
.method public constructor <init>(Lp3/a/o1/d;Lp3/a/o1/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/d$d;->a:Lp3/a/o1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lp3/a/n1/v;
    .locals 23

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lp3/a/o1/d$d;->a:Lp3/a/o1/d;

    .line 2
    iget-wide v2, v0, Lp3/a/o1/d;->f:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v12, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v12, v2

    .line 3
    :goto_0
    new-instance v2, Lp3/a/o1/d$e;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    iget-object v4, v0, Lp3/a/o1/d;->e:Lp3/a/o1/d$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_2

    if-ne v4, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object v8, v3

    goto :goto_2

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown negotiation type: "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lp3/a/o1/d;->e:Lp3/a/o1/d$b;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6
    :cond_2
    :try_start_0
    iget-object v3, v0, Lp3/a/o1/d;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_3

    const-string v3, "Default"

    .line 7
    sget-object v4, Lp3/a/o1/o/i;->d:Lp3/a/o1/o/i;

    .line 8
    iget-object v4, v4, Lp3/a/o1/o/i;->a:Ljava/security/Provider;

    .line 9
    invoke-static {v3, v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, v0, Lp3/a/o1/d;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 11
    :cond_3
    iget-object v3, v0, Lp3/a/o1/d;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_2
    const/4 v9, 0x0

    .line 12
    iget-object v10, v0, Lp3/a/o1/d;->d:Lp3/a/o1/o/b;

    iget v11, v0, Lp3/a/o1/d;->i:I

    iget-wide v13, v0, Lp3/a/o1/d;->f:J

    iget-wide v3, v0, Lp3/a/o1/d;->g:J

    move-wide v15, v3

    iget v3, v0, Lp3/a/o1/d;->h:I

    move/from16 v17, v3

    const/16 v18, 0x0

    iget v3, v0, Lp3/a/o1/d;->j:I

    move/from16 v19, v3

    iget-object v0, v0, Lp3/a/o1/d;->b:Lp3/a/n1/x2$b;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v22}, Lp3/a/o1/d$e;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lp3/a/o1/o/b;IZJJIZILp3/a/n1/x2$b;ZLp3/a/o1/d$a;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 13
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "TLS Provider failure"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
