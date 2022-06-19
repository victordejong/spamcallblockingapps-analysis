.class public final synthetic Le/m/h/b/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/j;

    invoke-direct {v0}, Le/m/h/b/b/j;-><init>()V

    sput-object v0, Le/m/h/b/b/j;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/m/h/b/b/e/l;

    const-class v1, Landroid/content/Context;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Le/m/h/a/d/n/c;

    invoke-interface {p1, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/a/d/n/c;

    invoke-direct {v0, v1, p1}, Le/m/h/b/b/e/l;-><init>(Landroid/content/Context;Le/m/h/a/d/n/c;)V

    .line 3
    iget-object p1, v0, Le/m/h/a/d/n/b;->d:Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/h/a/d/n/i;

    invoke-direct {v1, v0}, Le/m/h/a/d/n/i;-><init>(Le/m/h/a/d/n/b;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
