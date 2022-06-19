.class public Lcom/truecaller/ui/components/AvatarView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/AvatarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

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
    iput-object p1, p0, Lcom/truecaller/ui/components/AvatarView$a;->a:Lcom/truecaller/ui/components/AvatarView;

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

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Lcom/truecaller/ui/components/AvatarView$a;->a:Lcom/truecaller/ui/components/AvatarView;

    .line 3
    iget-object p2, p1, Lcom/truecaller/ui/components/AvatarView;->f:Landroid/net/Uri;

    .line 4
    iget-object p3, p1, Lcom/truecaller/ui/components/AvatarView;->g:Landroid/net/Uri;

    .line 5
    iget-boolean p4, p1, Lcom/truecaller/ui/components/AvatarView;->i:Z

    .line 6
    iget-boolean p5, p1, Lcom/truecaller/ui/components/AvatarView;->j:Z

    .line 7
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/truecaller/ui/components/AvatarView;->b(Landroid/net/Uri;Landroid/net/Uri;ZZ)V

    const/4 p1, 0x0

    return p1
.end method
