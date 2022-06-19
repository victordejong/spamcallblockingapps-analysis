.class public Le/a/o5/p0$b;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/o5/q0;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:[Lcom/truecaller/messaging/data/types/Entity;


# direct methods
.method public constructor <init>(Le/a/r2/e;[Lcom/truecaller/messaging/data/types/Entity;Le/a/o5/p0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/o5/p0$b;->b:[Lcom/truecaller/messaging/data/types/Entity;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 1

    .line 1
    check-cast p1, Le/a/o5/q0;

    .line 2
    iget-object v0, p0, Le/a/o5/p0$b;->b:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-interface {p1, v0}, Le/a/o5/q0;->h([Lcom/truecaller/messaging/data/types/Entity;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ".addToDownloads("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/p0$b;->b:[Lcom/truecaller/messaging/data/types/Entity;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
