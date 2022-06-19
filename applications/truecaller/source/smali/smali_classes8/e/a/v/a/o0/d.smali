.class public final Le/a/v/a/o0/d;
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
.field public final synthetic b:Le/a/v/a/o0/g;

.field public final synthetic c:Lcom/truecaller/data/entity/AppStores;


# direct methods
.method public constructor <init>(Le/a/v/a/o0/g;Lcom/truecaller/data/entity/AppStores;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/o0/d;->b:Le/a/v/a/o0/g;

    iput-object p2, p0, Le/a/v/a/o0/d;->c:Lcom/truecaller/data/entity/AppStores;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/o0/d;->b:Le/a/v/a/o0/g;

    .line 2
    iget-object v0, v0, Le/a/v/a/o0/g;->g:Le/a/v/a/z/a;

    .line 3
    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;->GOOGLE_PLAY_STORE:Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;

    invoke-virtual {v0, v1}, Le/a/v/a/z/a;->b(Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;)V

    .line 4
    iget-object v0, p0, Le/a/v/a/o0/d;->b:Le/a/v/a/o0/g;

    .line 5
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/o0/c;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Le/a/v/a/o0/d;->c:Lcom/truecaller/data/entity/AppStores;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/AppStores;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/v/a/o0/c;->S(Ljava/lang/String;)V

    .line 7
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
