.class public final Le/a/d/b/b/a/m$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/b/a/m;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic b:Le/a/d/b/b/a/m;

.field public final synthetic c:Lcom/truecaller/voip/VoipUser;


# direct methods
.method public constructor <init>(Le/a/d/b/b/a/m;Lcom/truecaller/voip/VoipUser;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/b/a/m$a;->b:Le/a/d/b/b/a/m;

    iput-object p2, p0, Le/a/d/b/b/a/m$a;->c:Lcom/truecaller/voip/VoipUser;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/b/b/a/m$a;->b:Le/a/d/b/b/a/m;

    iget-object v0, v0, Le/a/d/b/b/a/m;->f:Le/a/d/b/b/a/l;

    iget-object v1, p0, Le/a/d/b/b/a/m$a;->c:Lcom/truecaller/voip/VoipUser;

    .line 2
    iget-object v1, v1, Lcom/truecaller/voip/VoipUser;->g:Lcom/truecaller/voip/VoipUserBadge;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v1, v1, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Le/a/d/b/b/a/l;->j:Le/a/d/c0/f0;

    sget-object v1, Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;->INCOMING:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    sget-object v2, Lcom/truecaller/voip/util/VoipCleverTapAction;->VOIP_CALL:Lcom/truecaller/voip/util/VoipCleverTapAction;

    invoke-interface {v0, v1, v2}, Le/a/d/c0/f0;->i(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Lcom/truecaller/voip/util/VoipCleverTapAction;)V

    .line 6
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
