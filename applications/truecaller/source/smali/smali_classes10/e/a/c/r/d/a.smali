.class public final Le/a/c/r/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/c/r/h/h;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Le/a/c/r/d/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Ls1/k;

    .line 1
    sget-object v1, Le/a/c/r/h/h$a;->a:Le/a/c/r/h/h$a;

    .line 2
    new-instance v2, Ls1/k;

    const-string v3, "rerun_catg_bank"

    invoke-direct {v2, v1, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 3
    sget-object v2, Le/a/c/r/h/h$b;->a:Le/a/c/r/h/h$b;

    .line 4
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_bill"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 5
    sget-object v2, Le/a/c/r/h/h$d;->a:Le/a/c/r/h/h$d;

    .line 6
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_event"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 7
    sget-object v2, Le/a/c/r/h/h$g;->a:Le/a/c/r/h/h$g;

    .line 8
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_OTP"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 9
    sget-object v2, Le/a/c/r/h/h$e;->a:Le/a/c/r/h/h$e;

    .line 10
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_notif"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 11
    sget-object v2, Le/a/c/r/h/h$i;->a:Le/a/c/r/h/h$i;

    .line 12
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_travel"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 13
    sget-object v2, Le/a/c/r/h/h$f;->a:Le/a/c/r/h/h$f;

    .line 14
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_offers"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 15
    sget-object v2, Le/a/c/r/h/h$c;->a:Le/a/c/r/h/h$c;

    .line 16
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_delivery"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/16 v1, 0x8

    .line 17
    sget-object v2, Le/a/c/r/h/h$h;->a:Le/a/c/r/h/h$h;

    .line 18
    new-instance v3, Ls1/k;

    const-string v4, "rerun_catg_skip"

    invoke-direct {v3, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    .line 19
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le/a/c/r/d/a;->a:Ljava/util/Map;

    return-void
.end method
