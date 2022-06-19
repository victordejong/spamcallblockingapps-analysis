.class public Le/a/i4/y/c;
.super Le/a/j4/a/a;
.source "SourceFile"


# instance fields
.field public final synthetic d:Le/a/i4/y/d;


# direct methods
.method public constructor <init>(Le/a/i4/y/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i4/y/c;->d:Le/a/i4/y/d;

    invoke-direct {p0}, Le/a/j4/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/i4/y/c;->d:Le/a/i4/y/d;

    .line 2
    sget v0, Le/a/i4/y/d;->j:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/a/e/g1;->f(Z)V

    .line 4
    iget-object p1, p0, Le/a/i4/y/c;->d:Le/a/i4/y/d;

    .line 5
    invoke-virtual {p1}, Le/a/i4/y/d;->dB()V

    return-void
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/i4/y/c;->d:Le/a/i4/y/d;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i4/y/c;->d:Le/a/i4/y/d;

    .line 3
    iget-object v0, v0, Le/a/i4/y/d;->i:Le/a/j4/b/a/f;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-static {p1}, Le/a/e/a2;->F(Landroid/content/Context;)Le/a/o5/z0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p1, Le/a/o5/z0;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "BackupService checkServerNotifications caused"

    .line 7
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
