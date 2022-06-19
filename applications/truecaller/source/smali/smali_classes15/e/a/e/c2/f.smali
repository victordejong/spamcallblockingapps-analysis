.class public final synthetic Le/a/e/c2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c2/w;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Le/a/e/c2/w;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/f;->a:Le/a/e/c2/w;

    iput p2, p0, Le/a/e/c2/f;->b:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Le/a/e/c2/f;->a:Le/a/e/c2/w;

    iget v0, p0, Le/a/e/c2/f;->b:I

    .line 1
    invoke-virtual {p1, v0}, Le/a/e/c2/w;->a(I)V

    return-void
.end method
