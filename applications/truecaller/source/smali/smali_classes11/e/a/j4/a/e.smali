.class public abstract Le/a/j4/a/e;
.super Le/a/j4/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    move-object p1, p0

    check-cast p1, Le/a/e/c/s1$e$a;

    .line 2
    new-instance v0, Le/a/k3/j/j;

    .line 3
    sget-boolean v1, Lcom/truecaller/TrueApp;->r:Z

    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1}, Le/a/k3/j/j;-><init>(Landroid/content/Context;)V

    .line 5
    iget-object p1, p1, Le/a/e/c/s1$e$a;->d:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v0, p1}, Le/a/k3/j/j;->c(Lcom/truecaller/data/entity/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Exception caught in runInBackground"

    .line 6
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
