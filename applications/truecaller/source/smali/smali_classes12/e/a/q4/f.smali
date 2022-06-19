.class public final synthetic Le/a/q4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/q4/v;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/f;->a:Le/a/q4/v;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/a/q4/f;->a:Le/a/q4/v;

    .line 1
    iget-object p1, p1, Le/a/q4/v;->k:Le/a/q4/x;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Le/a/q4/x;->Ij(Z)V

    return-void
.end method
