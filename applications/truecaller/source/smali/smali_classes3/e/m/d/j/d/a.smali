.class public final synthetic Le/m/d/j/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final synthetic a:Le/m/d/j/d/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/d/j/d/a;

    invoke-direct {v0}, Le/m/d/j/d/a;-><init>()V

    sput-object v0, Le/m/d/j/d/a;->a:Le/m/d/j/d/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/m/d/j/d/b;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Le/m/d/k/a/a;

    .line 3
    invoke-interface {p1, v2}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Le/m/d/j/d/b;-><init>(Landroid/content/Context;Le/m/d/v/b;)V

    return-object v0
.end method
