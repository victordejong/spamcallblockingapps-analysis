.class public final Lcom/hiya/client/database/db/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/hiya/client/database/db/HiyaRoomDb;

.field public static final b:Lcom/hiya/client/database/db/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/database/db/a;

    invoke-direct {v0}, Lcom/hiya/client/database/db/a;-><init>()V

    sput-object v0, Lcom/hiya/client/database/db/a;->b:Lcom/hiya/client/database/db/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/hiya/client/database/db/HiyaRoomDb;
    .locals 5

    .line 1
    const-class v0, Lcom/hiya/client/database/db/HiyaRoomDb;

    const-string v1, "Hiya.db"

    .line 2
    invoke-static {p1, v0, v1}, Landroidx/room/i;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/j$a;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/room/r/a;

    .line 3
    sget-object v2, Lcom/hiya/client/database/db/b;->i:Lcom/hiya/client/database/db/b;

    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->a()Landroidx/room/r/a;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    new-array v1, v0, [Landroidx/room/r/a;

    .line 4
    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->b()Landroidx/room/r/a;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    new-array v1, v0, [Landroidx/room/r/a;

    .line 5
    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->c()Landroidx/room/r/a;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    new-array v1, v0, [Landroidx/room/r/a;

    .line 6
    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->d()Landroidx/room/r/a;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    new-array v1, v0, [Landroidx/room/r/a;

    .line 7
    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->e()Landroidx/room/r/a;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    new-array v1, v0, [Landroidx/room/r/a;

    .line 8
    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->f()Landroidx/room/r/a;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    new-array v1, v0, [Landroidx/room/r/a;

    .line 9
    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->g()Landroidx/room/r/a;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    new-array v0, v0, [Landroidx/room/r/a;

    .line 10
    invoke-virtual {v2}, Lcom/hiya/client/database/db/b;->h()Landroidx/room/r/a;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Landroidx/room/j$a;->b([Landroidx/room/r/a;)Landroidx/room/j$a;

    .line 11
    invoke-virtual {p1}, Landroidx/room/j$a;->d()Landroidx/room/j;

    move-result-object p1

    const-string v0, "Room.databaseBuilder(\n  \u20268_9)\n            .build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/hiya/client/database/db/HiyaRoomDb;

    return-object p1
.end method

.method public static final b(Landroid/content/Context;)Lcom/hiya/client/database/db/HiyaRoomDb;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/client/database/db/a;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/hiya/client/database/db/a;->b:Lcom/hiya/client/database/db/a;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/hiya/client/database/db/a;->a:Lcom/hiya/client/database/db/HiyaRoomDb;

    if-eqz v1, :cond_1

    move-object p0, v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {v0, p0}, Lcom/hiya/client/database/db/a;->a(Landroid/content/Context;)Lcom/hiya/client/database/db/HiyaRoomDb;

    move-result-object p0

    sput-object p0, Lcom/hiya/client/database/db/a;->a:Lcom/hiya/client/database/db/HiyaRoomDb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit v0

    move-object v0, p0

    :goto_1
    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
