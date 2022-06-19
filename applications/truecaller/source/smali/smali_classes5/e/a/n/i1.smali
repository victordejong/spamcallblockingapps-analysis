.class public Le/a/n/i1;
.super Le/a/n/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/n/u0<",
        "Ljava/lang/Integer;",
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

    iput-object p1, p0, Le/a/n/i1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/n/i1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/n/u0;->a:Lcom/truecaller/settings/CallingSettings;

    .line 2
    iget-object v1, p0, Le/a/n/i1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/n/u0;->a:Lcom/truecaller/settings/CallingSettings;

    .line 3
    iget-object v1, p0, Le/a/n/i1;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    return-void
.end method
