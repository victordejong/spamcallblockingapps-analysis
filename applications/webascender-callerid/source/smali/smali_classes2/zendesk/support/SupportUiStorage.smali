.class public Lzendesk/support/SupportUiStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final gson:Lcom/google/gson/f;

.field private final storage:Lg/h/a/a;


# direct methods
.method public constructor <init>(Lg/h/a/a;Lcom/google/gson/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/SupportUiStorage;->storage:Lg/h/a/a;

    .line 3
    iput-object p2, p0, Lzendesk/support/SupportUiStorage;->gson:Lcom/google/gson/f;

    return-void
.end method

.method private static abortEdit(Lg/h/a/a$c;)V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SupportUiStorage"

    const-string v3, "Unable to cache data"

    .line 1
    invoke-static {v2, v3, v1}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lg/h/a/a$c;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to abort write"

    .line 3
    invoke-static {v2, v1, p0, v0}, Lg/k/b/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lzendesk/support/SupportUiStorage;)Lcom/google/gson/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/SupportUiStorage;->gson:Lcom/google/gson/f;

    return-object p0
.end method

.method private static key(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lg/k/d/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public read(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TE;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lzendesk/support/SupportUiStorage;->storage:Lg/h/a/a;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lzendesk/support/SupportUiStorage;->storage:Lg/h/a/a;

    invoke-static {p1}, Lzendesk/support/SupportUiStorage;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/h/a/a;->D(Ljava/lang/String;)Lg/h/a/a$e;

    move-result-object p1

    .line 3
    new-instance v1, Lzendesk/support/SupportUiStorage$1;

    invoke-direct {v1, p0, p2}, Lzendesk/support/SupportUiStorage$1;-><init>(Lzendesk/support/SupportUiStorage;Ljava/lang/reflect/Type;)V

    invoke-static {p1, v1}, Lzendesk/support/Streams;->use(Ljava/io/Closeable;Lzendesk/support/Streams$Use;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string p1, "SupportUiStorage"

    const-string p2, "Unable to read from cache"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, p2, v0}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lzendesk/support/SupportUiStorage;->storage:Lg/h/a/a;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v2, p0, Lzendesk/support/SupportUiStorage;->storage:Lg/h/a/a;

    invoke-static {p1}, Lzendesk/support/SupportUiStorage;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/h/a/a;->A(Ljava/lang/String;)Lg/h/a/a$c;

    move-result-object v0

    .line 3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    :try_start_2
    invoke-virtual {v0, p1}, Lg/h/a/a$c;->f(I)Ljava/io/OutputStream;

    move-result-object p1

    invoke-static {p1}, Ln/r;->h(Ljava/io/OutputStream;)Ln/b0;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lzendesk/support/SupportUiStorage;->gson:Lcom/google/gson/f;

    invoke-static {v1, p1, p2}, Lzendesk/support/Streams;->toJson(Lcom/google/gson/f;Ln/b0;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lg/h/a/a$c;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 8
    :catch_0
    invoke-static {v0}, Lzendesk/support/SupportUiStorage;->abortEdit(Lg/h/a/a$c;)V

    :cond_0
    :goto_0
    return-void
.end method
