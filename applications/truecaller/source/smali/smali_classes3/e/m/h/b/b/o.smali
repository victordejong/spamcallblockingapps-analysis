.class public final synthetic Le/m/h/b/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/o;

    invoke-direct {v0}, Le/m/h/b/b/o;-><init>()V

    sput-object v0, Le/m/h/b/b/o;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v7, Le/m/h/b/b/e/e$a;

    const-class v0, Le/m/h/a/d/g;

    .line 2
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/m/h/a/d/g;

    const-class v0, Landroid/content/Context;

    .line 3
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    const-class v0, Le/m/h/b/b/e/n$a;

    .line 4
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/m/h/b/b/e/n$a;

    const-class v0, Le/m/h/b/b/e/v;

    .line 5
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/m/h/b/b/e/v;

    const-class v0, Le/m/h/a/d/n/c;

    .line 6
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/m/h/a/d/n/c;

    const-class v0, Le/m/h/a/d/l;

    .line 7
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Le/m/h/a/d/l;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/m/h/b/b/e/e$a;-><init>(Le/m/h/a/d/g;Landroid/content/Context;Le/m/h/b/b/e/n$a;Le/m/h/b/b/e/v;Le/m/h/a/d/n/c;Le/m/h/a/d/l;)V

    return-object v7
.end method
