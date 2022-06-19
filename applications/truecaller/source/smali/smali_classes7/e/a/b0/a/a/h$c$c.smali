.class public final Le/a/b0/a/a/h$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/a/h$c;->a(Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;ZLe/a/b0/a/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Lcom/truecaller/common/ui/dialogs/StartupXDialogState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/b/a;

.field public final synthetic b:Ls1/z/b/a;

.field public final synthetic c:Ls1/z/b/l;

.field public final synthetic d:Ls1/g;


# direct methods
.method public constructor <init>(Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;Ls1/g;Ls1/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b0/a/a/h$c$c;->a:Ls1/z/b/a;

    iput-object p2, p0, Le/a/b0/a/a/h$c$c;->b:Ls1/z/b/a;

    iput-object p3, p0, Le/a/b0/a/a/h$c$c;->c:Ls1/z/b/l;

    iput-object p4, p0, Le/a/b0/a/a/h$c$c;->d:Ls1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/common/ui/dialogs/StartupXDialogState;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/b0/a/a/h$c$c;->a:Ls1/z/b/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/b0/a/a/h$c$c;->b:Ls1/z/b/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 5
    :cond_3
    :goto_0
    iget-object v0, p0, Le/a/b0/a/a/h$c$c;->c:Ls1/z/b/l;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 6
    :cond_4
    iget-object p1, p0, Le/a/b0/a/a/h$c$c;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/a/a/i;

    invoke-virtual {p1}, Le/a/b0/a/a/i;->c()Ln3/v/k0;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->k(Ln3/v/l0;)V

    :cond_5
    return-void
.end method
