.class public Le/a/a/k/a/w0$c;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/w0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/a/x0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/api/services/messenger/v1/events/Event;

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(Le/a/r2/e;Lcom/truecaller/api/services/messenger/v1/events/Event;IILe/a/a/k/a/w0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/a/w0$c;->b:Lcom/truecaller/api/services/messenger/v1/events/Event;

    .line 3
    iput p3, p0, Le/a/a/k/a/w0$c;->c:I

    .line 4
    iput p4, p0, Le/a/a/k/a/w0$c;->d:I

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/k/a/x0;

    .line 2
    iget-object v0, p0, Le/a/a/k/a/w0$c;->b:Lcom/truecaller/api/services/messenger/v1/events/Event;

    iget v1, p0, Le/a/a/k/a/w0$c;->c:I

    iget v2, p0, Le/a/a/k/a/w0$c;->d:I

    invoke-interface {p1, v0, v1, v2}, Le/a/a/k/a/x0;->a(Lcom/truecaller/api/services/messenger/v1/events/Event;II)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".saveUnsupportedEvent("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/a/w0$c;->b:Lcom/truecaller/api/services/messenger/v1/events/Event;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le/a/a/k/a/w0$c;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/a/k/a/w0$c;->d:I

    const-string v2, ")"

    invoke-static {v1, v3, v0, v2}, Le/d/c/a/a;->K1(IILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
