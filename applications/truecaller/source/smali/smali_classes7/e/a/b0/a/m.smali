.class public final synthetic Le/a/b0/a/m;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Le/a/b0/a/k$a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/ShineView;)V
    .locals 7

    const-class v3, Lcom/truecaller/common/ui/ShineView;

    const/4 v1, 0x1

    const-string v4, "setRotationData"

    const-string v5, "setRotationData(Lcom/truecaller/common/ui/RotationSensorDataProvider$Data;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/b0/a/k$a;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/common/ui/ShineView;

    .line 3
    invoke-static {v0, p1}, Lcom/truecaller/common/ui/ShineView;->a(Lcom/truecaller/common/ui/ShineView;Le/a/b0/a/k$a;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
