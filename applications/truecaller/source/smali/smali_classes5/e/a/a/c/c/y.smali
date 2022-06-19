.class public final Le/a/a/c/c/y;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/linkpreviews/LinkMetaData;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/c/x;


# direct methods
.method public constructor <init>(Le/a/a/c/c/x;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/c/y;->b:Le/a/a/c/c/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Le/a/a/c/c/y;->b:Le/a/a/c/c/x;

    .line 5
    iget-object v2, p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->b:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;->c:Ljava/lang/String;

    .line 7
    invoke-interface {v1, v2, p1, v0}, Le/a/a/c/c/x;->P4(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Le/a/a/c/c/y;->b:Le/a/a/c/c/x;

    invoke-interface {p1}, Le/a/a/c/c/x;->n1()V

    .line 9
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
