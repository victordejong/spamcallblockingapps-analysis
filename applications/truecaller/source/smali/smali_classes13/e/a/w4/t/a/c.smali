.class public Le/a/w4/t/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w4/t/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Le/g/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/g/a/h<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le/g/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/g/a/h<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Le/a/w4/t/a/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:[Z

.field public static final e:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Le/g/a/g;

    const/16 v1, 0x1f4

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    invoke-direct {v0, v1, v2, v3}, Le/g/a/g;-><init>(ID)V

    sput-object v0, Le/a/w4/t/a/c;->a:Le/g/a/h;

    .line 2
    new-instance v0, Le/g/a/g;

    invoke-direct {v0, v1, v2, v3}, Le/g/a/g;-><init>(ID)V

    sput-object v0, Le/a/w4/t/a/c;->b:Le/g/a/h;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x5dc

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Le/a/w4/t/a/c;->c:Ljava/util/HashMap;

    const/16 v0, 0x80

    new-array v1, v0, [Z

    .line 4
    sput-object v1, Le/a/w4/t/a/c;->d:[Z

    new-array v0, v0, [Z

    .line 5
    sput-object v0, Le/a/w4/t/a/c;->e:[Z

    const/16 v2, 0xa

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    const/16 v2, 0xd

    aput-boolean v3, v1, v2

    const/16 v2, 0x28

    aput-boolean v3, v1, v2

    const/16 v2, 0x29

    aput-boolean v3, v1, v2

    const/16 v2, 0x5b

    aput-boolean v3, v1, v2

    const/16 v2, 0x5d

    aput-boolean v3, v1, v2

    const/16 v2, 0x7b

    aput-boolean v3, v1, v2

    const/16 v2, 0x7d

    aput-boolean v3, v1, v2

    const/16 v2, 0x3c

    aput-boolean v3, v1, v2

    const/16 v2, 0x3e

    aput-boolean v3, v1, v2

    const/16 v2, 0x5c

    aput-boolean v3, v1, v2

    const/16 v2, 0x2f

    aput-boolean v3, v1, v2

    const/16 v2, 0x22

    aput-boolean v3, v1, v2

    const/16 v2, 0x26

    aput-boolean v3, v1, v2

    const/16 v2, 0x2d

    aput-boolean v3, v1, v2

    const/16 v4, 0x5f

    aput-boolean v3, v1, v4

    const/16 v5, 0x40

    aput-boolean v3, v1, v5

    const/16 v6, 0x3b

    aput-boolean v3, v1, v6

    const/16 v7, 0x2e

    aput-boolean v3, v1, v7

    const/16 v8, 0x3a

    aput-boolean v3, v1, v8

    const/16 v9, 0x2c

    aput-boolean v3, v1, v9

    const/16 v1, 0x3f

    aput-boolean v3, v0, v1

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    aput-boolean v3, v0, v2

    aput-boolean v3, v0, v4

    aput-boolean v3, v0, v5

    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    aput-boolean v3, v0, v6

    aput-boolean v3, v0, v7

    aput-boolean v3, v0, v8

    aput-boolean v3, v0, v9

    return-void
.end method

.method public static a()V
    .locals 2

    .line 1
    sget-object v0, Le/a/w4/t/a/c;->a:Le/g/a/h;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Le/g/a/h;->clear()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    sget-object v1, Le/a/w4/t/a/c;->b:Le/g/a/h;

    monitor-enter v1

    .line 5
    :try_start_1
    invoke-interface {v1}, Le/g/a/h;->clear()V

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    sget-object v0, Le/a/w4/t/a/c;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 8
    :try_start_2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 10
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 11
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)[Le/a/w4/t/a/c$a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Le/a/w4/t/a/c$a;",
            ">;)[",
            "Le/a/w4/t/a/c$a;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, ""

    .line 1
    :cond_0
    sget-object v0, Le/a/w4/t/a/c;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Le/a/w4/t/a/c$a;

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_c

    .line 4
    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 5
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 7
    invoke-static {v3}, Le/a/w4/t/a/c;->c(C)Z

    move-result v4

    if-eqz v4, :cond_2

    if-le v1, v2, :cond_1

    .line 8
    new-instance v3, Le/a/w4/t/a/c$a;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Le/a/w4/t/a/c$a;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v2, v1

    goto :goto_3

    .line 9
    :cond_2
    invoke-static {v3}, Le/a/w4/t/a/c;->d(C)Z

    move-result v4

    if-eqz v4, :cond_4

    if-le v1, v2, :cond_3

    .line 10
    new-instance v3, Le/a/w4/t/a/c$a;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Le/a/w4/t/a/c$a;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v1, 0x1

    goto :goto_3

    .line 11
    :cond_4
    invoke-static {v3}, Le/a/w4/t/a/f/f;->b(C)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v3}, Le/a/w4/t/a/b;->b(C)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    move v4, v0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_8

    if-le v1, v2, :cond_7

    .line 12
    new-instance v4, Le/a/w4/t/a/c$a;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v1}, Le/a/w4/t/a/c$a;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_7
    new-instance v2, Le/a/w4/t/a/c$a;

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v2, v3, v1, v4}, Le/a/w4/t/a/c$a;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_b

    if-nez v2, :cond_a

    .line 15
    new-instance v1, Le/a/w4/t/a/c$a;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Le/a/w4/t/a/c$a;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 16
    :cond_a
    new-instance v0, Le/a/w4/t/a/c$a;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Le/a/w4/t/a/c$a;-><init>(Ljava/lang/String;II)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_b
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Le/a/w4/t/a/c$a;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Le/a/w4/t/a/c$a;

    .line 18
    sget-object p1, Le/a/w4/t/a/c;->c:Ljava/util/HashMap;

    monitor-enter p1

    .line 19
    :try_start_1
    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_c
    :goto_5
    return-object v1

    :catchall_1
    move-exception p0

    .line 21
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static c(C)Z
    .locals 2

    .line 1
    sget-object v0, Le/a/w4/t/a/c;->e:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-boolean p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(C)Z
    .locals 2

    const/16 v0, 0x20

    if-le p0, v0, :cond_2

    .line 1
    sget-object v0, Le/a/w4/t/a/c;->d:[Z

    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget-boolean v0, v0, p0

    if-nez v0, :cond_2

    :cond_0
    const v0, 0xff08

    if-eq p0, v0, :cond_2

    const v0, 0xff09

    if-eq p0, v0, :cond_2

    const v0, 0xff1c

    if-eq p0, v0, :cond_2

    const v0, 0xff1e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x201c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x201d

    if-eq p0, v0, :cond_2

    const v0, 0xff0c

    if-eq p0, v0, :cond_2

    .line 2
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
