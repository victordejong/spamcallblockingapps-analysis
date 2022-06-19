.class public final Le/a/r/z/d0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/z/d0/d;


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Lcom/truecaller/wizard/WizardVerificationMode;

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/q2/a;Lcom/truecaller/wizard/WizardVerificationMode;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    iput-object p3, p0, Le/a/r/z/d0/e;->c:Le/a/u3/g;

    return-void
.end method
