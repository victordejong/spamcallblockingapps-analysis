.class public final Le/a/d/b/a/a/l$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/a/l;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/b/a/a/l;

.field public final synthetic c:Lcom/truecaller/voip/VoipUser;


# direct methods
.method public constructor <init>(Le/a/d/b/a/a/l;Lcom/truecaller/voip/VoipUser;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/a/l$a;->b:Le/a/d/b/a/a/l;

    iput-object p2, p0, Le/a/d/b/a/a/l$a;->c:Lcom/truecaller/voip/VoipUser;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/b/a/a/l$a;->b:Le/a/d/b/a/a/l;

    iget-object v1, v0, Le/a/d/b/a/a/l;->f:Le/a/d/b/a/a/j;

    iget-object v2, p0, Le/a/d/b/a/a/l$a;->c:Lcom/truecaller/voip/VoipUser;

    .line 2
    iget-object v2, v2, Lcom/truecaller/voip/VoipUser;->g:Lcom/truecaller/voip/VoipUserBadge;

    .line 3
    iget-object v0, v0, Le/a/d/b/a/a/l;->g:Le/a/d/b/a/d;

    invoke-interface {v0}, Le/a/d/b/a/d;->T1()Le/a/d/x/p;

    move-result-object v0

    .line 4
    iget-boolean v0, v0, Le/a/d/x/p;->a:Z

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-boolean v2, v2, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v1, Le/a/d/b/a/a/j;->i:Le/a/d/c0/f0;

    sget-object v1, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->OUTGOING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    sget-object v2, Lcom/truecaller/voip/util/VoipCleverTapAction;->VOIP_CALL:Lcom/truecaller/voip/util/VoipCleverTapAction;

    invoke-interface {v0, v1, v2}, Le/a/d/c0/f0;->i(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Lcom/truecaller/voip/util/VoipCleverTapAction;)V

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
