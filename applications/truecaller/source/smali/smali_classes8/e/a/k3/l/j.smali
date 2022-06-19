.class public final Le/a/k3/l/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Le/m/e/k;

.field public static final b:Le/a/k3/l/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/a/k3/l/j;

    invoke-direct {v0}, Le/a/k3/l/j;-><init>()V

    sput-object v0, Le/a/k3/l/j;->b:Le/a/k3/l/j;

    .line 2
    new-instance v0, Le/m/e/k;

    invoke-direct {v0}, Le/m/e/k;-><init>()V

    sput-object v0, Le/a/k3/l/j;->a:Le/m/e/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/dto/ContactDto$Contact$SearchWarning$Feature;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 2
    :cond_2
    sget-object v0, Le/a/k3/l/j;->a:Le/m/e/k;

    invoke-virtual {v0, p1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method
