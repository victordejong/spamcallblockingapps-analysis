.class public final Le/p/a/y/j/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/y/j/n$b;,
        Le/p/a/y/j/n$a;
    }
.end annotation


# static fields
.field public static final a:[Le/p/a/y/j/l;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lv3/i;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x3d

    new-array v0, v0, [Le/p/a/y/j/l;

    .line 1
    new-instance v1, Le/p/a/y/j/l;

    sget-object v2, Le/p/a/y/j/l;->h:Lv3/i;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/p/a/y/j/l;

    sget-object v4, Le/p/a/y/j/l;->e:Lv3/i;

    const-string v5, "GET"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "POST"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Le/p/a/y/j/l;

    sget-object v4, Le/p/a/y/j/l;->f:Lv3/i;

    const-string v5, "/"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "/index.html"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Le/p/a/y/j/l;

    sget-object v4, Le/p/a/y/j/l;->g:Lv3/i;

    const-string v5, "http"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "https"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Le/p/a/y/j/l;

    sget-object v4, Le/p/a/y/j/l;->d:Lv3/i;

    const-string v5, "200"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "204"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "206"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "304"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "400"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "404"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0xc

    aput-object v1, v0, v5

    new-instance v1, Le/p/a/y/j/l;

    const-string v5, "500"

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Le/p/a/y/j/l;

    const-string v4, "accept-charset"

    .line 2
    invoke-static {v4}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v4

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const/16 v1, 0xf

    .line 3
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "accept-encoding"

    .line 4
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    const-string v6, "gzip, deflate"

    invoke-static {v6}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x10

    .line 5
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "accept-language"

    .line 6
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x11

    .line 7
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "accept-ranges"

    .line 8
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x12

    .line 9
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "accept"

    .line 10
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x13

    .line 11
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "access-control-allow-origin"

    .line 12
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x14

    .line 13
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "age"

    .line 14
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x15

    .line 15
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "allow"

    .line 16
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x16

    .line 17
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "authorization"

    .line 18
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x17

    .line 19
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "cache-control"

    .line 20
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x18

    .line 21
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "content-disposition"

    .line 22
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x19

    .line 23
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "content-encoding"

    .line 24
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    .line 25
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "content-language"

    .line 26
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1b

    .line 27
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "content-length"

    .line 28
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    .line 29
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "content-location"

    .line 30
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1d

    .line 31
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "content-range"

    .line 32
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    .line 33
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "content-type"

    .line 34
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1f

    .line 35
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "cookie"

    .line 36
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x20

    .line 37
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "date"

    .line 38
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x21

    .line 39
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "etag"

    .line 40
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x22

    .line 41
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "expect"

    .line 42
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x23

    .line 43
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "expires"

    .line 44
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x24

    .line 45
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "from"

    .line 46
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x25

    .line 47
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "host"

    .line 48
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x26

    .line 49
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "if-match"

    .line 50
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x27

    .line 51
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "if-modified-since"

    .line 52
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x28

    .line 53
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "if-none-match"

    .line 54
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x29

    .line 55
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "if-range"

    .line 56
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2a

    .line 57
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "if-unmodified-since"

    .line 58
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    .line 59
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "last-modified"

    .line 60
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    .line 61
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "link"

    .line 62
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2d

    .line 63
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "location"

    .line 64
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2e

    .line 65
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "max-forwards"

    .line 66
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2f

    .line 67
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "proxy-authenticate"

    .line 68
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x30

    .line 69
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "proxy-authorization"

    .line 70
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x31

    .line 71
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "range"

    .line 72
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x32

    .line 73
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "referer"

    .line 74
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x33

    .line 75
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "refresh"

    .line 76
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x34

    .line 77
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "retry-after"

    .line 78
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x35

    .line 79
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "server"

    .line 80
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x36

    .line 81
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "set-cookie"

    .line 82
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x37

    .line 83
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "strict-transport-security"

    .line 84
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x38

    .line 85
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "transfer-encoding"

    .line 86
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x39

    .line 87
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "user-agent"

    .line 88
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    .line 89
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "vary"

    .line 90
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    .line 91
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "via"

    .line 92
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    .line 93
    new-instance v4, Le/p/a/y/j/l;

    const-string v5, "www-authenticate"

    .line 94
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Le/p/a/y/j/l;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    .line 95
    sput-object v0, Le/p/a/y/j/n;->a:[Le/p/a/y/j/l;

    .line 96
    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 97
    :goto_0
    sget-object v0, Le/p/a/y/j/n;->a:[Le/p/a/y/j/l;

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 98
    aget-object v3, v0, v2

    iget-object v3, v3, Le/p/a/y/j/l;->a:Lv3/i;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    aget-object v0, v0, v2

    iget-object v0, v0, Le/p/a/y/j/l;->a:Lv3/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 101
    sput-object v0, Le/p/a/y/j/n;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Lv3/i;)Lv3/i;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv3/i;->f()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Lv3/i;->i(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x5a

    if-le v2, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lv3/i;->r()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method
