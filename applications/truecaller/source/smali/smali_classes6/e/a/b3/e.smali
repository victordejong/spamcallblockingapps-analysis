.class public final Le/a/b3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/bottombar/BottomBarView;


# direct methods
.method public constructor <init>(Lcom/truecaller/bottombar/BottomBarView;)V
    .locals 0

    iput-object p1, p0, Le/a/b3/e;->a:Lcom/truecaller/bottombar/BottomBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b3/e;->a:Lcom/truecaller/bottombar/BottomBarView;

    const-string v1, "null cannot be cast to non-null type com.truecaller.bottombar.BottomBarButtonView"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/b3/d;

    .line 2
    sget v1, Lcom/truecaller/bottombar/BottomBarView;->w:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/truecaller/bottombar/BottomBarView;->g1(Le/a/b3/d;Z)V

    return-void
.end method
