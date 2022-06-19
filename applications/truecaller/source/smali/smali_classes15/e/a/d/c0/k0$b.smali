.class public final Le/a/d/c0/k0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/k0;->k(Lq3/a/i0;Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;Ljava/lang/String;Lq3/a/w2/z;Lq3/a/w2/z;Lq3/a/w2/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/d/c0/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/z/c/c0;

.field public final synthetic c:Lq3/a/w2/z;

.field public final synthetic d:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ls1/z/b/a;

.field public final synthetic g:Ls1/z/b/a;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Lq3/a/w2/z;Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/k0$b;->b:Ls1/z/c/c0;

    iput-object p2, p0, Le/a/d/c0/k0$b;->c:Lq3/a/w2/z;

    iput-object p3, p0, Le/a/d/c0/k0$b;->d:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    iput-object p4, p0, Le/a/d/c0/k0$b;->e:Ljava/lang/String;

    iput-object p5, p0, Le/a/d/c0/k0$b;->f:Ls1/z/b/a;

    iput-object p6, p0, Le/a/d/c0/k0$b;->g:Ls1/z/b/a;

    iput-object p7, p0, Le/a/d/c0/k0$b;->h:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, Le/a/d/c0/k0$b;->b:Ls1/z/c/c0;

    iget-object v1, p0, Le/a/d/c0/k0$b;->c:Lq3/a/w2/z;

    invoke-interface {v1}, Lq3/a/w2/z;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/voip/VoipUser;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le/a/d/c0/k0$b;->b:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/voip/VoipUser;

    :goto_0
    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Le/a/d/c0/e0;

    .line 3
    iget-object v3, p0, Le/a/d/c0/k0$b;->d:Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;

    .line 4
    iget-object v4, p0, Le/a/d/c0/k0$b;->e:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Le/a/d/c0/k0$b;->f:Ls1/z/b/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 6
    :goto_1
    iget-object v1, p0, Le/a/d/c0/k0$b;->g:Ls1/z/b/a;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v6, v1

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 7
    :goto_2
    iget-object v1, p0, Le/a/d/c0/k0$b;->b:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/voip/VoipUser;

    if-eqz v1, :cond_3

    .line 8
    iget-object v7, v1, Lcom/truecaller/voip/VoipUser;->a:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v7, v2

    :goto_3
    if-eqz v1, :cond_4

    .line 9
    iget-object v1, v1, Lcom/truecaller/voip/VoipUser;->h:Ljava/lang/Integer;

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object v8, v2

    .line 10
    :goto_4
    iget-object v9, p0, Le/a/d/c0/k0$b;->h:Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x80

    move-object v2, v0

    .line 11
    invoke-direct/range {v2 .. v11}, Le/a/d/c0/e0;-><init>(Lcom/truecaller/voip/util/VoipAnalyticsCallDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZI)V

    return-object v0
.end method
