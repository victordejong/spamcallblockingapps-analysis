.class public Lcom/google/firebase/perf/FirebasePerfRegistrar;
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

.method public static synthetic a(Le/m/d/m/p;)Le/m/d/z/c;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->providesFirebasePerformance(Le/m/d/m/p;)Le/m/d/z/c;

    move-result-object p0

    return-object p0
.end method

.method private static providesFirebasePerformance(Le/m/d/m/p;)Le/m/d/z/c;
    .locals 9

    .line 1
    new-instance v0, Le/m/d/z/h/a/a;

    const-class v1, Le/m/d/g;

    .line 2
    invoke-interface {p0, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/g;

    const-class v2, Le/m/d/w/i;

    .line 3
    invoke-interface {p0, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/w/i;

    const-class v3, Le/m/d/b0/q;

    .line 4
    invoke-interface {p0, v3}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object v3

    const-class v4, Le/m/a/b/g;

    .line 5
    invoke-interface {p0, v4}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Le/m/d/z/h/a/a;-><init>(Le/m/d/g;Le/m/d/w/i;Le/m/d/v/b;Le/m/d/v/b;)V

    .line 6
    const-class p0, Le/m/d/z/h/a/a;

    invoke-static {v0, p0}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    new-instance v2, Le/m/d/z/h/a/c;

    invoke-direct {v2, v0}, Le/m/d/z/h/a/c;-><init>(Le/m/d/z/h/a/a;)V

    .line 8
    new-instance v3, Le/m/d/z/h/a/e;

    invoke-direct {v3, v0}, Le/m/d/z/h/a/e;-><init>(Le/m/d/z/h/a/a;)V

    .line 9
    new-instance v4, Le/m/d/z/h/a/d;

    invoke-direct {v4, v0}, Le/m/d/z/h/a/d;-><init>(Le/m/d/z/h/a/a;)V

    .line 10
    new-instance v5, Le/m/d/z/h/a/h;

    invoke-direct {v5, v0}, Le/m/d/z/h/a/h;-><init>(Le/m/d/z/h/a/a;)V

    .line 11
    new-instance v6, Le/m/d/z/h/a/f;

    invoke-direct {v6, v0}, Le/m/d/z/h/a/f;-><init>(Le/m/d/z/h/a/a;)V

    .line 12
    new-instance v7, Le/m/d/z/h/a/b;

    invoke-direct {v7, v0}, Le/m/d/z/h/a/b;-><init>(Le/m/d/z/h/a/a;)V

    .line 13
    new-instance v8, Le/m/d/z/h/a/g;

    invoke-direct {v8, v0}, Le/m/d/z/h/a/g;-><init>(Le/m/d/z/h/a/a;)V

    .line 14
    new-instance p0, Le/m/d/z/e;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Le/m/d/z/e;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 15
    sget-object v0, Lo3/c/b;->c:Ljava/lang/Object;

    .line 16
    instance-of v0, p0, Lo3/c/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p0}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p0, v0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/d/z/c;

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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
    const-class v1, Le/m/d/z/c;

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

    const-class v2, Le/m/d/b0/q;

    .line 5
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 6
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/w/i;

    .line 7
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/a/b/g;

    .line 9
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 10
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v2, Le/m/d/z/a;->a:Le/m/d/z/a;

    .line 11
    invoke-virtual {v1, v2}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 12
    invoke-virtual {v1}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-perf"

    const-string v2, "20.0.5"

    .line 13
    invoke-static {v1, v2}, Le/m/d/y/n;->w(Ljava/lang/String;Ljava/lang/String;)Le/m/d/m/o;

    move-result-object v1

    aput-object v1, v0, v4

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
