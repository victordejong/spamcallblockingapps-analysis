.class public final synthetic Le/a/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# instance fields
.field public final synthetic a:Lcom/truecaller/TrueApp;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/TrueApp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o0;->a:Lcom/truecaller/TrueApp;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/a/o0;->a:Lcom/truecaller/TrueApp;

    .line 1
    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
