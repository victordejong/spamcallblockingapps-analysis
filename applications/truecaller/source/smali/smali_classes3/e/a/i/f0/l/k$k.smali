.class public final synthetic Le/a/i/f0/l/k$k;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/f0/l/k;->w(Ljava/lang/String;Lcom/truecaller/ads/campaigns/AdCampaign$Style;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/r<",
        "Ljava/lang/String;",
        "Le/a/i/f0/l/c;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/f0/l/k;)V
    .locals 7

    const-class v3, Le/a/i/f0/l/k;

    const/4 v1, 0x4

    const-string v4, "logAdsGenericEvent"

    const-string v5, "logAdsGenericEvent(Ljava/lang/String;Lcom/truecaller/ads/provider/fetch/AdRequest;Ljava/lang/String;Ljava/lang/Integer;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Le/a/i/f0/l/c;

    check-cast p3, Ljava/lang/String;

    check-cast p4, Ljava/lang/Integer;

    const-string v0, "p1"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p2"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/i/f0/l/k;

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Le/a/i/f0/l/k;->q(Ljava/lang/String;Le/a/i/f0/l/c;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
