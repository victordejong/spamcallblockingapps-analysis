.class public Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/x1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->doLoad(Lcom/criteo/publisher/context/ContextData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->access$000(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Le/i/b/u2/c/n;)V

    return-void
.end method

.method public a(Le/i/b/u2/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/CriteoNativeLoader$a;->a:Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    invoke-virtual {p1}, Le/i/b/u2/w;->i()Le/i/b/u2/c/n;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->access$000(Lcom/criteo/publisher/advancednative/CriteoNativeLoader;Le/i/b/u2/c/n;)V

    return-void
.end method
