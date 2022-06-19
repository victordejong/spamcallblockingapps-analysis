.class public final Le/a/a/c/k8/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/k8/p$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/c/k8/o;

.field public final b:Le/a/j2;

.field public final c:Le/a/a/c/k8/p;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/k8/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/c;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/u;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/k8/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/c/k8/o;Le/a/j2;Le/a/a/c/k8/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/c/k8/p;->c:Le/a/a/c/k8/p;

    .line 3
    iput-object p1, p0, Le/a/a/c/k8/p;->a:Le/a/a/c/k8/o;

    .line 4
    iput-object p2, p0, Le/a/a/c/k8/p;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/a/c/k8/p$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/c/k8/p$b;-><init>(Le/a/a/c/k8/p;I)V

    iput-object p1, p0, Le/a/a/c/k8/p;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/c/k8/p$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/c/k8/p$b;-><init>(Le/a/a/c/k8/p;I)V

    .line 7
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 8
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 10
    :goto_0
    iput-object p1, p0, Le/a/a/c/k8/p;->e:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/a/c/k8/p$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/c/k8/p$b;-><init>(Le/a/a/c/k8/p;I)V

    iput-object p1, p0, Le/a/a/c/k8/p;->f:Ljavax/inject/Provider;

    .line 12
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/k8/p;->g:Ljavax/inject/Provider;

    .line 13
    new-instance p1, Le/a/a/c/k8/p$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/a/c/k8/p$b;-><init>(Le/a/a/c/k8/p;I)V

    iput-object p1, p0, Le/a/a/c/k8/p;->h:Ljavax/inject/Provider;

    .line 14
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/k8/p;->i:Ljavax/inject/Provider;

    .line 15
    new-instance p1, Le/a/a/c/k8/p$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/c/k8/p$b;-><init>(Le/a/a/c/k8/p;I)V

    .line 16
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 18
    :goto_1
    iput-object p1, p0, Le/a/a/c/k8/p;->j:Ljavax/inject/Provider;

    return-void
.end method
