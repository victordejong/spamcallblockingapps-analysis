.class public final Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Landroid/graphics/drawable/Drawable;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$showTiles$2$asyncDrawables$1$1$1"
    f = "GroupAvatarXView.kt"
    l = {
        0x5d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/b0/a/c/m/a;

.field public final synthetic g:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

.field public final synthetic h:Lq3/a/i0;


# direct methods
.method public constructor <init>(Le/a/b0/a/c/m/a;Ls1/w/d;Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;Lq3/a/i0;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->f:Le/a/b0/a/c/m/a;

    iput-object p3, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->g:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

    iput-object p4, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->h:Lq3/a/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->f:Le/a/b0/a/c/m/a;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->g:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

    iget-object v2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->h:Lq3/a/i0;

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;-><init>(Le/a/b0/a/c/m/a;Ls1/w/d;Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;Lq3/a/i0;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->f:Le/a/b0/a/c/m/a;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->g:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

    iget-object v2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->h:Lq3/a/i0;

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;-><init>(Le/a/b0/a/c/m/a;Ls1/w/d;Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;Lq3/a/i0;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->g:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

    iget-object p1, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->f:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    iget-object p1, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->f:Le/a/b0/a/c/m/a;

    iput v2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;->e:I

    invoke-virtual {p1, v1, p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->e(Le/a/b0/a/c/m/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
