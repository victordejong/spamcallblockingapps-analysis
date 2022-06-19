.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/s;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Le/m/d/m/o;

    .line 1
    const-class v2, Le/m/d/b0/q;

    .line 2
    invoke-static {v2}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    .line 3
    new-instance v4, Le/m/d/m/x;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v3, v5, v6}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v3, Le/m/d/g;

    .line 5
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v3, v5, v6}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v3, Le/m/d/w/i;

    .line 7
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v3, v5, v6}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v3, Le/m/d/j/d/b;

    .line 9
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v3, v5, v6}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v3, Le/m/d/k/a/a;

    .line 11
    new-instance v4, Le/m/d/m/x;

    invoke-direct {v4, v3, v6, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 12
    invoke-virtual {v2, v4}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v3, Le/m/d/b0/i;->a:Le/m/d/b0/i;

    .line 13
    invoke-virtual {v2, v3}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 14
    invoke-virtual {v2, v0}, Le/m/d/m/o$b;->d(I)Le/m/d/m/o$b;

    .line 15
    invoke-virtual {v2}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "fire-rc"

    const-string v2, "21.0.1"

    .line 16
    invoke-static {v0, v2}, Le/m/d/y/n;->w(Ljava/lang/String;Ljava/lang/String;)Le/m/d/m/o;

    move-result-object v0

    aput-object v0, v1, v5

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
