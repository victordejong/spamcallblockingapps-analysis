.class public final Le/a/a/h1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/f$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/b0/o/a;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/e/b/k/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/o/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/b0/o/a;",
            "Lo3/a<",
            "Le/a/e/b/k/s;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettingsHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h1/m;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/h1/m;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/a/h1/m;->c:Lo3/a;

    return-void
.end method


# virtual methods
.method public Q1()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/h1/m;->b:Le/a/b0/o/a;

    const-string v1, "flash_disabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Le/a/a/h1/m;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/e/b/k/s;

    iget-object v1, p0, Le/a/a/h1/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le/a/e/b/k/s;->a(Landroid/content/Context;)V

    return-void
.end method

.method public a()V
    .locals 0

    return-void
.end method
