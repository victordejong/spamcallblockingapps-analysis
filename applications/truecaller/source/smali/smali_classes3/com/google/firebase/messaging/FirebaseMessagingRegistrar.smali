.class public Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/s;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getComponents$0(Le/m/d/m/p;)Lcom/google/firebase/messaging/FirebaseMessaging;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/firebase/messaging/FirebaseMessaging;

    const-class v0, Le/m/d/g;

    .line 2
    invoke-interface {p0, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/m/d/g;

    const-class v0, Le/m/d/u/a/a;

    .line 3
    invoke-interface {p0, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/m/d/u/a/a;

    const-class v0, Le/m/d/a0/h;

    .line 4
    invoke-interface {p0, v0}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object v3

    const-class v0, Le/m/d/t/f;

    .line 5
    invoke-interface {p0, v0}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object v4

    const-class v0, Le/m/d/w/i;

    .line 6
    invoke-interface {p0, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/m/d/w/i;

    const-class v0, Le/m/a/b/g;

    .line 7
    invoke-interface {p0, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/m/a/b/g;

    const-class v0, Le/m/d/s/d;

    .line 8
    invoke-interface {p0, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Le/m/d/s/d;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/messaging/FirebaseMessaging;-><init>(Le/m/d/g;Le/m/d/u/a/a;Le/m/d/v/b;Le/m/d/v/b;Le/m/d/w/i;Le/m/a/b/g;Le/m/d/s/d;)V

    return-object v8
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
    const-class v1, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-static {v1}, Le/m/d/m/o;->a(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v1

    const-class v2, Le/m/d/g;

    .line 2
    new-instance v3, Le/m/d/m/x;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/u/a/a;

    .line 4
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v5, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 5
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/a0/h;

    .line 6
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v5, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 7
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/t/f;

    .line 8
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v5, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 9
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/a/b/g;

    .line 10
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v5, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 11
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/w/i;

    .line 12
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 13
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    const-class v2, Le/m/d/s/d;

    .line 14
    new-instance v3, Le/m/d/m/x;

    invoke-direct {v3, v2, v4, v5}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 15
    invoke-virtual {v1, v3}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    sget-object v2, Le/m/d/y/z;->a:Le/m/d/y/z;

    .line 16
    invoke-virtual {v1, v2}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 17
    invoke-virtual {v1, v4}, Le/m/d/m/o$b;->d(I)Le/m/d/m/o$b;

    .line 18
    invoke-virtual {v1}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "fire-fcm"

    const-string v2, "23.0.0"

    .line 19
    invoke-static {v1, v2}, Le/m/d/y/n;->w(Ljava/lang/String;Ljava/lang/String;)Le/m/d/m/o;

    move-result-object v1

    aput-object v1, v0, v4

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
