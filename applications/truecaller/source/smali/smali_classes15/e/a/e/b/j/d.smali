.class public final Le/a/e/b/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/m3/q0;


# direct methods
.method public constructor <init>(Le/a/m3/q0;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/j/d;->a:Le/a/m3/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/e/b/j/d;->a:Le/a/m3/q0;

    iget-object p1, p1, Le/a/m3/q0;->b:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void
.end method
