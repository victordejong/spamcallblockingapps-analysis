.class public final Le/a/w4/s/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/w4/s/a0$b;
    }
.end annotation


# instance fields
.field public final a:Le/a/j2;

.field public final b:Le/a/w4/s/d0;

.field public final c:Le/a/w4/s/a0;

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
            "Le/a/w4/t/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/z;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/m0;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/o0;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/t0;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/q;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/t;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/v;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/search/global/CompositeAdapterDelegate;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/p0;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/r/a;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/j6;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c/y6;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/c;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/g0;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/w4/s/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/w4/s/d0;Le/a/j2;Le/a/w4/s/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/w4/s/a0;->c:Le/a/w4/s/a0;

    .line 3
    iput-object p2, p0, Le/a/w4/s/a0;->a:Le/a/j2;

    .line 4
    iput-object p1, p0, Le/a/w4/s/a0;->b:Le/a/w4/s/d0;

    .line 5
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

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
    iput-object p1, p0, Le/a/w4/s/a0;->d:Ljavax/inject/Provider;

    .line 10
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

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
    iput-object p1, p0, Le/a/w4/s/a0;->e:Ljavax/inject/Provider;

    .line 14
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

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
    iput-object p1, p0, Le/a/w4/s/a0;->f:Ljavax/inject/Provider;

    .line 18
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

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
    iput-object p1, p0, Le/a/w4/s/a0;->g:Ljavax/inject/Provider;

    .line 22
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 23
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_4

    goto :goto_4

    .line 24
    :cond_4
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 25
    :goto_4
    iput-object p1, p0, Le/a/w4/s/a0;->h:Ljavax/inject/Provider;

    .line 26
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 27
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_5

    goto :goto_5

    .line 28
    :cond_5
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 29
    :goto_5
    iput-object p1, p0, Le/a/w4/s/a0;->i:Ljavax/inject/Provider;

    .line 30
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 31
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_6

    goto :goto_6

    .line 32
    :cond_6
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 33
    :goto_6
    iput-object p1, p0, Le/a/w4/s/a0;->j:Ljavax/inject/Provider;

    .line 34
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 35
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_7

    goto :goto_7

    .line 36
    :cond_7
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 37
    :goto_7
    iput-object p1, p0, Le/a/w4/s/a0;->k:Ljavax/inject/Provider;

    .line 38
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 39
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_8

    goto :goto_8

    .line 40
    :cond_8
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 41
    :goto_8
    iput-object p1, p0, Le/a/w4/s/a0;->l:Ljavax/inject/Provider;

    .line 42
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 43
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_9

    goto :goto_9

    .line 44
    :cond_9
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 45
    :goto_9
    iput-object p1, p0, Le/a/w4/s/a0;->m:Ljavax/inject/Provider;

    .line 46
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0xb

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 47
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_a

    goto :goto_a

    .line 48
    :cond_a
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 49
    :goto_a
    iput-object p1, p0, Le/a/w4/s/a0;->n:Ljavax/inject/Provider;

    .line 50
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0xc

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 51
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_b

    goto :goto_b

    .line 52
    :cond_b
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 53
    :goto_b
    iput-object p1, p0, Le/a/w4/s/a0;->o:Ljavax/inject/Provider;

    .line 54
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0xd

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 55
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_c

    goto :goto_c

    .line 56
    :cond_c
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 57
    :goto_c
    iput-object p1, p0, Le/a/w4/s/a0;->p:Ljavax/inject/Provider;

    .line 58
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0xe

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    .line 59
    instance-of p2, p1, Lo3/c/b;

    if-eqz p2, :cond_d

    goto :goto_d

    .line 60
    :cond_d
    new-instance p2, Lo3/c/b;

    invoke-direct {p2, p1}, Lo3/c/b;-><init>(Ljavax/inject/Provider;)V

    move-object p1, p2

    .line 61
    :goto_d
    iput-object p1, p0, Le/a/w4/s/a0;->q:Ljavax/inject/Provider;

    .line 62
    new-instance p1, Le/a/w4/s/a0$b;

    const/16 p2, 0xf

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    iput-object p1, p0, Le/a/w4/s/a0;->r:Ljavax/inject/Provider;

    .line 63
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/a0;->s:Ljavax/inject/Provider;

    .line 64
    new-instance p1, Le/a/w4/s/a0$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/w4/s/a0$b;-><init>(Le/a/w4/s/a0;I)V

    iput-object p1, p0, Le/a/w4/s/a0;->t:Ljavax/inject/Provider;

    .line 65
    invoke-static {p1}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Le/a/w4/s/a0;->u:Ljavax/inject/Provider;

    return-void
.end method
