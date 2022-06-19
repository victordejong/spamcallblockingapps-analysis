.class public Lcom/google/mlkit/nl/translate/TranslatorImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/translate/TranslatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "Le/m/h/b/b/e/q$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;

.field public final c:Le/m/h/b/b/e/n$a;

.field public final d:Le/m/h/b/b/e/v;

.field public final e:Le/m/h/a/d/d;

.field public final f:Le/m/h/b/b/e/l;

.field public final g:Le/m/h/a/d/b$a;


# direct methods
.method public constructor <init>(Le/m/d/v/b;Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;Le/m/h/b/b/e/n$a;Le/m/h/b/b/e/v;Le/m/h/a/d/d;Le/m/h/b/b/e/l;Le/m/h/a/d/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/b<",
            "Le/m/h/b/b/e/q$a;",
            ">;",
            "Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;",
            "Le/m/h/b/b/e/n$a;",
            "Le/m/h/b/b/e/v;",
            "Le/m/h/a/d/d;",
            "Le/m/h/b/b/e/l;",
            "Le/m/h/a/d/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p5, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->e:Le/m/h/a/d/d;

    .line 3
    iput-object p6, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->f:Le/m/h/b/b/e/l;

    .line 4
    iput-object p1, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->a:Le/m/d/v/b;

    .line 5
    iput-object p3, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->c:Le/m/h/b/b/e/n$a;

    .line 6
    iput-object p2, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->b:Lcom/google/mlkit/nl/translate/internal/TranslateJni$a;

    .line 7
    iput-object p4, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->d:Le/m/h/b/b/e/v;

    .line 8
    iput-object p7, p0, Lcom/google/mlkit/nl/translate/TranslatorImpl$a;->g:Le/m/h/a/d/b$a;

    return-void
.end method
