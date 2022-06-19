.class public final synthetic Le/m/h/b/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/g;

    invoke-direct {v0}, Le/m/h/b/b/g;-><init>()V

    sput-object v0, Le/m/h/b/b/g;->a:Le/m/d/m/r;

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
    new-instance v0, Le/m/h/b/b/e/q$a;

    const-class v1, Le/m/h/b/b/e/q$b;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/h/b/b/e/q$b;

    const-class v2, Le/m/h/b/b/e/e$a;

    .line 3
    invoke-interface {p1, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/b/b/e/e$a;

    invoke-direct {v0, v1, p1}, Le/m/h/b/b/e/q$a;-><init>(Le/m/h/b/b/e/q$b;Le/m/h/b/b/e/e$a;)V

    return-object v0
.end method
