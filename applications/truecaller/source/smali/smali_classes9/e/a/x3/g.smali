.class public final Le/a/x3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/g;


# instance fields
.field public final a:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/k;

    .line 2
    new-instance v1, Ls1/k;

    const-string v2, "Context"

    invoke-direct {v1, v2, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p2, 0x0

    aput-object v1, v0, p2

    const/4 p2, 0x1

    .line 3
    new-instance v1, Ls1/k;

    const-string v2, "Link"

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, p2

    .line 4
    invoke-static {v0}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Le/a/x3/g;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/x3/g;->a:Ljava/util/Map;

    return-object v0
.end method

.method public b()Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "UpdateInitiated"

    return-object v0
.end method
