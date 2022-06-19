.class public final Le/a/f0/a$c;
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
        "Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f0/a;


# direct methods
.method public constructor <init>(Le/a/f0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/f0/a$c;->b:Le/a/f0/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f0/a$c;->b:Le/a/f0/a;

    .line 2
    iget-object v0, v0, Le/a/f0/a;->k:Le/a/u3/g;

    .line 3
    :try_start_0
    iget-object v1, v0, Le/a/u3/g;->K5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x162

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Le/m/e/k;

    invoke-direct {v1}, Le/m/e/k;-><init>()V

    const-class v2, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    invoke-virtual {v1, v0, v2}, Le/m/e/k;->f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Le/a/l4/k;->v()Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    invoke-static {}, Le/a/l4/k;->v()Lcom/truecaller/social_media/domain/data/TCNewsLinksConfig;

    move-result-object v0

    :goto_0
    return-object v0
.end method
