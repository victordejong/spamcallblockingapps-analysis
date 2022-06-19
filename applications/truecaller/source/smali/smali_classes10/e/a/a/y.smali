.class public final Le/a/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u3/f$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/b0/o/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/b0/o/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y;->b:Lo3/a;

    iput-object p2, p0, Le/a/a/y;->c:Le/a/b0/o/a;

    const-string p1, "featureNormalizeShortCodes"

    .line 2
    iput-object p1, p0, Le/a/a/y;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Q1()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/y;->c()V

    return-void
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/y;->c()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/y;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/y;->c:Le/a/b0/o/a;

    const-string v1, "deleteBackupDuplicates"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Le/a/a/y;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/g/m;->b(Z)V

    return-void
.end method
