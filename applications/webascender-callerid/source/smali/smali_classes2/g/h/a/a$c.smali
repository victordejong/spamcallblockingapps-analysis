.class public final Lg/h/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/h/a/a$c$a;
    }
.end annotation


# instance fields
.field private final a:Lg/h/a/a$d;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lg/h/a/a;


# direct methods
.method private constructor <init>(Lg/h/a/a;Lg/h/a/a$d;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lg/h/a/a$c;->d:Lg/h/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lg/h/a/a$c;->a:Lg/h/a/a$d;

    .line 4
    invoke-static {p2}, Lg/h/a/a$d;->e(Lg/h/a/a$d;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lg/h/a/a;->c(Lg/h/a/a;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lg/h/a/a$c;->b:[Z

    return-void
.end method

.method synthetic constructor <init>(Lg/h/a/a;Lg/h/a/a$d;Lg/h/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/h/a/a$c;-><init>(Lg/h/a/a;Lg/h/a/a$d;)V

    return-void
.end method

.method static synthetic b(Lg/h/a/a$c;)Lg/h/a/a$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/h/a/a$c;->a:Lg/h/a/a$d;

    return-object p0
.end method

.method static synthetic c(Lg/h/a/a$c;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lg/h/a/a$c;->b:[Z

    return-object p0
.end method

.method static synthetic d(Lg/h/a/a$c;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/h/a/a$c;->c:Z

    return p1
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/h/a/a$c;->d:Lg/h/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lg/h/a/a;->i(Lg/h/a/a;Lg/h/a/a$c;Z)V

    return-void
.end method

.method public e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg/h/a/a$c;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/h/a/a$c;->d:Lg/h/a/a;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lg/h/a/a;->i(Lg/h/a/a;Lg/h/a/a$c;Z)V

    .line 3
    iget-object v0, p0, Lg/h/a/a$c;->d:Lg/h/a/a;

    iget-object v1, p0, Lg/h/a/a$c;->a:Lg/h/a/a$d;

    invoke-static {v1}, Lg/h/a/a$d;->b(Lg/h/a/a$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/h/a/a;->l0(Ljava/lang/String;)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lg/h/a/a$c;->d:Lg/h/a/a;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lg/h/a/a;->i(Lg/h/a/a;Lg/h/a/a$c;Z)V

    :goto_0
    return-void
.end method

.method public f(I)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/h/a/a$c;->d:Lg/h/a/a;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lg/h/a/a$c;->a:Lg/h/a/a$d;

    invoke-static {v1}, Lg/h/a/a$d;->g(Lg/h/a/a$d;)Lg/h/a/a$c;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 3
    iget-object v1, p0, Lg/h/a/a$c;->a:Lg/h/a/a$d;

    invoke-static {v1}, Lg/h/a/a$d;->e(Lg/h/a/a$d;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lg/h/a/a$c;->b:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 5
    :cond_0
    iget-object v1, p0, Lg/h/a/a$c;->a:Lg/h/a/a$d;

    invoke-virtual {v1, p1}, Lg/h/a/a$d;->k(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_2
    iget-object v1, p0, Lg/h/a/a$c;->d:Lg/h/a/a;

    invoke-static {v1}, Lg/h/a/a;->e(Lg/h/a/a;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 9
    :goto_0
    :try_start_4
    new-instance p1, Lg/h/a/a$c$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lg/h/a/a$c$a;-><init>(Lg/h/a/a$c;Ljava/io/OutputStream;Lg/h/a/a$a;)V

    monitor-exit v0

    return-object p1

    .line 10
    :catch_1
    invoke-static {}, Lg/h/a/a;->g()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method
