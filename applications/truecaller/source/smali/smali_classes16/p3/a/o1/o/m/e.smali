.class public final Lp3/a/o1/o/m/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/o/m/e$b;,
        Lp3/a/o1/o/m/e$a;
    }
.end annotation


# static fields
.field public static final a:Lv3/i;

.field public static final b:[Lp3/a/o1/o/m/d;

.field public static final c:Ljava/util/Map;
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

    const-string v0, ":"

    .line 1
    invoke-static {v0}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/m/e;->a:Lv3/i;

    const/16 v0, 0x3d

    new-array v0, v0, [Lp3/a/o1/o/m/d;

    .line 2
    new-instance v1, Lp3/a/o1/o/m/d;

    sget-object v2, Lp3/a/o1/o/m/d;->h:Lv3/i;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lp3/a/o1/o/m/d;

    sget-object v4, Lp3/a/o1/o/m/d;->e:Lv3/i;

    const-string v5, "GET"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "POST"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lp3/a/o1/o/m/d;

    sget-object v4, Lp3/a/o1/o/m/d;->f:Lv3/i;

    const-string v5, "/"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "/index.html"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lp3/a/o1/o/m/d;

    sget-object v4, Lp3/a/o1/o/m/d;->g:Lv3/i;

    const-string v5, "http"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "https"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Lp3/a/o1/o/m/d;

    sget-object v4, Lp3/a/o1/o/m/d;->d:Lv3/i;

    const-string v5, "200"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/4 v5, 0x7

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "204"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0x8

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "206"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0x9

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "304"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0xa

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "400"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0xb

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "404"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v5, 0xc

    aput-object v1, v0, v5

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v5, "500"

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Ljava/lang/String;)V

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Lp3/a/o1/o/m/d;

    const-string v4, "accept-charset"

    .line 3
    invoke-static {v4}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v4

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const/16 v1, 0xf

    .line 4
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "accept-encoding"

    .line 5
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    const-string v6, "gzip, deflate"

    invoke-static {v6}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x10

    .line 6
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "accept-language"

    .line 7
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x11

    .line 8
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "accept-ranges"

    .line 9
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x12

    .line 10
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "accept"

    .line 11
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x13

    .line 12
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "access-control-allow-origin"

    .line 13
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x14

    .line 14
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "age"

    .line 15
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x15

    .line 16
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "allow"

    .line 17
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x16

    .line 18
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "authorization"

    .line 19
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x17

    .line 20
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "cache-control"

    .line 21
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x18

    .line 22
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "content-disposition"

    .line 23
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x19

    .line 24
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "content-encoding"

    .line 25
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    .line 26
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "content-language"

    .line 27
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1b

    .line 28
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "content-length"

    .line 29
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1c

    .line 30
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "content-location"

    .line 31
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1d

    .line 32
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "content-range"

    .line 33
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1e

    .line 34
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "content-type"

    .line 35
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x1f

    .line 36
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "cookie"

    .line 37
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x20

    .line 38
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "date"

    .line 39
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x21

    .line 40
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "etag"

    .line 41
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x22

    .line 42
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "expect"

    .line 43
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x23

    .line 44
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "expires"

    .line 45
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x24

    .line 46
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "from"

    .line 47
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x25

    .line 48
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "host"

    .line 49
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x26

    .line 50
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "if-match"

    .line 51
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x27

    .line 52
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "if-modified-since"

    .line 53
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x28

    .line 54
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "if-none-match"

    .line 55
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x29

    .line 56
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "if-range"

    .line 57
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2a

    .line 58
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "if-unmodified-since"

    .line 59
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    .line 60
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "last-modified"

    .line 61
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    .line 62
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "link"

    .line 63
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2d

    .line 64
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "location"

    .line 65
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2e

    .line 66
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "max-forwards"

    .line 67
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x2f

    .line 68
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "proxy-authenticate"

    .line 69
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x30

    .line 70
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "proxy-authorization"

    .line 71
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x31

    .line 72
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "range"

    .line 73
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x32

    .line 74
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "referer"

    .line 75
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x33

    .line 76
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "refresh"

    .line 77
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x34

    .line 78
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "retry-after"

    .line 79
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x35

    .line 80
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "server"

    .line 81
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x36

    .line 82
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "set-cookie"

    .line 83
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x37

    .line 84
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "strict-transport-security"

    .line 85
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x38

    .line 86
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "transfer-encoding"

    .line 87
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x39

    .line 88
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "user-agent"

    .line 89
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x3a

    .line 90
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "vary"

    .line 91
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x3b

    .line 92
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "via"

    .line 93
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    const/16 v1, 0x3c

    .line 94
    new-instance v4, Lp3/a/o1/o/m/d;

    const-string v5, "www-authenticate"

    .line 95
    invoke-static {v5}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v5

    invoke-static {v3}, Lv3/i;->d(Ljava/lang/String;)Lv3/i;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lp3/a/o1/o/m/d;-><init>(Lv3/i;Lv3/i;)V

    aput-object v4, v0, v1

    .line 96
    sput-object v0, Lp3/a/o1/o/m/e;->b:[Lp3/a/o1/o/m/d;

    .line 97
    new-instance v1, Ljava/util/LinkedHashMap;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 98
    :goto_0
    sget-object v0, Lp3/a/o1/o/m/e;->b:[Lp3/a/o1/o/m/d;

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 99
    aget-object v3, v0, v2

    iget-object v3, v3, Lp3/a/o1/o/m/d;->a:Lv3/i;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    aget-object v0, v0, v2

    iget-object v0, v0, Lp3/a/o1/o/m/d;->a:Lv3/i;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 102
    sput-object v0, Lp3/a/o1/o/m/e;->c:Ljava/util/Map;

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
