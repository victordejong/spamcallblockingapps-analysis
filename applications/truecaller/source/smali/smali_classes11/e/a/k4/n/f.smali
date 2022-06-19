.class public abstract Le/a/k4/n/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k4/n/f$c;,
        Le/a/k4/n/f$a;,
        Le/a/k4/n/f$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Le/a/k4/n/f$c;->a:Le/a/k4/n/f$c;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViewVisited"

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Le/a/k4/n/f$a;

    if-eqz v0, :cond_1

    const-string v0, "SelectedContent"

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Le/a/k4/n/f$b;

    if-eqz v0, :cond_2

    const-string v0, "ViewDismissed"

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public final b()Ljava/util/Map;
    .locals 8
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
    sget-object v0, Le/a/k4/n/f$c;->a:Le/a/k4/n/f$c;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Placepicker"

    const-string v2, "ViewId"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ls1/k;

    invoke-direct {v0, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Le/a/k4/n/f$a;

    const/4 v3, 0x1

    const-string v4, "ResolvedPlacesCount"

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    new-array v0, v6, [Ls1/k;

    .line 5
    move-object v6, p0

    check-cast v6, Le/a/k4/n/f$a;

    .line 6
    iget v6, v6, Le/a/k4/n/f$a;->a:I

    .line 7
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 8
    new-instance v7, Ls1/k;

    invoke-direct {v7, v4, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    .line 9
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 10
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    instance-of v0, p0, Le/a/k4/n/f$b;

    if-eqz v0, :cond_2

    new-array v0, v6, [Ls1/k;

    .line 12
    move-object v6, p0

    check-cast v6, Le/a/k4/n/f$b;

    .line 13
    iget v6, v6, Le/a/k4/n/f$b;->a:I

    .line 14
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    new-instance v7, Ls1/k;

    invoke-direct {v7, v4, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v0, v5

    .line 16
    new-instance v4, Ls1/k;

    invoke-direct {v4, v2, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    .line 17
    invoke-static {v0}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
