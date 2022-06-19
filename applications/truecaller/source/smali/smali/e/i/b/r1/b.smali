.class public final synthetic Le/i/b/r1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/r1/b;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/i/b/r1/b;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-static {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->c(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V

    return-void
.end method
