.class public final synthetic Le/m/d/w/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final synthetic a:Le/m/d/w/e;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/w/e;

    invoke-direct {v0}, Le/m/d/w/e;-><init>()V

    sput-object v0, Le/m/d/w/e;->a:Le/m/d/w/e;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/m/d/w/h;

    const-class v1, Le/m/d/g;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/g;

    const-class v2, Le/m/d/a0/h;

    .line 3
    invoke-interface {p1, v2}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object v2

    const-class v3, Le/m/d/t/f;

    .line 4
    invoke-interface {p1, v3}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Le/m/d/w/h;-><init>(Le/m/d/g;Le/m/d/v/b;Le/m/d/v/b;)V

    return-object v0
.end method
