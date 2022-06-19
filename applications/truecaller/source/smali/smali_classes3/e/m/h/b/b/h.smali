.class public final synthetic Le/m/h/b/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/h;

    invoke-direct {v0}, Le/m/h/b/b/h;-><init>()V

    sput-object v0, Le/m/h/b/b/h;->a:Le/m/d/m/r;

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
    new-instance v0, Le/m/h/a/c/c$a;

    const-class v1, Le/m/h/b/b/b;

    const-class v2, Le/m/h/b/b/e/x;

    .line 2
    invoke-interface {p1, v2}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Le/m/h/a/c/c$a;-><init>(Ljava/lang/Class;Le/m/d/v/b;)V

    return-object v0
.end method
