.class public final Le/a/l/v2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/c;->a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

    iput-object p2, p0, Le/a/l/v2/c;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/v2/c;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/l/v2/c;->a:Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;->x:Ljava/lang/Runnable;

    return-void
.end method
