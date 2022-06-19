.class public final Le/a/a/c/d$q;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->X3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/d;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$q;->b:Le/a/a/c/d;

    iput-object p6, p0, Le/a/a/c/d$q;->c:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/a/c/d$q;->b:Le/a/a/c/d;

    .line 4
    iget-object p1, p1, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 5
    iget-object v0, p0, Le/a/a/c/d$q;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/a/c/k/a/j;->k1(Ljava/lang/String;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
