.class public Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;
.super Le/m/h/a/d/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/translate/internal/TranslateJni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/h/a/d/e<",
        "Le/m/h/b/b/d;",
        "Lcom/google/mlkit/nl/translate/internal/TranslateJni;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/m/h/b/b/e/v;

.field public final b:Le/m/h/a/d/n/c;

.field public final c:Le/m/h/b/b/e/n$a;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/v;Le/m/h/a/d/n/c;Le/m/h/b/b/e/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/h/a/d/e;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;->a:Le/m/h/b/b/e/v;

    .line 3
    iput-object p2, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;->b:Le/m/h/a/d/n/c;

    .line 4
    iput-object p3, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;->c:Le/m/h/b/b/e/n$a;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Le/m/h/b/b/d;

    .line 2
    iget-object v0, p1, Le/m/h/b/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Le/m/h/b/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3
    iget-object v0, p1, Le/m/h/b/b/d;->b:Ljava/lang/String;

    invoke-static {v0}, Le/m/h/b/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    new-instance v0, Lcom/google/mlkit/nl/translate/internal/TranslateJni;

    iget-object v2, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;->a:Le/m/h/b/b/e/v;

    iget-object v1, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;->c:Le/m/h/b/b/e/n$a;

    .line 5
    invoke-virtual {p1}, Le/m/h/b/b/d;->a()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/m/h/b/b/e/n$a;->a(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbi;)Le/m/h/b/b/e/n;

    move-result-object v3

    iget-object v4, p0, Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;->b:Le/m/h/a/d/n/c;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/nl/translate/internal/TranslateJni;-><init>(Le/m/h/b/b/e/v;Le/m/h/b/b/e/n;Le/m/h/a/d/n/c;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
