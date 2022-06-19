.class public final synthetic Le/a/e/c/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/d1;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/a/e/c/d1;->a:Le/a/e/c/s1;

    .line 1
    iget-object v0, p1, Le/a/e/c/s1;->l0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Le/a/e/c/s1;->AB(Landroid/view/View;)V

    return-void
.end method
