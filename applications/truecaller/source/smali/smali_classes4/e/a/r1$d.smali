.class public final Le/a/r1$d;
.super Le/a/d2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r1$d$a;
    }
.end annotation


# instance fields
.field public final d:Le/a/r1;

.field public final e:Le/a/r1$d;

.field public f:Ljavax/inject/Provider;

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/i/h;",
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
            "Lcom/truecaller/insights/ui/domain/DelayedAnalyticLoggerImpl;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/c/a/i/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/h1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/d2;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/r1$d;->e:Le/a/r1$d;

    .line 3
    iput-object p1, p0, Le/a/r1$d;->d:Le/a/r1;

    .line 4
    new-instance p2, Le/a/r1$d$a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Le/a/r1$d$a;-><init>(Le/a/r1;Le/a/r1$d;I)V

    .line 5
    sget-object v0, Lo3/c/b;->c:Ljava/lang/Object;

    .line 6
    instance-of v0, p2, Lo3/c/b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lo3/c/b;

    invoke-direct {v0, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, v0

    .line 8
    :goto_0
    iput-object p2, p0, Le/a/r1$d;->f:Ljavax/inject/Provider;

    .line 9
    new-instance p2, Le/a/r1$d$a;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Le/a/r1$d$a;-><init>(Le/a/r1;Le/a/r1$d;I)V

    iput-object p2, p0, Le/a/r1$d;->g:Ljavax/inject/Provider;

    .line 10
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/r1$d;->h:Ljavax/inject/Provider;

    .line 11
    iget-object p2, p0, Le/a/r1$d;->g:Ljavax/inject/Provider;

    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p2

    iput-object p2, p0, Le/a/r1$d;->i:Ljavax/inject/Provider;

    .line 12
    new-instance p2, Le/a/r1$d$a;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, v0}, Le/a/r1$d$a;-><init>(Le/a/r1;Le/a/r1$d;I)V

    iput-object p2, p0, Le/a/r1$d;->j:Ljavax/inject/Provider;

    .line 13
    invoke-static {p2}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/r1$d;->k:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a()Lo3/b/a/c/a/a;
    .locals 4

    .line 1
    new-instance v0, Le/a/r1$a;

    iget-object v1, p0, Le/a/r1$d;->d:Le/a/r1;

    iget-object v2, p0, Le/a/r1$d;->e:Le/a/r1$d;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Le/a/r1$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/h1;)V

    return-object v0
.end method

.method public b()Lo3/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r1$d;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/b/a/a;

    return-object v0
.end method
