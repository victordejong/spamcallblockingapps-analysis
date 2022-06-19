.class public Le/a/w4/t/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/w4/t/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le/a/w4/t/a/c$a;->d:I

    .line 3
    iput p3, p0, Le/a/w4/t/a/c$a;->e:I

    .line 4
    iput-object p1, p0, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 7
    sget-object v2, Le/a/w4/t/a/c;->a:Le/g/a/h;

    .line 8
    invoke-static {p2}, Le/a/w4/t/a/f/f;->b(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Le/a/w4/t/a/c;->a:Le/g/a/h;

    monitor-enter v2

    .line 10
    :try_start_0
    invoke-interface {v2, p2}, Le/g/a/h;->i2(C)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 11
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_0

    .line 12
    :try_start_1
    invoke-static {p2}, Le/a/w4/t/a/f/f;->a(C)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    if-eqz p3, :cond_0

    const-string v2, ","

    .line 13
    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 14
    sget-object p3, Le/a/w4/t/a/c;->a:Le/g/a/h;

    monitor-enter p3

    .line 15
    :try_start_2
    invoke-interface {p3, p2, v3}, Le/g/a/h;->J(CLjava/lang/Object;)Ljava/lang/Object;

    .line 16
    monitor-exit p3

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_0
    :goto_0
    move-object p3, v3

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 18
    :cond_1
    invoke-static {p2}, Le/a/w4/t/a/b;->b(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    sget-object v2, Le/a/w4/t/a/c;->b:Le/g/a/h;

    monitor-enter v2

    .line 20
    :try_start_4
    invoke-interface {v2, p2}, Le/g/a/h;->i2(C)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 21
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez p3, :cond_2

    .line 22
    invoke-static {p2, v0}, Le/a/w4/t/a/b;->a(CZ)[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 23
    monitor-enter v2

    .line 24
    :try_start_5
    invoke-interface {v2, p2, p3}, Le/g/a/h;->J(CLjava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v2

    goto :goto_1

    :catchall_3
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :catchall_4
    move-exception p1

    .line 26
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1

    :cond_2
    :goto_1
    if-nez p3, :cond_3

    new-array p2, v0, [Ljava/lang/String;

    .line 27
    invoke-static {p1}, Le/a/w4/t/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    iput-object p2, p0, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    goto :goto_2

    .line 28
    :cond_3
    array-length p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    .line 29
    array-length p2, p3

    invoke-static {p3, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    :goto_2
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    array-length p2, p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le/a/w4/t/a/c$a;->c:Ljava/util/List;

    .line 31
    iget-object p1, p0, Le/a/w4/t/a/c$a;->b:[Ljava/lang/String;

    array-length p2, p1

    :goto_3
    if-ge v1, p2, :cond_4

    aget-object p3, p1, v1

    .line 32
    iget-object v0, p0, Le/a/w4/t/a/c$a;->c:Ljava/util/List;

    invoke-static {p3}, Le/a/w4/t/a/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/w4/t/a/c$a;->a:Ljava/lang/String;

    return-object v0
.end method
