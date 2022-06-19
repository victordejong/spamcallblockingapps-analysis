.class Lzendesk/commonui/AvatarContainer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/k/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/AvatarContainer;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/k/a/a<",
        "Ljava/lang/Integer;",
        "Lzendesk/commonui/AvatarView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lzendesk/commonui/AvatarContainer;


# direct methods
.method constructor <init>(Lzendesk/commonui/AvatarContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/AvatarContainer$a;->a:Lzendesk/commonui/AvatarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lzendesk/commonui/AvatarView;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/commonui/AvatarContainer$a;->a:Lzendesk/commonui/AvatarContainer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzendesk/commonui/AvatarView;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lzendesk/commonui/AvatarContainer$a;->a(Ljava/lang/Integer;)Lzendesk/commonui/AvatarView;

    move-result-object p1

    return-object p1
.end method
