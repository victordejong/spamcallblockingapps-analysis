.class public final Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d;->a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/z/b/l;Ls1/z/b/a;Ls1/z/b/l;ZLcom/truecaller/common/ui/dialogs/ConfirmationDialog$ButtonStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Le/a/b0/a/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/b/a;

.field public final synthetic b:Ls1/z/b/l;

.field public final synthetic c:Ls1/z/b/l;

.field public final synthetic d:Ls1/g;


# direct methods
.method public constructor <init>(Ls1/z/b/a;Ls1/z/b/l;Ls1/z/b/l;Ls1/g;Ls1/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->a:Ls1/z/b/a;

    iput-object p2, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->b:Ls1/z/b/l;

    iput-object p3, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->c:Ls1/z/b/l;

    iput-object p4, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->d:Ls1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/b0/a/a/b;

    .line 2
    sget-object v0, Le/a/b0/a/a/b$d;->a:Le/a/b0/a/a/b$d;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v0, Le/a/b0/a/a/b$b;->a:Le/a/b0/a/a/b$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->a:Ls1/z/b/a;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p1, Le/a/b0/a/a/b$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->b:Ls1/z/b/l;

    if-eqz v0, :cond_2

    move-object v1, p1

    check-cast v1, Le/a/b0/a/a/b$c;

    .line 5
    iget-boolean v1, v1, Le/a/b0/a/a/b$c;->a:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->c:Ls1/z/b/l;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/truecaller/common/ui/dialogs/ConfirmationDialog$d$c;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/a/a/c;

    invoke-virtual {p1}, Le/a/b0/a/a/c;->c()Ln3/v/k0;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    :goto_1
    return-void
.end method
