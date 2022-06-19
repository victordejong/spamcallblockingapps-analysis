.class public final Le/a/k/c/j1;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/i1;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "videoCallerIdSettings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1
    invoke-direct {p0, v0}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Le/a/k/c/j1;->d:Landroid/content/Context;

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Le/a/k/c/j1;->b:I

    .line 3
    iput-object v1, p0, Le/a/k/c/j1;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/k/c/j1;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/c/j1;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    const/4 p1, 0x0

    const-string p2, "hiddenForAllContacts"

    .line 1
    invoke-virtual {p0, p2, p1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->getValue()I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->getValue()I

    move-result p1

    :goto_0
    const-string p2, "receiveContactPreference"

    .line 4
    invoke-virtual {p0, p2, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/c/j1;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->c(Landroid/content/Context;)V

    return-void
.end method
