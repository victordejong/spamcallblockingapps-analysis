.class public final Le/f/a/n/q/d/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/io/File;

.field public static volatile e:I

.field public static volatile f:I

.field public static volatile g:Le/f/a/n/q/d/t;


# instance fields
.field public final a:Z

.field public b:I

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Le/f/a/n/q/d/t;->d:Ljava/io/File;

    const/16 v0, 0x2bc

    .line 2
    sput v0, Le/f/a/n/q/d/t;->e:I

    const/16 v0, 0x80

    .line 3
    sput v0, Le/f/a/n/q/d/t;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/f/a/n/q/d/t;->c:Z

    .line 3
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "SM-N935"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v4, "SM-J720"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string v4, "SM-G965"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v4, "SM-G960"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "SM-G935"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v4, "SM-G930"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_0

    :sswitch_6
    const-string v4, "SM-A520"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 5
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_8

    goto :goto_1

    :cond_8
    move v0, v2

    .line 6
    :cond_9
    :goto_1
    iput-boolean v0, p0, Le/f/a/n/q/d/t;->a:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x535d271b -> :sswitch_6
        -0x535a5dbe -> :sswitch_5
        -0x535a5db9 -> :sswitch_4
        -0x535a5d61 -> :sswitch_3
        -0x535a5d5c -> :sswitch_2
        -0x53590842 -> :sswitch_1
        -0x53572f20 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Le/f/a/n/q/d/t;
    .locals 2

    .line 1
    sget-object v0, Le/f/a/n/q/d/t;->g:Le/f/a/n/q/d/t;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Le/f/a/n/q/d/t;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Le/f/a/n/q/d/t;->g:Le/f/a/n/q/d/t;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Le/f/a/n/q/d/t;

    invoke-direct {v1}, Le/f/a/n/q/d/t;-><init>()V

    sput-object v1, Le/f/a/n/q/d/t;->g:Le/f/a/n/q/d/t;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Le/f/a/n/q/d/t;->g:Le/f/a/n/q/d/t;

    return-object v0
.end method


# virtual methods
.method public b(IIZZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 1
    iget-boolean p3, p0, Le/f/a/n/q/d/t;->a:Z

    if-eqz p3, :cond_3

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p3, v1, :cond_3

    if-eqz p4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget p3, Le/f/a/n/q/d/t;->f:I

    const/4 p4, 0x1

    if-lt p1, p3, :cond_3

    sget p1, Le/f/a/n/q/d/t;->f:I

    if-lt p2, p1, :cond_3

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget p1, p0, Le/f/a/n/q/d/t;->b:I

    add-int/2addr p1, p4

    iput p1, p0, Le/f/a/n/q/d/t;->b:I

    const/16 p2, 0x32

    if-lt p1, p2, :cond_2

    .line 5
    iput v0, p0, Le/f/a/n/q/d/t;->b:I

    .line 6
    sget-object p1, Le/f/a/n/q/d/t;->d:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    .line 7
    sget p2, Le/f/a/n/q/d/t;->e:I

    if-ge p1, p2, :cond_1

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Le/f/a/n/q/d/t;->c:Z

    if-nez p1, :cond_2

    const-string p1, "Downsampler"

    const/4 p2, 0x5

    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 9
    :cond_2
    iget-boolean p1, p0, Le/f/a/n/q/d/t;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz p1, :cond_3

    move v0, p4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_1
    return v0
.end method
