.class public final Le/a/e0/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e0/a;->e(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/common/ui/dialogs/StartupXDialogState;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e0/a;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e0/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/e0/a$d;->b:Le/a/e0/a;

    iput-object p2, p0, Le/a/e0/a$d;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/e0/a$d;->d:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    .line 2
    iget-object v0, p0, Le/a/e0/a$d;->b:Le/a/e0/a;

    .line 3
    iget-object v0, v0, Le/a/e0/a;->b:Le/a/e0/e;

    .line 4
    iget-object v1, p0, Le/a/e0/a$d;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/e0/a$d;->d:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v3, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;->DISMISSED_POSITIVE:Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, v0, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast p1, Le/a/g/j/m0;

    .line 8
    iget-object p1, p1, Le/a/g/j/m0;->c:Le/a/l/t2/d;

    invoke-virtual {p1}, Le/a/l/t2/d;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e0/d;

    if-eqz p1, :cond_2

    iget-object v0, v0, Le/a/e0/e;->c:Le/a/e0/c;

    invoke-interface {p1, v0}, Le/a/e0/d;->c(Le/a/e0/c;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, v0, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast p1, Le/a/g/j/m0;

    invoke-virtual {p1}, Le/a/g/j/m0;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/e0/d;

    if-eqz p1, :cond_2

    iget-object v0, v0, Le/a/e0/e;->c:Le/a/e0/c;

    invoke-interface {p1, v1, v2, v0}, Le/a/e0/d;->d(Ljava/lang/String;Ljava/lang/String;Le/a/e0/c;)V

    .line 11
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
