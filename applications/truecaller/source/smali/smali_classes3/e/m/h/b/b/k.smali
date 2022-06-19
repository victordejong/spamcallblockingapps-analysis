.class public final synthetic Le/m/h/b/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/m/r;


# static fields
.field public static final a:Le/m/d/m/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/h/b/b/k;

    invoke-direct {v0}, Le/m/h/b/b/k;-><init>()V

    sput-object v0, Le/m/h/b/b/k;->a:Le/m/d/m/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Le/m/d/m/p;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/m/h/b/b/e/n$a;

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    invoke-interface {p1, v1}, Le/m/d/m/p;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzgs;

    invoke-direct {v0, p1}, Le/m/h/b/b/e/n$a;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzgs;)V

    return-object v0
.end method
