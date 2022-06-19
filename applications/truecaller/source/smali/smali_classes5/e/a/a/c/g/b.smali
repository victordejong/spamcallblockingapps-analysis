.class public final Le/a/a/c/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/g/b$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/a/c/g/d;

.field public final b:Le/a/j2;

.field public final c:Le/a/a/c/g/b;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/h0;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/a/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/g/g;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/c/g/d;Le/a/j2;Le/a/a/c/g/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/c/g/b;->c:Le/a/a/c/g/b;

    .line 3
    iput-object p1, p0, Le/a/a/c/g/b;->a:Le/a/a/c/g/d;

    .line 4
    iput-object p2, p0, Le/a/a/c/g/b;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/a/c/g/b$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/c/g/b$b;-><init>(Le/a/a/c/g/b;I)V

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
    iput-object p1, p0, Le/a/a/c/g/b;->d:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/a/c/g/b$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/c/g/b$b;-><init>(Le/a/a/c/g/b;I)V

    .line 11
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 13
    :goto_1
    iput-object p1, p0, Le/a/a/c/g/b;->e:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Le/a/a/c/g/b$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/c/g/b$b;-><init>(Le/a/a/c/g/b;I)V

    .line 15
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 17
    :goto_2
    iput-object p1, p0, Le/a/a/c/g/b;->f:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Le/a/a/c/g/b$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/a/c/g/b$b;-><init>(Le/a/a/c/g/b;I)V

    .line 19
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_3

    goto :goto_3

    .line 20
    :cond_3
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 21
    :goto_3
    iput-object p1, p0, Le/a/a/c/g/b;->g:Ljavax/inject/Provider;

    .line 22
    new-instance p1, Le/a/a/c/g/b$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/c/g/b$b;-><init>(Le/a/a/c/g/b;I)V

    iput-object p1, p0, Le/a/a/c/g/b;->h:Ljavax/inject/Provider;

    .line 23
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/g/b;->i:Ljavax/inject/Provider;

    return-void
.end method
