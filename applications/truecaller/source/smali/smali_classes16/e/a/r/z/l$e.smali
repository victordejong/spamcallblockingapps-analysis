.class public final Le/a/r/z/l$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/z/l;->rA(Le/a/r/z/o;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/z/l;

.field public final synthetic c:Le/a/r/z/o;


# direct methods
.method public constructor <init>(Le/a/r/z/l;Le/a/r/z/o;)V
    .locals 0

    iput-object p1, p0, Le/a/r/z/l$e;->b:Le/a/r/z/l;

    iput-object p2, p0, Le/a/r/z/l$e;->c:Le/a/r/z/o;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/r/z/l$e;->b:Le/a/r/z/l;

    invoke-virtual {v0}, Le/a/r/z/l;->SA()Le/a/r/z/r;

    move-result-object v0

    iget-object v1, p0, Le/a/r/z/l$e;->c:Le/a/r/z/o;

    check-cast v0, Le/a/r/z/s;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "message"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, v0, Le/a/r/z/s;->X:Le/a/r/z/b0;

    iget-object v4, v0, Le/a/r/z/s;->C:Ljava/lang/String;

    iget-object v5, v0, Le/a/r/z/s;->D:Ljava/lang/Integer;

    iget-object v6, v0, Le/a/r/z/s;->B:Ljava/lang/String;

    check-cast v3, Le/a/r/z/c0;

    invoke-virtual {v3, v1, v4, v5, v6}, Le/a/r/z/c0;->a(Le/a/r/z/o;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Le/a/r/z/h;

    move-result-object v3

    .line 4
    iget-object v4, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/r/z/y;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Le/a/r/z/y;->D5(Le/a/r/z/h;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    iget-object v4, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/r/z/y;

    if-eqz v4, :cond_0

    sget v5, Lcom/truecaller/wizard/R$string;->wizard_verification_error_no_mail_client:I

    invoke-interface {v4, v5}, Le/a/r/z/y;->a(I)V

    .line 6
    :cond_0
    iget-object v0, v0, Le/a/r/z/s;->U:Le/a/r/z/d0/d;

    check-cast v0, Le/a/r/z/d0/e;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, v0, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    new-instance v4, Le/a/r/z/d0/l;

    iget-object v0, v0, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-direct {v4, v1, v3, v0}, Le/a/r/z/d0/l;-><init>(Le/a/r/z/o;ZLcom/truecaller/wizard/WizardVerificationMode;)V

    invoke-interface {v2, v4}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 9
    :cond_1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
