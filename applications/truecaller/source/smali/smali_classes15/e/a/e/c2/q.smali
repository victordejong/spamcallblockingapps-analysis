.class public Le/a/e/c2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/components/AvatarView;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/AvatarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c2/q;->a:Lcom/truecaller/ui/components/AvatarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/e/c2/q;->a:Lcom/truecaller/ui/components/AvatarView;

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p1, Lcom/truecaller/ui/components/AvatarView;->k:Z

    return p2
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Le/a/e/c2/q;->a:Lcom/truecaller/ui/components/AvatarView;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcom/truecaller/ui/components/AvatarView;->k:Z

    const/4 p1, 0x0

    return p1
.end method
