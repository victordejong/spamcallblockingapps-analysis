.class public Le/a/a/k/h$d;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/i;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/a/k/q;

.field public final c:Landroid/content/Intent;

.field public final d:I


# direct methods
.method public constructor <init>(Le/a/r2/e;Le/a/a/k/q;Landroid/content/Intent;ILe/a/a/k/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/h$d;->b:Le/a/a/k/q;

    .line 3
    iput-object p3, p0, Le/a/a/k/h$d;->c:Landroid/content/Intent;

    .line 4
    iput p4, p0, Le/a/a/k/h$d;->d:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/k/i;

    .line 2
    iget-object v0, p0, Le/a/a/k/h$d;->b:Le/a/a/k/q;

    iget-object v1, p0, Le/a/a/k/h$d;->c:Landroid/content/Intent;

    iget v2, p0, Le/a/a/k/h$d;->d:I

    invoke-interface {p1, v0, v1, v2}, Le/a/a/k/i;->i(Le/a/a/k/q;Landroid/content/Intent;I)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".deliverIntentToTransport("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/h$d;->b:Le/a/a/k/q;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/a/k/h$d;->c:Landroid/content/Intent;

    invoke-static {v3, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/a/k/h$d;->d:I

    const-string v3, ")"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->K1(IILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
