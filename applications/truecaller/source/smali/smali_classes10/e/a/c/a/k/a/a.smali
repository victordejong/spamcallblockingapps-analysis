.class public final Le/a/c/a/k/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/k/a/a$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/c/a/k/a/b;

.field public final b:Le/a/c/h/k/a;

.field public final c:Le/a/b0/c;

.field public final d:Le/a/c/l/a/a;

.field public final e:Le/a/c/a/k/a/a;

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/k/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/k/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/i/h;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln3/v/y0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln3/v/a1$b;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/c/h/j;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/k/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/k/a/b;Le/a/c/l/a/a;Le/a/c/h/k/a;Le/a/b0/c;Le/a/c/a/k/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/c/a/k/a/a;->e:Le/a/c/a/k/a/a;

    .line 3
    iput-object p1, p0, Le/a/c/a/k/a/a;->a:Le/a/c/a/k/a/b;

    .line 4
    iput-object p3, p0, Le/a/c/a/k/a/a;->b:Le/a/c/h/k/a;

    .line 5
    iput-object p4, p0, Le/a/c/a/k/a/a;->c:Le/a/b0/c;

    .line 6
    iput-object p2, p0, Le/a/c/a/k/a/a;->d:Le/a/c/l/a/a;

    .line 7
    new-instance p1, Le/a/c/a/k/a/a$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/c/a/k/a/a$b;-><init>(Le/a/c/a/k/a/a;I)V

    .line 8
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 9
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 11
    :goto_0
    iput-object p1, p0, Le/a/c/a/k/a/a;->f:Ljavax/inject/Provider;

    .line 12
    new-instance p1, Le/a/c/a/k/a/a$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/c/a/k/a/a$b;-><init>(Le/a/c/a/k/a/a;I)V

    .line 13
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 15
    :goto_1
    iput-object p1, p0, Le/a/c/a/k/a/a;->g:Ljavax/inject/Provider;

    .line 16
    new-instance p1, Le/a/c/a/k/a/a$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/c/a/k/a/a$b;-><init>(Le/a/c/a/k/a/a;I)V

    iput-object p1, p0, Le/a/c/a/k/a/a;->h:Ljavax/inject/Provider;

    .line 17
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/k/a/a;->i:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Le/a/c/a/k/a/a$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/c/a/k/a/a$b;-><init>(Le/a/c/a/k/a/a;I)V

    iput-object p1, p0, Le/a/c/a/k/a/a;->j:Ljavax/inject/Provider;

    .line 19
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/k/a/a;->k:Ljavax/inject/Provider;

    .line 20
    new-instance p1, Le/a/c/a/k/a/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/c/a/k/a/a$b;-><init>(Le/a/c/a/k/a/a;I)V

    iput-object p1, p0, Le/a/c/a/k/a/a;->l:Ljavax/inject/Provider;

    .line 21
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/k/a/a;->m:Ljavax/inject/Provider;

    .line 22
    new-instance p1, Le/a/c/a/k/a/a$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/c/a/k/a/a$b;-><init>(Le/a/c/a/k/a/a;I)V

    .line 23
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 24
    :cond_2
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 25
    :goto_2
    iput-object p1, p0, Le/a/c/a/k/a/a;->n:Ljavax/inject/Provider;

    .line 26
    new-instance p1, Le/a/c/a/k/a/a$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/c/a/k/a/a$b;-><init>(Le/a/c/a/k/a/a;I)V

    .line 27
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_3

    goto :goto_3

    .line 28
    :cond_3
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 29
    :goto_3
    iput-object p1, p0, Le/a/c/a/k/a/a;->o:Ljavax/inject/Provider;

    return-void
.end method
