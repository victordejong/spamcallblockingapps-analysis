.class public final Le/a/l/n2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/n;

.field public final synthetic b:Le/a/l/n2/b;


# direct methods
.method public constructor <init>(Lq3/a/n;Le/a/l/n2/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/b$a;->a:Lq3/a/n;

    iput-object p2, p0, Le/a/l/n2/b$a;->b:Le/a/l/n2/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 2

    const-string v0, "GooglePlayBilling onBillingServiceDisconnected() called"

    .line 1
    invoke-static {v0}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/l/n2/b$a;->b:Le/a/l/n2/b;

    iget-object v0, v0, Le/a/l/n2/b;->g:Le/a/l/n2/a;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Le/a/l/n2/a;->a:Le/d/a/a/d;

    .line 4
    iget-object v0, p0, Le/a/l/n2/b$a;->a:Lq3/a/n;

    invoke-interface {v0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/l/n2/b$a;->a:Lq3/a/n;

    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBillingSetupFinished(Le/d/a/a/k;)V
    .locals 1

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/n2/b$a;->b:Le/a/l/n2/b;

    iget-object v0, v0, Le/a/l/n2/b;->g:Le/a/l/n2/a;

    invoke-static {v0, p1}, Le/a/l/n2/a;->p(Le/a/l/n2/a;Le/d/a/a/k;)Z

    move-result p1

    .line 2
    iget-object p1, p0, Le/a/l/n2/b$a;->a:Lq3/a/n;

    invoke-interface {p1}, Lq3/a/n;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Le/a/l/n2/b$a;->a:Lq3/a/n;

    sget-object v0, Ls1/s;->a:Ls1/s;

    invoke-interface {p1, v0}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
