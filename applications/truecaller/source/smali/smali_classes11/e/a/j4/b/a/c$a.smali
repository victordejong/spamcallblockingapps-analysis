.class public Le/a/j4/b/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/j4/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Lcom/truecaller/TrueApp;


# direct methods
.method public constructor <init>(Le/a/b0/g/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lcom/truecaller/TrueApp;

    iput-object p1, p0, Le/a/j4/b/a/c$a;->a:Lcom/truecaller/TrueApp;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "WorkManager.getInstance(context)"

    const-string v1, "context"

    .line 1
    :try_start_0
    iget-object v2, p0, Le/a/j4/b/a/c$a;->a:Lcom/truecaller/TrueApp;

    invoke-virtual {v2}, Lcom/truecaller/TrueApp;->W()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Le/a/j4/b/a/c$a;->a:Lcom/truecaller/TrueApp;

    invoke-virtual {v2}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v2

    invoke-interface {v2}, Le/a/j2;->L3()Le/a/r2/f;

    move-result-object v2

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i3/b;

    invoke-interface {v2}, Le/a/i3/b;->b()Le/a/r2/x;

    move-result-object v2

    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    const-string v2, "tagsEntityTag"

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v3}, Le/a/n/g0;->B0(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Le/a/j4/b/a/c$a;->a:Lcom/truecaller/TrueApp;

    invoke-static {v2}, Le/a/b0/p/h/a;->d(Landroid/content/Context;)V

    .line 5
    iget-object v2, p0, Le/a/j4/b/a/c$a;->a:Lcom/truecaller/TrueApp;

    invoke-virtual {v2}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v2

    invoke-interface {v2}, Le/a/j2;->S0()Le/a/a0/i;

    move-result-object v2

    invoke-interface {v2}, Le/a/a0/i;->b()V

    .line 6
    iget-object v2, p0, Le/a/j4/b/a/c$a;->a:Lcom/truecaller/TrueApp;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 7
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v5}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v3

    .line 9
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const-string v4, "FetchSearchWarningsWorkAction"

    invoke-static/range {v3 .. v8}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 10
    iget-object v2, p0, Le/a/j4/b/a/c$a;->a:Lcom/truecaller/TrueApp;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 11
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v5}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v3

    .line 13
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const-string v4, "FetchSurveysWorkAction"

    invoke-static/range {v3 .. v8}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "Error updating language, language="

    .line 14
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "language"

    invoke-static {v2}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
