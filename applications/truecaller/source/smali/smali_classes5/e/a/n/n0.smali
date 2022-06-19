.class public Le/a/n/n0;
.super Le/a/n/z0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/n/z0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Le/a/b0/o/a;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/n/z0;-><init>(Le/a/b0/o/a;)V

    iput-object p1, p0, Le/a/n/n0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/n/z0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/n/n0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/n/n0;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/n0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/z0;->a:Le/a/b0/o/a;

    .line 2
    iget-object v1, p0, Le/a/n/n0;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/n/z0;->a:Le/a/b0/o/a;

    .line 3
    iget-object v1, p0, Le/a/n/n0;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
