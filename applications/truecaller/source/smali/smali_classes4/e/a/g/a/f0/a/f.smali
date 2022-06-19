.class public final Le/a/g/a/f0/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/common/ui/dialogs/StartupXDialogState;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/f0/a/i;


# direct methods
.method public constructor <init>(Le/a/g/a/f0/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/f0/a/f;->a:Le/a/g/a/f0/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    .line 2
    iget-object p1, p0, Le/a/g/a/f0/a/f;->a:Le/a/g/a/f0/a/i;

    .line 3
    iget-object p1, p1, Le/a/g/a/f0/a/i;->e:Le/a/g/a/f0/a/d;

    .line 4
    iget-boolean v0, p1, Le/a/g/a/f0/a/d;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p1, Le/a/g/a/f0/a/d;->d:Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Le/a/g/a/f0/a/d;->Hj()V

    .line 7
    iget-object p1, p1, Le/a/g/a/f0/a/d;->c:Le/a/g/a/f0/a/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/g/a/f0/a/b;->a()V

    .line 8
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
