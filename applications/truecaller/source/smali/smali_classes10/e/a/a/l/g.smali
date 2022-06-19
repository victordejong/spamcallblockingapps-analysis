.class public final Le/a/a/l/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/l/g$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/a/l/f;

.field public final c:Le/a/a/l/g;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c1/d;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/k/t;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g1/b;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/l/c;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/l/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/l/f;Le/a/j2;Le/a/a/l/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/a/l/g;->c:Le/a/a/l/g;

    .line 3
    iput-object p2, p0, Le/a/a/l/g;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/a/l/g;->b:Le/a/a/l/f;

    .line 5
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    iput-object p1, p0, Le/a/a/l/g;->d:Ljavax/inject/Provider;

    .line 6
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    iput-object p1, p0, Le/a/a/l/g;->e:Ljavax/inject/Provider;

    .line 7
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    iput-object p1, p0, Le/a/a/l/g;->f:Ljavax/inject/Provider;

    .line 8
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    iput-object p1, p0, Le/a/a/l/g;->g:Ljavax/inject/Provider;

    .line 9
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    iput-object p1, p0, Le/a/a/l/g;->h:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    iput-object p1, p0, Le/a/a/l/g;->i:Ljavax/inject/Provider;

    .line 11
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    .line 12
    sget-object p2, Lo3/c/b;->c:Ljava/lang/Object;

    .line 13
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 15
    :goto_0
    iput-object p1, p0, Le/a/a/l/g;->j:Ljavax/inject/Provider;

    .line 16
    new-instance p1, Le/a/a/l/g$b;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    .line 17
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 19
    :goto_1
    iput-object p1, p0, Le/a/a/l/g;->k:Ljavax/inject/Provider;

    .line 20
    new-instance p1, Le/a/a/l/g$b;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    .line 21
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 23
    :goto_2
    iput-object p1, p0, Le/a/a/l/g;->l:Ljavax/inject/Provider;

    .line 24
    new-instance p1, Le/a/a/l/g$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/a/l/g$b;-><init>(Le/a/a/l/g;I)V

    iput-object p1, p0, Le/a/a/l/g;->m:Ljavax/inject/Provider;

    .line 25
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/a/l/g;->n:Ljavax/inject/Provider;

    return-void
.end method
