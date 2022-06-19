.class public final Le/a/l/c/a/c3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/c3;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/c/a/c3;

.field public final synthetic b:Le/a/o2/m;


# direct methods
.method public constructor <init>(Le/a/l/c/a/c3;Le/a/o2/m;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/c3$a;->a:Le/a/l/c/a/c3;

    iput-object p2, p0, Le/a/l/c/a/c3$a;->b:Le/a/o2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/l/c/a/c3$a;->b:Le/a/o2/m;

    .line 2
    new-instance v0, Le/a/o2/h;

    .line 3
    iget-object v1, p0, Le/a/l/c/a/c3$a;->a:Le/a/l/c/a/c3;

    .line 4
    invoke-virtual {v1}, Le/a/l/c/a/c3;->O4()Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v2

    const-string v3, "whatsAppCallerIdSwitch"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Le/a/l/c/a/c3$a;->a:Le/a/l/c/a/c3;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ItemEvent.WHATSAPP_CALLER_ID_SWITCH_ACTION"

    .line 7
    invoke-direct {v0, v4, v1, v2, v3}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1, v0}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
