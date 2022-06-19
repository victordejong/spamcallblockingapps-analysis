.class public final synthetic Le/a/h0/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ln3/b/a/g;


# direct methods
.method public synthetic constructor <init>(Ln3/b/a/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h0/a/c;->a:Ln3/b/a/g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/a/h0/a/c;->a:Ln3/b/a/g;

    .line 1
    sget v0, Le/a/h0/a/r;->t:I

    .line 2
    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    return-void
.end method
