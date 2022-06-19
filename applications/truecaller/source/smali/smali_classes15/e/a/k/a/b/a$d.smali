.class public final Le/a/k/a/b/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/b/a;->gg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/b/a;


# direct methods
.method public constructor <init>(Le/a/k/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/b/a$d;->a:Le/a/k/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/k/a/b/a$d;->a:Le/a/k/a/b/a;

    invoke-virtual {p1}, Le/a/k/a/b/a;->RA()Le/a/k/a/b/e;

    move-result-object p1

    check-cast p1, Le/a/k/a/b/h;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/b/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k/a/b/f;->u5()V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/k/a/b/h;->g:Le/a/k/c/y0;

    sget-object v0, Lcom/truecaller/videocallerid/utils/OnboardingType;->PACSExpand:Lcom/truecaller/videocallerid/utils/OnboardingType;

    invoke-interface {p1, v0}, Le/a/k/c/y0;->a(Lcom/truecaller/videocallerid/utils/OnboardingType;)V

    return-void
.end method
