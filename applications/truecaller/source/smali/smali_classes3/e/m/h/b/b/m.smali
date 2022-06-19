.class public final synthetic Le/m/h/b/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/m;

    invoke-direct {v0}, Le/m/h/b/b/m;-><init>()V

    sput-object v0, Le/m/h/b/b/m;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Le/m/h/b/b/e/v;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    .line 2
    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/mlkit_translate/zzhx;

    const-class v2, Le/m/h/b/b/e/v$b;

    .line 3
    invoke-interface {p1, v2}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/h/b/b/e/v$b;

    const-class v3, Le/m/h/b/b/e/n$a;

    .line 4
    invoke-interface {p1, v3}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/h/b/b/e/n$a;

    const-class v4, Le/m/h/a/d/n/c;

    .line 5
    invoke-interface {p1, v4}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/h/a/d/n/c;

    invoke-direct {v0, v1, v2, v3, p1}, Le/m/h/b/b/e/v;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzhx;Le/m/h/b/b/e/v$b;Le/m/h/b/b/e/n$a;Le/m/h/a/d/n/c;)V

    return-object v0
.end method
