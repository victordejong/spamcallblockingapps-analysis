.class public final synthetic Le/m/h/b/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/i;

    invoke-direct {v0}, Le/m/h/b/b/i;-><init>()V

    sput-object v0, Le/m/h/b/b/i;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;

    const-class v1, Le/m/h/b/b/e/v;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/h/b/b/e/v;

    const-class v2, Le/m/h/a/d/n/c;

    .line 3
    invoke-interface {p1, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/h/a/d/n/c;

    const-class v3, Le/m/h/b/b/e/n$a;

    .line 4
    invoke-interface {p1, v3}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/b/b/e/n$a;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;-><init>(Le/m/h/b/b/e/v;Le/m/h/a/d/n/c;Le/m/h/b/b/e/n$a;)V

    return-object v0
.end method
