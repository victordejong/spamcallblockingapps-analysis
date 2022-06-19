.class public Le/a/a/k/a/b0$i;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/k/a/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/k/a/c0;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/messaging/data/types/Message;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;Le/a/a/k/a/b0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/a/k/a/b0$i;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iput-object p3, p0, Le/a/a/k/a/b0$i;->c:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Le/a/a/k/a/b0$i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 3

    .line 1
    check-cast p1, Le/a/a/k/a/c0;

    .line 2
    iget-object v0, p0, Le/a/a/k/a/b0$i;->b:Lcom/truecaller/messaging/data/types/Message;

    iget-object v1, p0, Le/a/a/k/a/b0$i;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/a/k/a/b0$i;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Le/a/a/k/a/c0;->h(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ".sendReaction("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/a/k/a/b0$i;->b:Lcom/truecaller/messaging/data/types/Message;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/a/k/a/b0$i;->c:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3, v0, v1}, Le/d/c/a/a;->E0(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/k/a/b0$i;->d:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v1, v3, v0, v2}, Le/d/c/a/a;->o2(Ljava/lang/String;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
