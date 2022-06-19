.class public final Le/a/c3/b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c3/b;-><init>(Landroid/content/Context;Le/a/p5/g;Lo3/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c3/b;


# direct methods
.method public constructor <init>(Le/a/c3/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c3/b$b;->b:Le/a/c3/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object v0, Lcom/truecaller/buildinfo/BuildName;->Companion:Lcom/truecaller/buildinfo/BuildName$a;

    iget-object v1, p0, Le/a/c3/b$b;->b:Le/a/c3/b;

    .line 2
    iget-object v1, v1, Le/a/c3/b;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/buildinfo/BuildName$a;->a(Ljava/lang/String;)Lcom/truecaller/buildinfo/BuildName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/buildinfo/BuildName;->getSingleApkPreload()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    .line 6
    :cond_0
    invoke-static {}, Lcom/truecaller/buildinfo/BuildName;->values()[Lcom/truecaller/buildinfo/BuildName;

    move-result-object v0

    .line 7
    invoke-static {v0}, Le/q/f/a/d/a;->p([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object v0

    .line 8
    sget-object v2, Le/a/c3/c;->b:Le/a/c3/c;

    invoke-static {v0, v2}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v0

    .line 9
    check-cast v0, Ls1/e0/h;

    .line 10
    new-instance v2, Ls1/e0/h$a;

    invoke-direct {v2, v0}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 11
    :cond_1
    invoke-virtual {v2}, Ls1/e0/h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/truecaller/buildinfo/BuildName;

    .line 12
    iget-object v4, p0, Le/a/c3/b$b;->b:Le/a/c3/b;

    .line 13
    iget-object v4, v4, Le/a/c3/b;->e:Landroid/content/Context;

    .line 14
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/truecaller/buildinfo/BuildName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    invoke-static {v4}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 16
    iget-object v4, p0, Le/a/c3/b$b;->b:Le/a/c3/b;

    .line 17
    iget-object v4, v4, Le/a/c3/b;->f:Le/a/p5/g;

    .line 18
    invoke-virtual {v3}, Lcom/truecaller/buildinfo/BuildName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Le/a/p5/g;->y(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Le/a/c3/b$b;->b:Le/a/c3/b;

    .line 19
    iget-object v4, v4, Le/a/c3/b;->f:Le/a/p5/g;

    .line 20
    invoke-virtual {v3}, Lcom/truecaller/buildinfo/BuildName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Le/a/p5/g;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_1

    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 21
    :goto_3
    check-cast v0, Lcom/truecaller/buildinfo/BuildName;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_4
    return-object v1
.end method
