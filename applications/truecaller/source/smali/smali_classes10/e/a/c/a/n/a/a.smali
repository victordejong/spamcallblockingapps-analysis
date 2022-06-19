.class public final Le/a/c/a/n/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/n/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/n/a/a$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/c/a/n/a/c;

.field public final b:Le/a/c/l/a/a;

.field public final c:Le/a/b0/c;

.field public final d:Le/a/c/h/k/a;

.field public final e:Le/a/b0/m/b/a;

.field public final f:Le/a/c/a/n/a/a;

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/c/f/g;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/n/b/e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/n/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/n/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/i/h;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/n/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln3/v/y0;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ln3/v/a1$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/n/a/c;Le/a/c/l/a/a;Le/a/c/h/k/a;Le/a/b0/c;Le/a/b0/m/b/a;Le/a/c/a/n/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/c/a/n/a/a;->f:Le/a/c/a/n/a/a;

    .line 3
    iput-object p1, p0, Le/a/c/a/n/a/a;->a:Le/a/c/a/n/a/c;

    .line 4
    iput-object p2, p0, Le/a/c/a/n/a/a;->b:Le/a/c/l/a/a;

    .line 5
    iput-object p4, p0, Le/a/c/a/n/a/a;->c:Le/a/b0/c;

    .line 6
    iput-object p3, p0, Le/a/c/a/n/a/a;->d:Le/a/c/h/k/a;

    .line 7
    iput-object p5, p0, Le/a/c/a/n/a/a;->e:Le/a/b0/m/b/a;

    .line 8
    new-instance p1, Le/a/c/a/n/a/a$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/c/a/n/a/a$b;-><init>(Le/a/c/a/n/a/a;I)V

    .line 9
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 10
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 12
    :goto_0
    iput-object p1, p0, Le/a/c/a/n/a/a;->g:Ljavax/inject/Provider;

    .line 13
    new-instance p1, Le/a/c/a/n/a/a$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/c/a/n/a/a$b;-><init>(Le/a/c/a/n/a/a;I)V

    .line 14
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 16
    :goto_1
    iput-object p1, p0, Le/a/c/a/n/a/a;->h:Ljavax/inject/Provider;

    .line 17
    new-instance p1, Le/a/c/a/n/a/a$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/c/a/n/a/a$b;-><init>(Le/a/c/a/n/a/a;I)V

    iput-object p1, p0, Le/a/c/a/n/a/a;->i:Ljavax/inject/Provider;

    .line 18
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/n/a/a;->j:Ljavax/inject/Provider;

    .line 19
    new-instance p1, Le/a/c/a/n/a/a$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/c/a/n/a/a$b;-><init>(Le/a/c/a/n/a/a;I)V

    iput-object p1, p0, Le/a/c/a/n/a/a;->k:Ljavax/inject/Provider;

    .line 20
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/n/a/a;->l:Ljavax/inject/Provider;

    .line 21
    new-instance p1, Le/a/c/a/n/a/a$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/c/a/n/a/a$b;-><init>(Le/a/c/a/n/a/a;I)V

    iput-object p1, p0, Le/a/c/a/n/a/a;->m:Ljavax/inject/Provider;

    .line 22
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/n/a/a;->n:Ljavax/inject/Provider;

    .line 23
    new-instance p1, Le/a/c/a/n/a/a$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/c/a/n/a/a$b;-><init>(Le/a/c/a/n/a/a;I)V

    iput-object p1, p0, Le/a/c/a/n/a/a;->o:Ljavax/inject/Provider;

    .line 24
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/n/a/a;->p:Ljavax/inject/Provider;

    return-void
.end method
