.class public Le/a/q3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Le/g/a/f;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Z

.field public c:Landroid/os/HandlerThread;

.field public d:Landroid/os/Handler;

.field public e:Landroid/media/ToneGenerator;

.field public f:Landroid/os/Vibrator;

.field public g:Le/a/q3/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Le/g/a/e;

    const/16 v1, 0xc

    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    invoke-direct {v0, v1, v2, v3}, Le/g/a/e;-><init>(ID)V

    sput-object v0, Le/a/q3/b;->h:Le/g/a/f;

    .line 2
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x31

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 3
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x32

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 4
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x33

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 5
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x34

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 6
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x35

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 7
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x36

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 8
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x37

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 9
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x38

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 10
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x39

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 11
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 12
    move-object v1, v0

    check-cast v1, Le/g/a/e;

    const/16 v2, 0x2a

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Le/g/a/e;->c(CI)I

    .line 13
    check-cast v0, Le/g/a/e;

    const/16 v1, 0x23

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Le/g/a/e;->c(CI)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q3/b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    instance-of v0, p1, Le/a/q3/g;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Le/a/q3/g;

    invoke-interface {p1}, Le/a/q3/g;->B()Le/a/q3/f;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/q3/f;->a(Le/a/q3/b;)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/q3/b;->g:Le/a/q3/h;

    invoke-interface {p1}, Le/a/q3/h;->c()Z

    move-result p1

    iput-boolean p1, p0, Le/a/q3/b;->b:Z

    .line 7
    new-instance p1, Le/a/q3/b$a;

    const-string v0, "feedback"

    invoke-direct {p1, p0, v0}, Le/a/q3/b$a;-><init>(Le/a/q3/b;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/q3/b;->c:Landroid/os/HandlerThread;

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method
