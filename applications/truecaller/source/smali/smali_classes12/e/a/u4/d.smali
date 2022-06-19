.class public final Le/a/u4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/u4/d$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/u4/d;

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u4/f;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u4/e;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/f4/g/p;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u4/i;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u4/h;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u4/s/c;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u4/s/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j2;Le/a/u4/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/u4/d;->b:Le/a/u4/d;

    .line 3
    iput-object p1, p0, Le/a/u4/d;->a:Le/a/j2;

    .line 4
    new-instance p1, Le/a/u4/d$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/u4/d$b;-><init>(Le/a/u4/d;I)V

    iput-object p1, p0, Le/a/u4/d;->c:Ljavax/inject/Provider;

    .line 5
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/u4/d;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/u4/d$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/u4/d$b;-><init>(Le/a/u4/d;I)V

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
    iput-object p1, p0, Le/a/u4/d;->e:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/u4/d$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/u4/d$b;-><init>(Le/a/u4/d;I)V

    iput-object p1, p0, Le/a/u4/d;->f:Ljavax/inject/Provider;

    .line 11
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/u4/d;->g:Ljavax/inject/Provider;

    .line 12
    new-instance p1, Le/a/u4/d$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/u4/d$b;-><init>(Le/a/u4/d;I)V

    iput-object p1, p0, Le/a/u4/d;->h:Ljavax/inject/Provider;

    .line 13
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/u4/d;->i:Ljavax/inject/Provider;

    return-void
.end method
