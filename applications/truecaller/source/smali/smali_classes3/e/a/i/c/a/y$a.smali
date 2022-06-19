.class public final Le/a/i/c/a/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/CriteoBannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/y;->setBannerAd(Le/a/i/d0/h0/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/h0/i;


# direct methods
.method public constructor <init>(Le/a/i/d0/h0/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/c/a/y$a;->a:Le/a/i/d0/h0/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/i/c/a/y$a;->a:Le/a/i/d0/h0/i;

    invoke-virtual {v0}, Le/a/i/d0/h0/i;->e()V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 1

    const-string v0, "criteoErrorCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/CriteoBannerView;)V
    .locals 1

    const-string v0, "criteoBannerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/i/c/a/y$a;->a:Le/a/i/d0/h0/i;

    invoke-virtual {p1}, Le/a/i/d0/h0/i;->recordImpression()V

    return-void
.end method
