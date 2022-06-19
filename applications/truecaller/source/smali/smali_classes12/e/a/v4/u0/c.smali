.class public final Le/a/v4/u0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "login"

    const-string v1, "signup"

    const-string v2, "signin"

    const-string v3, "verify"

    const-string v4, "register"

    const-string v5, "getstarted"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/v4/u0/c;->a:Ljava/util/List;

    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ls1/k;

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    new-instance v5, Ls1/k;

    const-string v6, "skip"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v5, 0x2

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7
    new-instance v8, Ls1/k;

    const-string v9, "useanothernum"

    invoke-direct {v8, v9, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v3

    const/16 v7, 0x100

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 9
    new-instance v8, Ls1/k;

    const-string v9, "useanothermethod"

    invoke-direct {v8, v9, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v5

    const/16 v7, 0x200

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 11
    new-instance v8, Ls1/k;

    const-string v9, "manualdetails"

    invoke-direct {v8, v9, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x3

    aput-object v8, v2, v7

    const/16 v8, 0x1000

    .line 12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 13
    new-instance v9, Ls1/k;

    const-string v10, "later"

    invoke-direct {v9, v10, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x4

    aput-object v9, v2, v8

    .line 14
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Le/a/v4/u0/c;->b:Ljava/util/Map;

    const/16 v2, 0x10

    new-array v2, v2, [Ls1/k;

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 16
    new-instance v10, Ls1/k;

    const-string v11, "getstarted"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v6

    .line 17
    new-instance v9, Ls1/k;

    const-string v10, "continue"

    invoke-direct {v9, v10, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v3

    .line 18
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 19
    new-instance v10, Ls1/k;

    const-string v11, "placeorder"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v5

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 21
    new-instance v10, Ls1/k;

    const-string v11, "completepurchase"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v7

    .line 22
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 23
    new-instance v10, Ls1/k;

    const-string v11, "checkout"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v8

    .line 24
    new-instance v9, Ls1/k;

    const-string v10, "completebooking"

    invoke-direct {v9, v10, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v0

    const/4 v9, 0x6

    .line 25
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 26
    new-instance v11, Ls1/k;

    const-string v12, "proceedwithbooking"

    invoke-direct {v11, v12, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v2, v9

    const/4 v10, 0x7

    .line 27
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 28
    new-instance v12, Ls1/k;

    const-string v13, "continuewith"

    invoke-direct {v12, v13, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0x8

    .line 29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 30
    new-instance v12, Ls1/k;

    const-string v14, "getdetails"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0x9

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 32
    new-instance v12, Ls1/k;

    const-string v14, "viewmore"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0xa

    .line 33
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 34
    new-instance v12, Ls1/k;

    const-string v14, "continuereading"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0xb

    .line 35
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 36
    new-instance v12, Ls1/k;

    const-string v14, "proceed"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0xc

    .line 37
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 38
    new-instance v12, Ls1/k;

    const-string v14, "newupdates"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0xd

    .line 39
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 40
    new-instance v12, Ls1/k;

    const-string v14, "getupdates"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0xe

    .line 41
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 42
    new-instance v12, Ls1/k;

    const-string v14, "subscribe"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    const/16 v10, 0xf

    .line 43
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 44
    new-instance v12, Ls1/k;

    const-string v14, "subscribeforupdates"

    invoke-direct {v12, v14, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v2, v10

    .line 45
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Le/a/v4/u0/c;->c:Ljava/util/Map;

    new-array v2, v9, [Ls1/k;

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 47
    new-instance v10, Ls1/k;

    const-string v11, "verifymobile"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v6

    .line 48
    new-instance v9, Ls1/k;

    const-string v10, "login"

    invoke-direct {v9, v10, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v3

    .line 49
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 50
    new-instance v10, Ls1/k;

    const-string v11, "signup"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v5

    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 52
    new-instance v10, Ls1/k;

    const-string v11, "loginsignup"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v7

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 54
    new-instance v10, Ls1/k;

    const-string v11, "register"

    invoke-direct {v10, v11, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v2, v8

    .line 55
    new-instance v8, Ls1/k;

    const-string v9, "signin"

    invoke-direct {v8, v9, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v2, v0

    .line 56
    invoke-static {v2}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/v4/u0/c;->d:Ljava/util/Map;

    new-array v0, v7, [Ls1/k;

    .line 57
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 58
    new-instance v2, Ls1/k;

    const-string v7, "use"

    invoke-direct {v2, v7, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v6

    .line 59
    new-instance v1, Ls1/k;

    invoke-direct {v1, v13, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 60
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 61
    new-instance v2, Ls1/k;

    const-string v4, "proceedwith"

    invoke-direct {v2, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v5

    .line 62
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/v4/u0/c;->e:Ljava/util/Map;

    new-array v0, v5, [Ls1/k;

    const/16 v1, 0x400

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 64
    new-instance v2, Ls1/k;

    const-string v4, "round"

    invoke-direct {v2, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v6

    const/16 v1, 0x800

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 66
    new-instance v2, Ls1/k;

    const-string v4, "rect"

    invoke-direct {v2, v4, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    .line 67
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/v4/u0/c;->f:Ljava/util/Map;

    return-void
.end method
