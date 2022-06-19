.class public final Le/a/q4/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q4/b0$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/q4/n0;

.field public final b:Le/a/j2;

.field public final c:Le/a/q4/b0;

.field public d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w/b/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q4/p0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/l/p2/v0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q4/u;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q4/h0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/j;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r2/f<",
            "Le/a/q4/h0;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r5/i0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/q4/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/q4/n0;Le/a/j2;Le/a/q4/b0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/q4/b0;->c:Le/a/q4/b0;

    .line 3
    iput-object p1, p0, Le/a/q4/b0;->a:Le/a/q4/n0;

    .line 4
    iput-object p2, p0, Le/a/q4/b0;->b:Le/a/j2;

    .line 5
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

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
    iput-object p1, p0, Le/a/q4/b0;->d:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

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
    iput-object p1, p0, Le/a/q4/b0;->e:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

    iput-object p1, p0, Le/a/q4/b0;->f:Ljavax/inject/Provider;

    .line 15
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

    .line 16
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 18
    :goto_2
    iput-object p1, p0, Le/a/q4/b0;->g:Ljavax/inject/Provider;

    .line 19
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

    .line 20
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 22
    :goto_3
    iput-object p1, p0, Le/a/q4/b0;->h:Ljavax/inject/Provider;

    .line 23
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

    .line 24
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 25
    :cond_4
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 26
    :goto_4
    iput-object p1, p0, Le/a/q4/b0;->i:Ljavax/inject/Provider;

    .line 27
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

    .line 28
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_5

    goto :goto_5

    .line 29
    :cond_5
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 30
    :goto_5
    iput-object p1, p0, Le/a/q4/b0;->j:Ljavax/inject/Provider;

    .line 31
    new-instance p1, Le/a/q4/b0$b;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

    iput-object p1, p0, Le/a/q4/b0;->k:Ljavax/inject/Provider;

    .line 32
    new-instance p1, Le/a/q4/b0$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/q4/b0$b;-><init>(Le/a/q4/b0;I)V

    .line 33
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_6

    goto :goto_6

    .line 34
    :cond_6
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 35
    :goto_6
    iput-object p1, p0, Le/a/q4/b0;->l:Ljavax/inject/Provider;

    return-void
.end method
