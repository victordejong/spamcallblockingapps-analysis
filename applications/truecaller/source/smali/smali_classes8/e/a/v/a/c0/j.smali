.class public final Le/a/v/a/c0/j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/c0/k;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v/a/c0/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c0/j;->b:Le/a/v/a/c0/k;

    iput-object p2, p0, Le/a/v/a/c0/j;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/c0/j;->b:Le/a/v/a/c0/k;

    .line 2
    iget-object v0, v0, Le/a/v/a/c0/k;->b:Le/a/v/a/z/a;

    .line 3
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->WEBSITE:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v0, v1}, Le/a/v/a/z/a;->b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 4
    iget-object v0, p0, Le/a/v/a/c0/j;->b:Le/a/v/a/c0/k;

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/c0/e;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Le/a/v/a/c0/j;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/v/a/c0/e;->S(Ljava/lang/String;)V

    .line 7
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
