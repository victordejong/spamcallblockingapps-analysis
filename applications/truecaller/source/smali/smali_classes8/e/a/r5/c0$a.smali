.class public final Le/a/r5/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/c0;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r5/c0;

.field public final synthetic b:Le/a/o2/m;


# direct methods
.method public constructor <init>(Le/a/r5/c0;Le/a/o2/m;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/c0$a;->a:Le/a/r5/c0;

    iput-object p2, p0, Le/a/r5/c0$a;->b:Le/a/o2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/r5/c0$a;->b:Le/a/o2/m;

    new-instance v1, Le/a/o2/h;

    iget-object v2, p0, Le/a/r5/c0$a;->a:Le/a/r5/c0;

    const-string v3, "buttonView"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v3, "ItemEvent.SWITCH_ACTION"

    invoke-direct {v1, v3, v2, p1, p2}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    return-void
.end method
