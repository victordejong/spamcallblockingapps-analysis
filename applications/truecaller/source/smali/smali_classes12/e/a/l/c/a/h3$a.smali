.class public final Le/a/l/c/a/h3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/h3;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/c/a/h3;

.field public final synthetic b:Le/a/o2/m;


# direct methods
.method public constructor <init>(Le/a/l/c/a/h3;Le/a/o2/m;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/h3$a;->a:Le/a/l/c/a/h3;

    iput-object p2, p0, Le/a/l/c/a/h3$a;->b:Le/a/o2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/l/c/a/h3$a;->b:Le/a/o2/m;

    new-instance v6, Le/a/o2/h;

    iget-object v2, p0, Le/a/l/c/a/h3$a;->a:Le/a/l/c/a/h3;

    .line 2
    invoke-virtual {v2}, Le/a/l/c/a/h3;->O4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v3

    const-string v0, "incognitoSwitch"

    .line 3
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const-string v1, "ItemEvent.INCOGNITO_SWITCH_ACTION"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
