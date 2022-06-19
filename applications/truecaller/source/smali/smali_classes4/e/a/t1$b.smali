.class public final Le/a/t1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/t1$b$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/h/f/p;

.field public final b:Le/a/t1;

.field public final c:Le/a/t1$k;

.field public final d:Le/a/t1$b;

.field public e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/f0/c;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/y;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/k;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/t;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/h;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/w;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/j;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/a0;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/m;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/z;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/l;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/v;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/i/d/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/t1;Le/a/t1$k;Le/a/h/f/p;Le/a/t1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/t1$b;->d:Le/a/t1$b;

    .line 3
    iput-object p1, p0, Le/a/t1$b;->b:Le/a/t1;

    .line 4
    iput-object p2, p0, Le/a/t1$b;->c:Le/a/t1$k;

    .line 5
    iput-object p3, p0, Le/a/t1$b;->a:Le/a/h/f/p;

    .line 6
    new-instance p3, Le/a/t1$b$a;

    const/4 p4, 0x2

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/t1$b$a;-><init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V

    .line 7
    sget-object p4, Lo3/c/b;->c:Ljava/lang/Object;

    .line 8
    instance-of p4, p3, Lo3/c/b;

    if-eqz p4, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p4, Lo3/c/b;

    invoke-direct {p4, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p4

    .line 10
    :goto_0
    iput-object p3, p0, Le/a/t1$b;->e:Ljavax/inject/Provider;

    .line 11
    new-instance p3, Le/a/t1$b$a;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/t1$b$a;-><init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V

    iput-object p3, p0, Le/a/t1$b;->f:Ljavax/inject/Provider;

    .line 12
    instance-of p4, p3, Lo3/c/b;

    if-eqz p4, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p4, Lo3/c/b;

    invoke-direct {p4, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p4

    .line 14
    :goto_1
    iput-object p3, p0, Le/a/t1$b;->g:Ljavax/inject/Provider;

    .line 15
    new-instance p3, Le/a/t1$b$a;

    const/4 p4, 0x3

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/t1$b$a;-><init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V

    iput-object p3, p0, Le/a/t1$b;->h:Ljavax/inject/Provider;

    .line 16
    instance-of p4, p3, Lo3/c/b;

    if-eqz p4, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    new-instance p4, Lo3/c/b;

    invoke-direct {p4, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p4

    .line 18
    :goto_2
    iput-object p3, p0, Le/a/t1$b;->i:Ljavax/inject/Provider;

    .line 19
    new-instance p3, Le/a/t1$b$a;

    const/4 p4, 0x4

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/t1$b$a;-><init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V

    iput-object p3, p0, Le/a/t1$b;->j:Ljavax/inject/Provider;

    .line 20
    instance-of p4, p3, Lo3/c/b;

    if-eqz p4, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    new-instance p4, Lo3/c/b;

    invoke-direct {p4, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p4

    .line 22
    :goto_3
    iput-object p3, p0, Le/a/t1$b;->k:Ljavax/inject/Provider;

    .line 23
    new-instance p3, Le/a/t1$b$a;

    const/4 p4, 0x5

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/t1$b$a;-><init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V

    iput-object p3, p0, Le/a/t1$b;->l:Ljavax/inject/Provider;

    .line 24
    instance-of p4, p3, Lo3/c/b;

    if-eqz p4, :cond_4

    goto :goto_4

    .line 25
    :cond_4
    new-instance p4, Lo3/c/b;

    invoke-direct {p4, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p4

    .line 26
    :goto_4
    iput-object p3, p0, Le/a/t1$b;->m:Ljavax/inject/Provider;

    .line 27
    new-instance p3, Le/a/t1$b$a;

    const/4 p4, 0x6

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/t1$b$a;-><init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V

    iput-object p3, p0, Le/a/t1$b;->n:Ljavax/inject/Provider;

    .line 28
    instance-of p4, p3, Lo3/c/b;

    if-eqz p4, :cond_5

    goto :goto_5

    .line 29
    :cond_5
    new-instance p4, Lo3/c/b;

    invoke-direct {p4, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p4

    .line 30
    :goto_5
    iput-object p3, p0, Le/a/t1$b;->o:Ljavax/inject/Provider;

    .line 31
    new-instance p3, Le/a/t1$b$a;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/t1$b$a;-><init>(Le/a/t1;Le/a/t1$k;Le/a/t1$b;I)V

    iput-object p3, p0, Le/a/t1$b;->p:Ljavax/inject/Provider;

    .line 32
    instance-of p1, p3, Lo3/c/b;

    if-eqz p1, :cond_6

    goto :goto_6

    .line 33
    :cond_6
    new-instance p1, Lo3/c/b;

    invoke-direct {p1, p3}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p3, p1

    .line 34
    :goto_6
    iput-object p3, p0, Le/a/t1$b;->q:Ljavax/inject/Provider;

    return-void
.end method
