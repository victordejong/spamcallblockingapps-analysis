.class public Le/h/a/c/r0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/r0/c;->m(Landroid/widget/ImageView;Landroid/view/View;ILandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Le/h/a/c/r0/c;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/c$a;->b:Le/h/a/c/r0/c;

    iput p2, p0, Le/h/a/c/r0/c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/h/a/c/r0/c$a;->b:Le/h/a/c/r0/c;

    .line 2
    iget-object p1, p1, Le/h/a/c/r0/c;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/h/a/c/r0/i;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/h/a/c/r0/c$a;->b:Le/h/a/c/r0/c;

    .line 4
    iget v0, v0, Le/h/a/c/r0/c;->i:I

    .line 5
    iget v1, p0, Le/h/a/c/r0/c$a;->a:I

    invoke-virtual {p1, v0, v1}, Le/h/a/c/r0/i;->SA(II)V

    :cond_0
    return-void
.end method
