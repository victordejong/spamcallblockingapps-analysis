.class public final Le/a/y/a/j/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Le/a/y/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/y/a/j/p;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/flashsdk/ui/send/SendActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/y/a/j/p;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/y/a/j/p;",
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/flashsdk/ui/send/SendActivity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/y/a/j/q;->a:Le/a/y/a/j/p;

    .line 3
    iput-object p2, p0, Le/a/y/a/j/q;->b:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/j/q;->a:Le/a/y/a/j/p;

    iget-object v1, p0, Le/a/y/a/j/q;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/flashsdk/ui/send/SendActivity;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "activity"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/y/b/b;

    invoke-direct {v0, v1}, Le/a/y/b/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
