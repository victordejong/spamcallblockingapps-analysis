.class public final Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView$a;->a:Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView$a;->a:Lcom/truecaller/bizmon/callMeBack/mvp/CallMeBackPopUpView;

    invoke-virtual {p1}, Le/a/b/i/a;->getPresenter()Le/a/b/i/e;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/b/i/k/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v3, Le/a/b/i/k/a;

    const/4 p1, 0x0

    invoke-direct {v3, v0, p1}, Le/a/b/i/k/a;-><init>(Le/a/b/i/k/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
