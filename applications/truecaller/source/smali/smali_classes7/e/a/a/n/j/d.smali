.class public final Le/a/a/n/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/n/j/d$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/n/j/l;

.field public final c:Le/a/a/n/j/d;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/s8/j;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/j/v;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/j/s;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/j/i;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/j/e;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/j/a;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/n/j/g;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/n/j/l;Le/a/j2;Le/a/a/n/j/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/n/j/d;->c:Le/a/a/n/j/d;

    .line 3
    iput-object p2, p0, Le/a/a/n/j/d;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/n/j/d;->b:Le/a/a/n/j/l;

    .line 5
    new-instance p1, Le/a/a/n/j/d$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/n/j/d$b;-><init>(Le/a/a/n/j/d;I)V

    .line 6
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 7
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 9
    :goto_0
    iput-object p1, p0, Le/a/a/n/j/d;->d:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/a/n/j/d$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/n/j/d$b;-><init>(Le/a/a/n/j/d;I)V

    iput-object p1, p0, Le/a/a/n/j/d;->e:Ljavax/inject/Provider;

    .line 11
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/n/j/d;->f:Ljavax/inject/Provider;

    .line 12
    new-instance p1, Le/a/a/n/j/d$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/n/j/d$b;-><init>(Le/a/a/n/j/d;I)V

    iput-object p1, p0, Le/a/a/n/j/d;->g:Ljavax/inject/Provider;

    .line 13
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/n/j/d;->h:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Le/a/a/n/j/d$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/n/j/d$b;-><init>(Le/a/a/n/j/d;I)V

    iput-object p1, p0, Le/a/a/n/j/d;->i:Ljavax/inject/Provider;

    .line 15
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/n/j/d;->j:Ljavax/inject/Provider;

    .line 16
    new-instance p1, Le/a/a/n/j/d$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/a/n/j/d$b;-><init>(Le/a/a/n/j/d;I)V

    iput-object p1, p0, Le/a/a/n/j/d;->k:Ljavax/inject/Provider;

    .line 17
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/n/j/d;->l:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Le/a/a/n/j/d$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/a/n/j/d$b;-><init>(Le/a/a/n/j/d;I)V

    iput-object p1, p0, Le/a/a/n/j/d;->m:Ljavax/inject/Provider;

    .line 19
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/n/j/d;->n:Ljavax/inject/Provider;

    return-void
.end method
