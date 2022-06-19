.class public final Le/a/g/j/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/j/d0;


# instance fields
.field public a:Z

.field public final b:Ls1/g;

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/l/a/y;

.field public final e:Le/a/o5/f0;

.field public final f:Le/a/l/c2;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/l/a/y;Le/a/o5/f0;Le/a/l/c2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumPurchaseSupportedCheck"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/j/e0;->c:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/g/j/e0;->d:Le/a/l/a/y;

    iput-object p3, p0, Le/a/g/j/e0;->e:Le/a/o5/f0;

    iput-object p4, p0, Le/a/g/j/e0;->f:Le/a/l/c2;

    .line 2
    new-instance p1, Le/a/g/j/e0$a;

    invoke-direct {p1, p0}, Le/a/g/j/e0$a;-><init>(Le/a/g/j/e0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/g/j/e0;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;)Z
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/g/j/e0;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/g/j/e0;->e:Le/a/o5/f0;

    invoke-interface {p1}, Le/a/o5/f0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/g/j/e0;->c:Le/a/l/p2/v0;

    invoke-interface {p1}, Le/a/l/p2/v0;->H()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Le/a/g/j/e0;->d:Le/a/l/a/y;

    invoke-virtual {p1}, Le/a/l/a/y;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/g/j/e0;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
