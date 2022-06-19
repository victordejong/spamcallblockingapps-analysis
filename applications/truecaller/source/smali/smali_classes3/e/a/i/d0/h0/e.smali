.class public final Le/a/i/d0/h0/e;
.super Le/a/i/d0/h0/b;
.source "SourceFile"


# instance fields
.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/device/ads/DTBAdSize;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/i/d0/h0/b;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/a/i/d0/h0/e;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Le/a/i/d0/d;)Le/a/i/c/a/e;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/d0/h0/d;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/h0/d;-><init>(Le/a/i/d0/h0/e;Le/a/i/d0/z;)V

    return-object v0
.end method
