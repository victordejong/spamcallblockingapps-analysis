.class public final Le/a/b0/a/c/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Throwable;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b0/a/c/i;

.field public final synthetic c:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;


# direct methods
.method public constructor <init>(Le/a/b0/a/c/i;Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/c/h;->b:Le/a/b0/a/c/i;

    iput-object p2, p0, Le/a/b0/a/c/h;->c:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Le/a/b0/a/c/h;->c:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->c(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Le/a/z3/e;

    move-result-object p1

    iget-object v0, p0, Le/a/b0/a/c/h;->b:Le/a/b0/a/c/i;

    invoke-virtual {p1, v0}, Le/f/a/i;->n(Le/f/a/r/k/k;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
