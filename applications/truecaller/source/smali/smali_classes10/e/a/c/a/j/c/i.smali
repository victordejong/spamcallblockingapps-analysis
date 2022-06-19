.class public final Le/a/c/a/j/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/g/s0;


# direct methods
.method public constructor <init>(Le/a/c/a/g/s0;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/c/i;->a:Le/a/c/a/g/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/c/a/j/c/i;->a:Le/a/c/a/g/s0;

    iget-object p1, p1, Le/a/c/a/g/s0;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->toggle()V

    iget-object p1, p0, Le/a/c/a/j/c/i;->a:Le/a/c/a/g/s0;

    iget-object p1, p1, Le/a/c/a/g/s0;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->refreshDrawableState()V

    return-void
.end method
