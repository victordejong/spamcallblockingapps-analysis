.class public final Le/a/e3/k/g;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/f;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Le/a/p5/v0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/p5/v0/b;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telephonyUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call_alert_settings"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p2, p0, Le/a/e3/k/g;->d:Le/a/p5/v0/b;

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Le/a/e3/k/g;->b:I

    .line 3
    iput-object v0, p0, Le/a/e3/k/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/e3/k/g;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e3/k/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "callAlertIncomingCallSimId"

    if-ge p1, v1, :cond_0

    const-string v3, "tc.settings"

    .line 1
    invoke-virtual {p2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    const/4 p2, 0x0

    .line 2
    invoke-interface {v5, v2, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "oldPreferences"

    .line 3
    invoke-static {v5, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    .line 5
    invoke-static/range {v4 .. v9}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    :cond_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_4

    .line 6
    invoke-virtual {p0, v2}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    if-nez v0, :cond_3

    .line 8
    iget-object p2, p0, Le/a/e3/k/g;->d:Le/a/p5/v0/b;

    invoke-interface {p2, p1}, Le/a/p5/v0/b;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sub id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " found for sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "callAlertIncomingCallSubscriptionId"

    invoke-virtual {p0, p2, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    .line 11
    :cond_3
    invoke-virtual {p0, v2}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
