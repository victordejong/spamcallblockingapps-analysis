.class public Le/a/o5/w$h;
.super Le/a/r2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/o5/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/r2/v<",
        "Le/a/o5/x;",
        "Le/a/o5/u;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Le/a/r2/e;Landroid/net/Uri;Le/a/o5/w$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/r2/v;-><init>(Le/a/r2/d;)V

    .line 2
    iput-object p2, p0, Le/a/o5/w$h;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Le/a/r2/x;
    .locals 1

    .line 1
    check-cast p1, Le/a/o5/x;

    .line 2
    iget-object v0, p0, Le/a/o5/w$h;->b:Landroid/net/Uri;

    invoke-interface {p1, v0}, Le/a/o5/x;->g(Landroid/net/Uri;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/r2/v;->c(Le/a/r2/x;)Le/a/r2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, ".getContactAsVCard("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/o5/w$h;->b:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Le/a/r2/v;->b(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
