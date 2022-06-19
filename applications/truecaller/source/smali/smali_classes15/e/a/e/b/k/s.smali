.class public final Le/a/e/b/k/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/o/a;

.field public final b:Ln3/m0/y;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Ln3/m0/y;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/o/a;",
            "Ln3/m0/y;",
            "Le/a/r2/f<",
            "Le/a/l4/h;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/b/k/s;->a:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/e/b/k/s;->b:Ln3/m0/y;

    iput-object p3, p0, Le/a/e/b/k/s;->c:Le/a/r2/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/e/b/k/s;->b:Ln3/m0/y;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string p1, "context.applicationContext"

    invoke-static {v3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "SendPresenceSettingWorkAction"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static/range {v1 .. v6}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    .line 2
    iget-object p1, p0, Le/a/e/b/k/s;->a:Le/a/b0/o/a;

    const-string v0, "key_last_set_last_seen_time"

    invoke-interface {p1, v0}, Le/a/b0/o/a;->remove(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/e/b/k/s;->c:Le/a/r2/f;

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l4/h;

    invoke-interface {p1}, Le/a/l4/h;->c()V

    return-void
.end method
