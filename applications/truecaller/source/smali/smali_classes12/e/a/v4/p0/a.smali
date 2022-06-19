.class public final Le/a/v4/p0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/v4/p0/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Le/a/v4/p0/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Le/a/v4/p0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/v4/p0/a$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/v4/p0/a;->d:Le/a/v4/p0/a$a;

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ls1/k;

    const/4 v3, 0x0

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3
    new-instance v5, Ls1/k;

    const-string v6, "proceed"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v2, v3

    const/4 v5, 0x1

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5
    new-instance v8, Ls1/k;

    const-string v9, "continue"

    invoke-direct {v8, v9, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v5

    const/4 v7, 0x2

    .line 6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 7
    new-instance v10, Ls1/k;

    const-string v11, "accept"

    invoke-direct {v10, v11, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v7

    const/4 v8, 0x3

    .line 8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 9
    new-instance v11, Ls1/k;

    const-string v12, "confirm"

    invoke-direct {v11, v12, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v2, v8

    .line 10
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Le/a/v4/p0/a;->a:Ljava/util/Map;

    const/4 v2, 0x6

    new-array v10, v2, [Ls1/k;

    .line 11
    new-instance v11, Ls1/k;

    const-string v12, "login"

    invoke-direct {v11, v12, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v10, v3

    .line 12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 13
    new-instance v12, Ls1/k;

    const-string v13, "signup"

    invoke-direct {v12, v13, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v10, v5

    .line 14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 15
    new-instance v12, Ls1/k;

    const-string v13, "signin"

    invoke-direct {v12, v13, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v10, v7

    .line 16
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 17
    new-instance v12, Ls1/k;

    const-string v13, "verify"

    invoke-direct {v12, v13, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v10, v8

    .line 18
    new-instance v11, Ls1/k;

    const-string v12, "register"

    invoke-direct {v11, v12, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v10, v0

    const/4 v11, 0x5

    .line 19
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 20
    new-instance v13, Ls1/k;

    const-string v14, "getstarted"

    invoke-direct {v13, v14, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v10, v11

    .line 21
    invoke-static {v10}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v10

    sput-object v10, Le/a/v4/p0/a;->b:Ljava/util/Map;

    const/16 v10, 0x10

    new-array v10, v10, [Ls1/k;

    .line 22
    new-instance v12, Ls1/k;

    invoke-direct {v12, v14, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v10, v3

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 24
    new-instance v4, Ls1/k;

    invoke-direct {v4, v9, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v10, v5

    .line 25
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 26
    new-instance v4, Ls1/k;

    const-string v5, "placeorder"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v10, v7

    .line 27
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 28
    new-instance v4, Ls1/k;

    const-string v5, "completepurchase"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v10, v8

    .line 29
    new-instance v3, Ls1/k;

    const-string v4, "checkout"

    invoke-direct {v3, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v10, v0

    .line 30
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    new-instance v1, Ls1/k;

    const-string v3, "completebooking"

    invoke-direct {v1, v3, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v10, v11

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    new-instance v1, Ls1/k;

    const-string v3, "proceedwithbooking"

    invoke-direct {v1, v3, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v10, v2

    const/4 v0, 0x7

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 35
    new-instance v2, Ls1/k;

    const-string v3, "continuewith"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0x8

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 37
    new-instance v2, Ls1/k;

    const-string v3, "getdetails"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0x9

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 39
    new-instance v2, Ls1/k;

    const-string v3, "viewmore"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0xa

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 41
    new-instance v2, Ls1/k;

    const-string v3, "continuereading"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0xb

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 43
    new-instance v2, Ls1/k;

    invoke-direct {v2, v6, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0xc

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 45
    new-instance v2, Ls1/k;

    const-string v3, "newupdates"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0xd

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 47
    new-instance v2, Ls1/k;

    const-string v3, "getupdates"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0xe

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 49
    new-instance v2, Ls1/k;

    const-string v3, "subscribe"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    const/16 v0, 0xf

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 51
    new-instance v2, Ls1/k;

    const-string v3, "subscribeforupdates"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v10, v0

    .line 52
    invoke-static {v10}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/v4/p0/a;->c:Ljava/util/Map;

    return-void
.end method
