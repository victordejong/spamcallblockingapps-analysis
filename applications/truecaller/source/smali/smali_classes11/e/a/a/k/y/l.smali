.class public final Le/a/a/k/y/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/r2/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/r2/j;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mThread"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/y/l;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/k/y/l;->b:Le/a/r2/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Le/a/e4/p;)Le/a/r2/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/a/e4/p;",
            ")",
            "Le/a/r2/f<",
            "Le/a/a/k/y/k;",
            ">;"
        }
    .end annotation

    const-string v0, "simToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "multiSimManager"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2, p1}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v2

    .line 2
    invoke-interface {p2, p1}, Le/a/e4/p;->i(Ljava/lang/String;)Le/a/e4/i;

    move-result-object v3

    const-string v4, "multiSimManager.getCarrierConfiguration(simToken)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v4, p0, Le/a/a/k/y/l;->a:Landroid/content/Context;

    const-string v5, "context"

    .line 4
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of v0, p2, Le/a/e4/q;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p2, Le/a/e4/t;

    if-eqz v0, :cond_1

    :goto_0
    new-instance v0, Le/a/a/k/y/c;

    invoke-interface {p2, p1}, Le/a/e4/p;->w(Ljava/lang/String;)Landroid/telephony/SmsManager;

    move-result-object p1

    const-string p2, "multiSimManager.getSmsManager(simToken)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, p1}, Le/a/a/k/y/c;-><init>(Landroid/content/Context;Landroid/telephony/SmsManager;)V

    .line 7
    new-instance p1, Le/a/a/k/y/m;

    iget-object p2, p0, Le/a/a/k/y/l;->a:Landroid/content/Context;

    invoke-direct {p1, p2, v2, v3, v0}, Le/a/a/k/y/m;-><init>(Landroid/content/Context;Lcom/truecaller/multisim/SimInfo;Le/a/e4/i;Le/a/a/k/y/f;)V

    .line 8
    iget-object p2, p0, Le/a/a/k/y/l;->b:Le/a/r2/j;

    const-class v0, Le/a/a/k/y/k;

    invoke-interface {p2, v0, p1}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object p1

    const-string p2, "mThread.bind(MmsSender::class.java, sender)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not supported"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
