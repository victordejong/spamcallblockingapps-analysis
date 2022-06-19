.class public final Lg/f/c/a/d0/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/c/a/d0/a/a$b;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "a"


# instance fields
.field private final a:Lg/f/c/a/l;

.field private final b:Lg/f/c/a/m;

.field private final c:Z

.field private final d:Lg/f/c/a/a;

.field private final e:Lg/f/c/a/f0/u0;

.field private f:Lg/f/c/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lg/f/c/a/d0/a/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lg/f/c/a/d0/a/a$b;->a(Lg/f/c/a/d0/a/a$b;)Lg/f/c/a/l;

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/d0/a/a;->a:Lg/f/c/a/l;

    if-eqz v0, :cond_4

    .line 4
    invoke-static {p1}, Lg/f/c/a/d0/a/a$b;->b(Lg/f/c/a/d0/a/a$b;)Lg/f/c/a/m;

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/d0/a/a;->b:Lg/f/c/a/m;

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p1}, Lg/f/c/a/d0/a/a$b;->c(Lg/f/c/a/d0/a/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Lg/f/c/a/d0/a/a;->c:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Lg/f/c/a/d0/a/a$b;->d(Lg/f/c/a/d0/a/a$b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "need a master key URI, please set it with Builder#masterKeyUri"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0}, Lg/f/c/a/d0/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {p1}, Lg/f/c/a/d0/a/a$b;->d(Lg/f/c/a/d0/a/a$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/d0/a/c;->d(Ljava/lang/String;)Lg/f/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lg/f/c/a/d0/a/a;->d:Lg/f/c/a/a;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lg/f/c/a/d0/a/a;->d:Lg/f/c/a/a;

    .line 11
    :goto_1
    invoke-static {p1}, Lg/f/c/a/d0/a/a$b;->e(Lg/f/c/a/d0/a/a$b;)Lg/f/c/a/f0/u0;

    move-result-object p1

    iput-object p1, p0, Lg/f/c/a/d0/a/a;->e:Lg/f/c/a/f0/u0;

    .line 12
    invoke-direct {p0}, Lg/f/c/a/d0/a/a;->c()Lg/f/c/a/k;

    move-result-object p1

    iput-object p1, p0, Lg/f/c/a/d0/a/a;->f:Lg/f/c/a/k;

    return-void

    .line 13
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "need to specify where to write the keyset to with Builder#withSharedPref"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "need to specify where to read the keyset from with Builder#withSharedPref"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lg/f/c/a/d0/a/a$b;Lg/f/c/a/d0/a/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/d0/a/a;-><init>(Lg/f/c/a/d0/a/a$b;)V

    return-void
.end method

.method private b()Lg/f/c/a/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg/f/c/a/d0/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lg/f/c/a/d0/a/a;->a:Lg/f/c/a/l;

    iget-object v1, p0, Lg/f/c/a/d0/a/a;->d:Lg/f/c/a/a;

    invoke-static {v0, v1}, Lg/f/c/a/j;->i(Lg/f/c/a/l;Lg/f/c/a/a;)Lg/f/c/a/j;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/k;->i(Lg/f/c/a/j;)Lg/f/c/a/k;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    :goto_0
    sget-object v1, Lg/f/c/a/d0/a/a;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot decrypt keyset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lg/f/c/a/d0/a/a;->a:Lg/f/c/a/l;

    invoke-static {v0}, Lg/f/c/a/b;->a(Lg/f/c/a/l;)Lg/f/c/a/j;

    move-result-object v0

    .line 5
    invoke-direct {p0}, Lg/f/c/a/d0/a/a;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lg/f/c/a/d0/a/a;->b:Lg/f/c/a/m;

    iget-object v2, p0, Lg/f/c/a/d0/a/a;->d:Lg/f/c/a/a;

    invoke-virtual {v0, v1, v2}, Lg/f/c/a/j;->j(Lg/f/c/a/m;Lg/f/c/a/a;)V

    .line 7
    :cond_1
    invoke-static {v0}, Lg/f/c/a/k;->i(Lg/f/c/a/j;)Lg/f/c/a/k;

    move-result-object v0

    return-object v0
.end method

.method private c()Lg/f/c/a/k;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lg/f/c/a/d0/a/a;->b()Lg/f/c/a/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lg/f/c/a/d0/a/a;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot read keyset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lg/f/c/a/d0/a/a;->e:Lg/f/c/a/f0/u0;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lg/f/c/a/k;->h()Lg/f/c/a/k;

    move-result-object v0

    iget-object v1, p0, Lg/f/c/a/d0/a/a;->e:Lg/f/c/a/f0/u0;

    invoke-virtual {v0, v1}, Lg/f/c/a/k;->g(Lg/f/c/a/f0/u0;)Lg/f/c/a/k;

    .line 5
    invoke-direct {p0, v0}, Lg/f/c/a/d0/a/a;->e(Lg/f/c/a/k;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot obtain keyset handle"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lg/f/c/a/d0/a/a;->c:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e(Lg/f/c/a/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lg/f/c/a/d0/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/k;->b()Lg/f/c/a/j;

    move-result-object p1

    iget-object v0, p0, Lg/f/c/a/d0/a/a;->b:Lg/f/c/a/m;

    iget-object v1, p0, Lg/f/c/a/d0/a/a;->d:Lg/f/c/a/a;

    invoke-virtual {p1, v0, v1}, Lg/f/c/a/j;->j(Lg/f/c/a/m;Lg/f/c/a/a;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lg/f/c/a/k;->b()Lg/f/c/a/j;

    move-result-object p1

    iget-object v0, p0, Lg/f/c/a/d0/a/a;->b:Lg/f/c/a/m;

    invoke-static {p1, v0}, Lg/f/c/a/b;->b(Lg/f/c/a/j;Lg/f/c/a/m;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lg/f/c/a/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lg/f/c/a/d0/a/a;->f:Lg/f/c/a/k;

    invoke-virtual {v0}, Lg/f/c/a/k;->b()Lg/f/c/a/j;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
