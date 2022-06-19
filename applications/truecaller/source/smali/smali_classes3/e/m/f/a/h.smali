.class public Le/m/f/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Le/m/f/a/h;


# instance fields
.field public a:Le/m/f/a/r/f;

.field public final b:Le/m/f/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/m/f/a/h;->a:Le/m/f/a/r/f;

    .line 3
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v0

    iput-object v0, p0, Le/m/f/a/h;->b:Le/m/f/a/j;

    .line 4
    new-instance v0, Le/m/f/a/r/f;

    invoke-direct {v0, p1}, Le/m/f/a/r/f;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Le/m/f/a/h;->a:Le/m/f/a/r/f;

    return-void
.end method

.method public static declared-synchronized a()Le/m/f/a/h;
    .locals 3

    const-class v0, Le/m/f/a/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/m/f/a/h;->c:Le/m/f/a/h;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/m/f/a/h;

    const-string v2, "/com/google/i18n/phonenumbers/carrier/data/"

    invoke-direct {v1, v2}, Le/m/f/a/h;-><init>(Ljava/lang/String;)V

    sput-object v1, Le/m/f/a/h;->c:Le/m/f/a/h;

    .line 3
    :cond_0
    sget-object v1, Le/m/f/a/h;->c:Le/m/f/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public b(Le/m/f/a/o;Ljava/util/Locale;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/f/a/h;->b:Le/m/f/a/j;

    invoke-virtual {v0, p1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Le/m/f/a/j;->s(Ljava/lang/String;)Le/m/f/a/l;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Le/m/f/a/j;->h:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or unknown region code provided: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, v0, Le/m/f/a/l;->m0:Z

    :goto_0
    const-string v1, ""

    if-eqz v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Le/m/f/a/h;->b:Le/m/f/a/j;

    invoke-virtual {v0, p1}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object v0

    .line 6
    sget-object v3, Le/m/f/a/j$d;->b:Le/m/f/a/j$d;

    const/4 v4, 0x1

    if-eq v0, v3, :cond_3

    sget-object v3, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    if-eq v0, v3, :cond_3

    sget-object v3, Le/m/f/a/j$d;->i:Le/m/f/a/j$d;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v4

    :goto_2
    if-eqz v0, :cond_a

    .line 7
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v3, p0, Le/m/f/a/h;->a:Le/m/f/a/r/f;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget v5, p1, Le/m/f/a/o;->b:I

    if-eq v5, v4, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    iget-wide v5, p1, Le/m/f/a/o;->d:J

    const-wide/32 v7, 0x989680

    .line 13
    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit16 v5, v5, 0x3e8

    .line 14
    :goto_3
    invoke-virtual {v3, v5, v0, v1, p2}, Le/m/f/a/r/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/m/f/a/r/d;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 15
    invoke-virtual {p2, p1}, Le/m/f/a/r/d;->a(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    const/4 p2, 0x0

    :goto_4
    if-eqz p2, :cond_6

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    :cond_6
    const-string v6, "zh"

    .line 17
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "ja"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "ko"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v2, v4

    :cond_7
    if-eqz v2, :cond_9

    const-string p2, "en"

    .line 18
    invoke-virtual {v3, v5, p2, v1, v1}, Le/m/f/a/r/f;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/m/f/a/r/d;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_5

    .line 19
    :cond_8
    invoke-virtual {p2, p1}, Le/m/f/a/r/d;->a(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object p2

    :cond_9
    if-eqz p2, :cond_a

    move-object v1, p2

    :cond_a
    :goto_5
    return-object v1
.end method
