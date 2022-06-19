.class public Le/a/n/m0;
.super Le/a/n/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/n/u0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/n/u0;-><init>(Lcom/truecaller/settings/CallingSettings;)V

    iput-object p1, p0, Le/a/n/m0;->b:Ljava/lang/String;

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
    invoke-virtual {p0}, Le/a/n/u0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/n/m0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/n/m0;->setValue(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/m0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/u0;->a:Lcom/truecaller/settings/CallingSettings;

    .line 2
    iget-object v1, p0, Le/a/n/m0;->b:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

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
    iget-object v0, p0, Le/a/n/u0;->a:Lcom/truecaller/settings/CallingSettings;

    .line 3
    iget-object v1, p0, Le/a/n/m0;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
