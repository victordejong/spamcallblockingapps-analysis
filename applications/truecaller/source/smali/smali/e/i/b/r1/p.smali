.class public Le/i/b/r1/p;
.super Le/i/b/c3;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/r1/p;->c:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-direct {p0}, Le/i/b/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/r1/p;->c:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdImpression()V

    return-void
.end method
