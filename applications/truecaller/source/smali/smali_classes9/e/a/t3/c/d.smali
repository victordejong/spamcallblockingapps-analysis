.class public final Le/a/t3/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t3/c/d$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/t3/c/l;

.field public final b:Le/a/j2;

.field public final c:Le/a/t3/c/d;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/t3/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/t3/c/g;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u3/n;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/t3/c/x/a;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/p0/m/b;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/t3/c/x/b;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/t3/c/x/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/t3/c/l;Le/a/j2;Le/a/t3/c/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/t3/c/d;->c:Le/a/t3/c/d;

    .line 3
    iput-object p1, p0, Le/a/t3/c/d;->a:Le/a/t3/c/l;

    .line 4
    iput-object p2, p0, Le/a/t3/c/d;->b:Le/a/j2;

    .line 5
    new-instance p1, Lo3/c/a;

    invoke-direct {p1}, Lo3/c/a;-><init>()V

    iput-object p1, p0, Le/a/t3/c/d;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/t3/c/d$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

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
    iput-object p1, p0, Le/a/t3/c/d;->e:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/t3/c/d$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

    .line 12
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 14
    :goto_1
    iput-object p1, p0, Le/a/t3/c/d;->f:Ljavax/inject/Provider;

    .line 15
    new-instance p1, Le/a/t3/c/d$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

    iput-object p1, p0, Le/a/t3/c/d;->g:Ljavax/inject/Provider;

    .line 16
    new-instance p1, Le/a/t3/c/d$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

    .line 17
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 18
    :cond_2
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 19
    :goto_2
    iput-object p1, p0, Le/a/t3/c/d;->h:Ljavax/inject/Provider;

    .line 20
    new-instance p1, Le/a/t3/c/d$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

    .line 21
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_3

    goto :goto_3

    .line 22
    :cond_3
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 23
    :goto_3
    iput-object p1, p0, Le/a/t3/c/d;->i:Ljavax/inject/Provider;

    .line 24
    new-instance p1, Le/a/t3/c/d$b;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

    .line 25
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 26
    :cond_4
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 27
    :goto_4
    iput-object p1, p0, Le/a/t3/c/d;->j:Ljavax/inject/Provider;

    .line 28
    new-instance p1, Le/a/t3/c/d$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

    .line 29
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_5

    goto :goto_5

    .line 30
    :cond_5
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 31
    :goto_5
    iput-object p1, p0, Le/a/t3/c/d;->k:Ljavax/inject/Provider;

    .line 32
    iget-object p1, p0, Le/a/t3/c/d;->d:Ljavax/inject/Provider;

    new-instance p2, Le/a/t3/c/d$b;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Le/a/t3/c/d$b;-><init>(Le/a/t3/c/d;I)V

    .line 33
    instance-of p3, p2, Lo3/c/b;

    if-eqz p3, :cond_6

    goto :goto_6

    .line 34
    :cond_6
    new-instance p3, Lo3/c/b;

    invoke-direct {p3, p2}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p2, p3

    .line 35
    :goto_6
    invoke-static {p1, p2}, Lo3/c/a;->a(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-void
.end method
