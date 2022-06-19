.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/m/d/m/o<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Le/m/d/m/o;

    .line 1
    const-class v1, Le/m/d/w/i;

    .line 2
    invoke-static {v1}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v1

    const-class v2, Le/m/d/g;

    .line 3
    new-instance v3, Le/m/d/m/x;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/t/f;

    .line 5
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v5, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/a0/h;

    .line 7
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v5, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v2, Le/m/d/w/e;->a:Le/m/d/w/e;

    .line 9
    invoke-virtual {v1, v2}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 10
    invoke-virtual {v1}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-installations"

    const-string v2, "17.0.0"

    .line 11
    invoke-static {v1, v2}, Le/m/d/y/n;->w(Ljava/lang/String;Ljava/lang/String;)Le/m/d/m/o;

    move-result-object v1

    aput-object v1, v0, v4

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
