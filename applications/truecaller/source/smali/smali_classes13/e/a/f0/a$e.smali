.class public final Le/a/f0/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f0/a;-><init>(Le/a/f0/g/a;Le/a/q2/a;Lo3/a;Lo3/a;Le/a/u3/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f0/a;


# direct methods
.method public constructor <init>(Le/a/f0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/f0/a$e;->b:Le/a/f0/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/f0/a$e;->b:Le/a/f0/a;

    .line 2
    iget-object v0, v0, Le/a/f0/a;->k:Le/a/u3/g;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    :try_start_0
    iget-object v3, v0, Le/a/u3/g;->L5:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x163

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v3, Le/m/e/k;

    invoke-direct {v3}, Le/m/e/k;-><init>()V

    const-class v4, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    invoke-virtual {v3, v0, v4}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    invoke-direct {v0, v2, v1, v2}, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;-><init>(Ljava/lang/String;ILs1/z/c/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    new-instance v0, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;

    invoke-direct {v0, v2, v1, v2}, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;-><init>(Ljava/lang/String;ILs1/z/c/f;)V

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/truecaller/social_media/domain/data/TCNewsTikTokBlockedRegions;->getRegions()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
