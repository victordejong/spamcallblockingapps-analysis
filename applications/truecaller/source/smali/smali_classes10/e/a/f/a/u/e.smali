.class public final Le/a/f/a/u/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f/a/u/d;


# direct methods
.method public constructor <init>(Le/a/f/a/u/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/u/e;->b:Le/a/f/a/u/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/f/a/u/e;->b:Le/a/f/a/u/d;

    .line 3
    sget v0, Le/a/f/a/u/d;->p:I

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/truecaller/incallui/callui/enablePromo/Action;->DefaultDialerRejected:Lcom/truecaller/incallui/callui/enablePromo/Action;

    invoke-virtual {p1, v0}, Le/a/f/a/u/d;->eB(Lcom/truecaller/incallui/callui/enablePromo/Action;)V

    .line 6
    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Le/a/f/a/u/e;->b:Le/a/f/a/u/d;

    .line 8
    sget v0, Le/a/f/a/u/d;->p:I

    .line 9
    invoke-virtual {p1}, Le/a/f/a/u/d;->cB()V

    .line 10
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
