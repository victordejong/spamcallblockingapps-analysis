.class public Lcom/iab/omid/library/mopub/walking/TreeWalker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/mopub/walking/TreeWalker;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/iab/omid/library/mopub/walking/TreeWalker;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/mopub/walking/TreeWalker;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/mopub/walking/TreeWalker$1;->a:Lcom/iab/omid/library/mopub/walking/TreeWalker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/mopub/walking/TreeWalker$1;->a:Lcom/iab/omid/library/mopub/walking/TreeWalker;

    invoke-static {v0}, Lcom/iab/omid/library/mopub/walking/TreeWalker;->a(Lcom/iab/omid/library/mopub/walking/TreeWalker;)Lcom/iab/omid/library/mopub/walking/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iab/omid/library/mopub/walking/b;->a()V

    return-void
.end method
