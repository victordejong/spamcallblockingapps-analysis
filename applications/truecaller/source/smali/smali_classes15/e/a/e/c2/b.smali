.class public final synthetic Le/a/e/c2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c2/u;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c2/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/b;->a:Le/a/e/c2/u;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le/a/e/c2/b;->a:Le/a/e/c2/u;

    .line 1
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->callOnClick()Z

    return-void
.end method
