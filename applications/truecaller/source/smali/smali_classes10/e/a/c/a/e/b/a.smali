.class public final Le/a/c/a/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/e/b/a$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/c/l/a/a;

.field public final b:Le/a/b0/c;

.field public final c:Le/a/b0/m/b/a;

.field public final d:Le/a/c/h/k/a;

.field public final e:Le/a/c/a/e/b/a;

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/i/h;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/e/c/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln3/v/y0;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln3/v/a1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/l/a/a;Le/a/b0/c;Le/a/b0/m/b/a;Le/a/c/h/k/a;Le/a/c/a/e/b/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/c/a/e/b/a;->e:Le/a/c/a/e/b/a;

    .line 3
    iput-object p1, p0, Le/a/c/a/e/b/a;->a:Le/a/c/l/a/a;

    .line 4
    iput-object p2, p0, Le/a/c/a/e/b/a;->b:Le/a/b0/c;

    .line 5
    iput-object p3, p0, Le/a/c/a/e/b/a;->c:Le/a/b0/m/b/a;

    .line 6
    iput-object p4, p0, Le/a/c/a/e/b/a;->d:Le/a/c/h/k/a;

    .line 7
    new-instance p1, Le/a/c/a/e/b/a$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/c/a/e/b/a$b;-><init>(Le/a/c/a/e/b/a;I)V

    iput-object p1, p0, Le/a/c/a/e/b/a;->f:Ljavax/inject/Provider;

    .line 8
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/e/b/a;->g:Ljavax/inject/Provider;

    .line 9
    new-instance p1, Le/a/c/a/e/b/a$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/c/a/e/b/a$b;-><init>(Le/a/c/a/e/b/a;I)V

    iput-object p1, p0, Le/a/c/a/e/b/a;->h:Ljavax/inject/Provider;

    .line 10
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/e/b/a;->i:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/c/a/e/b/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/c/a/e/b/a$b;-><init>(Le/a/c/a/e/b/a;I)V

    iput-object p1, p0, Le/a/c/a/e/b/a;->j:Ljavax/inject/Provider;

    .line 12
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/e/b/a;->k:Ljavax/inject/Provider;

    return-void
.end method
