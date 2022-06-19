.class public final synthetic Le/m/h/b/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/l;

    invoke-direct {v0}, Le/m/h/b/b/l;-><init>()V

    sput-object v0, Le/m/h/b/b/l;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;

    const-class v0, Le/m/h/b/b/e/q$a;

    .line 2
    invoke-interface {p1, v0}, Le/m/d/m/p;->d(Ljava/lang/Class;)Le/m/d/v/b;

    move-result-object v1

    const-class v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;

    .line 3
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;

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

    const-class v0, Le/m/h/a/d/d;

    .line 6
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/m/h/a/d/d;

    const-class v0, Le/m/h/b/b/e/l;

    .line 7
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/m/h/b/b/e/l;

    const-class v0, Le/m/h/a/d/b$a;

    .line 8
    invoke-interface {p1, v0}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Le/m/h/a/d/b$a;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;-><init>(Le/m/d/v/b;Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;Le/m/h/b/b/e/n$a;Le/m/h/b/b/e/v;Le/m/h/a/d/d;Le/m/h/b/b/e/l;Le/m/h/a/d/b$a;)V

    return-object v8
.end method
