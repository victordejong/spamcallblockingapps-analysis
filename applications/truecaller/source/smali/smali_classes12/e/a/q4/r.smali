.class public final synthetic Le/a/q4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/r0;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/r0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/r;->a:Le/a/q4/r0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Le/a/q4/r;->a:Le/a/q4/r0;

    .line 1
    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    return-void
.end method
