.class public final synthetic Le/a/r/w/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/r/w/e;


# direct methods
.method public synthetic constructor <init>(Le/a/r/w/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/w/b;->a:Le/a/r/w/e;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Le/a/r/w/b;->a:Le/a/r/w/e;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    iget-object v0, v0, Le/a/r/w/e;->i:Le/a/r/w/g;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast v0, Le/a/r/w/j;

    .line 2
    iget-object v1, v0, Le/a/r/w/j;->o:Lcom/truecaller/wizard/WizardVerificationMode;

    sget-object v2, Lcom/truecaller/wizard/WizardVerificationMode;->PRIMARY_NUMBER:Lcom/truecaller/wizard/WizardVerificationMode;

    if-ne v1, v2, :cond_0

    .line 3
    iget-object v1, v0, Le/a/r/w/j;->k:Le/a/b0/e/r/a;

    const-string v2, "region_c_accepted"

    invoke-interface {v1, v2, p1}, Le/a/b0/e/r/a;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Le/a/r/w/j;->Kj(Z)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
