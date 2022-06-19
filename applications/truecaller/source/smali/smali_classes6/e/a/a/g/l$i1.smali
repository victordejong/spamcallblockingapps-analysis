.class public Le/a/a/g/l$i1;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/g/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/a/g/m;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/r2/e;Le/a/a/g/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 0

    .line 1
    check-cast p1, Le/a/a/g/m;

    .line 2
    invoke-interface {p1}, Le/a/a/g/m;->e()Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ".waitUntilMessagesProcessed()"

    return-object v0
.end method
