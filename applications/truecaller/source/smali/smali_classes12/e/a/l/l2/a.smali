.class public abstract Le/a/l/l2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Le/a/q2/x$e;

    const/4 v1, 0x2

    new-array v1, v1, [Le/a/q2/x;

    .line 2
    invoke-virtual {p0}, Le/a/l/l2/a;->d()Le/a/q2/x$d;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    invoke-virtual {p0}, Le/a/l/l2/a;->c()Le/a/q2/x$b;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 4
    invoke-static {v1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Le/a/q2/x$e;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public b()Ls1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Le/a/q2/x$b;
.end method

.method public abstract d()Le/a/q2/x$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/q2/x$d<",
            "+",
            "Lorg/apache/avro/generic/GenericRecord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e()Lcom/truecaller/premium/analytics/LogLevel;
.end method
