.class public abstract Le/a/i4/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p2}, Le/a/b0/q/b0;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    new-instance v0, Le/a/f4/g/p;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "notification"

    invoke-direct {v0, p1, v2, v3}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    .line 4
    iput-object p2, v0, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Le/a/f4/g/p;->g:Z

    .line 7
    iput-boolean p1, v0, Le/a/f4/g/p;->i:Z

    .line 8
    iput-boolean p1, v0, Le/a/f4/g/p;->j:Z

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, v0, Le/a/f4/g/p;->l:Z

    const/16 p1, 0x13

    .line 10
    iput p1, v0, Le/a/f4/g/p;->o:I

    .line 11
    invoke-virtual {v0}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v1
.end method
