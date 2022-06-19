.class public abstract Le/a/j4/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/j4/b/a/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final b()Landroid/content/SharedPreferences;
    .locals 5

    const-string v0, "truecaller.data."

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Le/a/j4/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/j4/b/a/b;->a:Landroid/content/Context;

    .line 3
    new-instance v2, Le/a/m0/c1/a0;

    invoke-direct {v2, v1, v0}, Le/a/m0/c1/a0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v3, Le/a/m0/c1/b0;

    invoke-direct {v3, v1, v0, v2}, Le/a/m0/c1/b0;-><init>(Landroid/content/Context;Ljava/lang/String;Le/a/m0/c1/b0$m;)V

    .line 5
    iget-object v1, v3, Le/a/m0/c1/b0;->e:Ljava/util/WeakHashMap;

    sget-object v4, Le/a/m0/c1/b0;->l:Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Le/a/j4/b/a/b;->a:Landroid/content/Context;

    const-string v2, "TC.settings.3.0.beta5"

    invoke-static {v1, v2}, Le/a/m0/c1/b0;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Le/a/j4/b/a/b;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8
    invoke-static {v0, v3}, Le/a/m0/c1/b0;->a(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-object v3
.end method
