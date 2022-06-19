.class public final synthetic Le/i/b/r1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

.field public final synthetic b:Lcom/criteo/publisher/advancednative/CriteoNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/r1/a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    iput-object p2, p0, Le/i/b/r1/a;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/i/b/r1/a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    iget-object v1, p0, Le/i/b/r1/a;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    invoke-static {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->b(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method
