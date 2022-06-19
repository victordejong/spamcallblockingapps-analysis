.class public final Le/a/e3/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Ls1/k;

    .line 1
    new-instance v1, Ls1/k;

    const-string v2, "am"

    const-string v3, "ambassador"

    invoke-direct {v1, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 2
    new-instance v2, Ls1/k;

    const-string v3, "ve"

    const-string v4, "verified"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 3
    new-instance v2, Ls1/k;

    const-string v3, "pr"

    const-string v4, "premium"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4
    new-instance v2, Ls1/k;

    const-string v3, "go"

    const-string v4, "gold"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 5
    new-instance v2, Ls1/k;

    const-string v3, "us"

    const-string v4, "user"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 6
    new-instance v2, Ls1/k;

    const-string v3, "pt"

    const-string v4, "priority"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 7
    new-instance v2, Ls1/k;

    const-string v3, "vb"

    const-string v4, "verified_business"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 8
    new-instance v2, Ls1/k;

    const-string v3, "cr"

    const-string v4, "cred"

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v1

    .line 9
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/e3/j/e;->a:Ljava/util/Map;

    return-void
.end method
