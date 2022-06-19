.class public final Le/a/l/c/a/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/b;->L4(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/c/a/b;


# direct methods
.method public constructor <init>(Le/a/l/c/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/b$g;->a:Le/a/l/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v2, p0, Le/a/l/c/a/b$g;->a:Le/a/l/c/a/b;

    .line 2
    iget-object p1, v2, Le/a/l/c/a/b;->p:Le/a/o2/m;

    .line 3
    new-instance v6, Le/a/o2/h;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const-string v1, "ItemEvent.EDIT_CONTACT_AVATAR"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
