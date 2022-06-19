.class public final Le/a/i/f0/l/k$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/k;-><init>(Le/a/i/s;Ls1/w/f;Le/a/i/f0/l/o;Le/a/p5/c;Le/a/d4/c;Le/a/i/f0/a;Le/a/z4/a;Le/a/i/f0/k/a;Le/a/i/f0/l/p;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/u3/g;Le/a/p5/u;Le/a/p5/g;Ljava/util/Map;Le/a/i/f0/j/a;Lo3/a;Lo3/a;Le/a/i/b0/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/f0/l/k;


# direct methods
.method public constructor <init>(Le/a/i/f0/l/k;)V
    .locals 0

    iput-object p1, p0, Le/a/i/f0/l/k$h;->b:Le/a/i/f0/l/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/f0/l/k$h;->b:Le/a/i/f0/l/k;

    .line 2
    iget-object v0, v0, Le/a/i/f0/l/k;->l:Le/a/d4/c;

    .line 3
    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-interface {v0, v1}, Le/a/d4/c;->f(Le/a/d4/e;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const v1, 0xa7d8c0

    if-lt v0, v1, :cond_2

    const v1, 0xaedda0

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 4
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
